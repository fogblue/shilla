package iot5.project.shilla.info;

import java.io.IOException;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import study.spring.helper.FileInfo;
import study.spring.helper.PageHelper;
import study.spring.helper.RegexHelper;
import study.spring.helper.UploadHelper;
import study.spring.helper.WebHelper;
import study.spring.mysite.controller.Download;
import study.spring.mysite.model.BbsDocument;
import study.spring.mysite.model.BbsFile;
import study.spring.mysite.model.Member;
import study.spring.mysite.service.BbsDocumentService;
import study.spring.mysite.service.BbsFileService;

@Controller
public class DocumentController {


	Logger logger = LoggerFactory.getLogger(Download.class);
	@Autowired
	SqlSession sqlSession;
	@Autowired
	WebHelper web;
	@Autowired
	BBSCommon bbs;
	@Autowired
	BbsDocumentService bbsDocumentService;
	@Autowired
	PageHelper pageHelper;
	@Autowired
	UploadHelper upload;
	@Autowired
	BbsFileService bbsFileService;
	@Autowired
	RegexHelper regex;
	@RequestMapping(value = "/bbs/document_list.do", method = RequestMethod.GET)
	public ModelAndView BbsDocumentList(Locale locale, Model model,
			HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException  {
		response.setContentType("application/json");
		
	web.init();

		
		/**(3)게시판 카테고리 값을 받아서 View에 전달*/
		String category = web.getString("category");
		request.setAttribute("category", category);
		
		/**(4)존재하는 게시판인지 판별하기*/
		try {
			String bbsName = bbs.getBbsName(category);
			request.setAttribute("bbsName", bbsName);
		}catch(Exception e) {
			sqlSession.close();
			return web.redirect(null, e.getLocalizedMessage());
		
		}
		
		/**(5)조회할 정보에 대한 Beans생성*/
		String keyword=web.getString("keyword");
		
		BbsDocument document = new BbsDocument();
		document.setCategory(category);
		
		int page = web.getInt("page", 1);
		
		document.setSubject(keyword);
		document.setContent(keyword);
		/**(6)게시글 목록 조회*/
		int totalCount = 0;
		List<BbsDocument> documentList = null;
		document.setGallery(category.equals("gallery"));
		try {
			totalCount = bbsDocumentService.selectDocumentCount(document);
			pageHelper.pageProcess(page, totalCount, 12, 5);
			document.setLimitStart(pageHelper.getLimitStart());
			document.setListCount(pageHelper.getListCount());
			
			documentList = bbsDocumentService.selectDocumentList(document);
		}catch(Exception e) {
			web.redirect(null, e.getLocalizedMessage());
			return null;
		}finally {
			
		}
		
		if(document.isGallery() && documentList!=null) {
			for(int i=0; i<documentList.size();i++) {
				BbsDocument item = documentList.get(i);
				String imagePath = item.getImagePath();
				if(imagePath!=null) {
					String thumbPath = upload.createThumbnail(imagePath, 480, 320, true);
					item.setImagePath(thumbPath);
					logger.debug("thumbnail creacte > " + item.getImagePath());
				}
			}
			}
			
		/**(7)조회 결과를 View에 전달*/
		model.addAttribute("documentList", documentList);
		model.addAttribute("keyword", keyword);
		model.addAttribute("pageHelper", pageHelper);
		
		int maxPageNo = pageHelper.getTotalCount() - (pageHelper.getPage() -1) * pageHelper.getListCount();
		
		model.addAttribute("maxPageNo", maxPageNo);
		
		String view =  "bbs/document_list";
		if(document.isGallery()) {
			view = "bbs/gallery_list";
		}
		
		return new ModelAndView(view);

	}
	@RequestMapping(value = "/bbs/document_read.do", method = RequestMethod.GET)
	public ModelAndView BbsDocumentRead(Locale locale, Model model,
			HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException  {
		web.init();
		/**(3)게시판 카테고리 값을 받아서 View에 전달*/
		String category = web.getString("category");
		request.setAttribute("category", category);
		
		/**(4)존재하는 게시판인지 판별하기*/
		try {
			String bbsName = bbs.getBbsName(category);
			request.setAttribute("bbsName", bbsName);
		}catch(Exception e) {
			return web.redirect(null, e.getLocalizedMessage());
			
		}
		
		/**(5)글 번호 파라미터 받기*/
		int documentId = web.getInt("document_id");
		logger.debug("documentId= " + documentId);
		
		if(documentId == 0) {
			return web.redirect(null, "글번호가 저장되지 않았습니다.");
			
		}
		
		BbsDocument document = new BbsDocument();
		document.setId(documentId);
		document.setCategory(category);
		
		BbsFile file = new BbsFile();
		file.setBbsDocumentId(documentId);
		
		
		/**(6)게시물 일련번호를 사용한 데이터 조회*/
		BbsDocument readDocument = null;
		BbsDocument prevDocument = null;
		BbsDocument nextDocument = null;
		List<BbsFile> fileList = null;
		
		String cookieKey = "document_" + category + "_" + documentId;
		String cookieVar = web.getCookie(cookieKey);
		
		try {
			
			if(cookieVar == null) {
				bbsDocumentService.updateDocumentHit(document);
				web.setCookie(cookieKey, "Y", 60 * 60 * 24);
			}
			readDocument = bbsDocumentService.selectDocument(document);
			prevDocument = bbsDocumentService.selectPrevDocument(document);
			nextDocument = bbsDocumentService.selectNextDocument(document);
			fileList = bbsFileService.selectFileList(file);
		} catch(Exception e) {
			return web.redirect(null, e.getLocalizedMessage());
		
		} 
		
		/**(7)읽은 데이터를 view에게 전달한다*/
		model.addAttribute("readDocument", readDocument);
		model.addAttribute("prevDocument", prevDocument);
		model.addAttribute("nextDocument", nextDocument);
		model.addAttribute("fileList", fileList);
		
		return new ModelAndView("bbs/document_read");
	
	}
	@RequestMapping(value = "/bbs/document_write.do", method = RequestMethod.GET)
	public ModelAndView BbsDocumentWrite(Locale locale, Model model,
			HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException  {
		web.init();
		
		String category = web.getString("category");
		request.setAttribute("category", category);
		
		try {
			String bbsName = bbs.getBbsName(category);
			request.setAttribute("bbsName", bbsName);
		}catch(Exception e) {
			web.redirect(null, e.getLocalizedMessage());
			return null;
		}
		
		return new ModelAndView("bbs/document_write.do");
	}
	
	@RequestMapping(value = "/bbs/document_write_ok.do", method = RequestMethod.POST)
	public ModelAndView BbsDocumentWriteOk(Locale locale, Model model,
			HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException  {
		web.init();
		
	
		/**(3)파일이 포함된 POST파라미터 받기*/
		try {
			upload.multipartRequest();
		} catch(Exception e) {
			sqlSession.close();
			web.redirect(null, "multipart데이터가 아닙니다.");
			return null;
		}
		
		/**(4)UploadHelper에서 텍스트 형식의 값을 추출*/
		Map<String, String> paramMap = upload.getParamMap();
		String category = paramMap.get("category");
		String writerName = paramMap.get("writer_name");
		String writerPw = paramMap.get("writer_pw");
		String email = paramMap.get("email");
		String subject = paramMap.get("subject");
		String content = paramMap.get("content");
		String ipAddress = web.getClientIP();
		int memberId = 0;
		
		Member loginInfo = (Member) web.getSession("loginInfo");
		if(loginInfo != null) {
			writerName = loginInfo.getName();
			email = loginInfo.getEmail();
			writerPw = loginInfo.getUserPw();
			memberId = loginInfo.getId();
		}
		
		logger.debug("category=" + category);
		logger.debug("writer_name=" + writerName);
		logger.debug("writer_pw=" + writerPw);
		logger.debug("email=" + email);
		logger.debug("subject=" + subject);
		logger.debug("content=" + content);
		logger.debug("ip_address=" + ipAddress);
		logger.debug("memberId=" + memberId);
		
		/**(5)게시판 카테고리 값을 받아서 View에 전달*/
		//String category = web.getString("category");
		request.setAttribute("category", category);
		
		/**(6)존재하는 게시판인지 판별하기*/		
		try {
			String bbsName = bbs.getBbsName(category);
			request.setAttribute("bbsName", bbsName);
		}catch(Exception e) {
			sqlSession.close();
			return web.redirect(null, e.getLocalizedMessage());
			
		}
		
		/**(7)입력받은 파라미터에 대한 유효성 검사*/	
		//이름 검사
		if(!regex.isValue(writerName)) {
			sqlSession.close();
			return web.redirect(null, "작성자 이름을 입력하세요");
			
		}
		//비밀번호 검사
		if(!regex.isValue(writerPw)) {
			sqlSession.close();
			return web.redirect(null, "비밀번호를 입력하세요");
			
		}
		//이메일 검사
		if(!regex.isValue(email)) {
			sqlSession.close();
			return web.redirect(null, "이메일을 입력하세요");
			
		}
		if(!regex.isEmail(email)) {
			sqlSession.close();
			return web.redirect(null, "이메일 형식이 잘못되었습니다.");
			
		}
		//제목 및 내용 검사
		if(!regex.isValue(subject)) {
			sqlSession.close();
			return web.redirect(null, "글 제목을 입력하세요");
			
		}
		if(!regex.isValue(content)) {
			sqlSession.close();
			return web.redirect(null, "내용을 입력하세요");
			
		}
		
		
		/**(8)입력받은 파라미터를 Beans로 묶기*/	
		BbsDocument document = new BbsDocument();
		document.setCategory(category);
		document.setWriterName(writerName);
		document.setWriterPw(writerPw);
		document.setEmail(email);
		document.setSubject(subject);
		document.setContent(content);
		document.setIpAddress(ipAddress);
		document.setMemberId(memberId);
		logger.debug("document >>" + document.toString());
		
		/**(9)Service를 통한 게시물 저장*/
		try {
			
				bbsDocumentService.insertDocument(document);
			
		} catch(Exception e) {
			//sqlSession.close();
			web.redirect(null, e.getLocalizedMessage());
			return null;
		}
		/**(10)첨부 파일 목록 처리*/
		List<FileInfo> fileList = upload.getFileList();
		
		try {
			for(int i = 0; i<fileList.size(); i++) {
				FileInfo info = fileList.get(i);
				BbsFile file = new BbsFile();
				
				file.setBbsDocumentId(document.getId());
				
				file.setOriginName(info.getOrginName());
				file.setFileDir(info.getFileDir());
				file.setFileName(info.getFileName());
				file.setContentType(info.getContentType());
				file.setFileSize(info.getFileSize());
				
				bbsFileService.insertFile(file);
				
			}
		}catch(Exception e) {
			return web.redirect(null, e.getLocalizedMessage());
			
		} 
		/**(11)저장 완료 후 읽기 페이지로 이동하기*/
		String url = "%s/bbs/document_read.do?category=%s&document_id=%d";
		url = String.format(url, web.getRootPath(), document.getCategory(), document.getId());
		return web.redirect(url, null);
		
	
	}
	
	
}
