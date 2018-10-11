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

import iot5.project.shilla.helper.FileInfo;
import iot5.project.shilla.helper.PageHelper;
import iot5.project.shilla.helper.RegexHelper;
import iot5.project.shilla.helper.UploadHelper;
import iot5.project.shilla.helper.WebHelper;
import iot5.project.shilla.model.File;
import iot5.project.shilla.model.Member;
import iot5.project.shilla.model.QnA;
import iot5.project.shilla.service.FileService;
import iot5.project.shilla.service.QnAService;

@Controller
public class QnAController {
	Logger logger = LoggerFactory.getLogger(QnAController.class);
	@Autowired
	WebHelper web;
	@Autowired
	SqlSession sqlSession;
	@Autowired
	UploadHelper upload;
	@Autowired
	PageHelper pageHelper;
	@Autowired
	QnAService qnaService;
	@Autowired
	RegexHelper regex;
	@Autowired
	FileService fileService;
		
	@RequestMapping(value = "/info/contactinfo.do", method = RequestMethod.GET)
	public ModelAndView contactinfo(Locale locale, Model model) {
		logger.info("Welcome to contact info page! The client locale is {}.", locale);
		
		return new ModelAndView("info/contactinfo");
	}
	
	@RequestMapping(value = "/info/inquiry.do", method = RequestMethod.GET)
	public ModelAndView inquiry(Locale locale, Model model) {
		logger.info("Welcome to inquiry page! The client locale is {}.", locale);

		return new ModelAndView("info/inquiry");
	}
	@RequestMapping(value = "/info/write_ok.do", method = RequestMethod.POST)
	public ModelAndView loginTest(Locale locale, Model model,
			HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException  {
		
		web.init();
		/**(3)파일이 포함된 POST파라미터 받기*/
		try {
			upload.multipartRequest();
		} catch(Exception e) {
			return web.redirect(null, "multipart데이터가 아닙니다.");
		}
		
		/**(4)UploadHelper에서 텍스트 형식의 값을 추출*/
		Map<String, String> paramMap = upload.getParamMap();
		String ecategory = paramMap.get("ecategory");
		String hotelCate = paramMap.get("hotel_cate");
		String qnaType = paramMap.get("qna_type");
		String subject = paramMap.get("subject");
		String content = paramMap.get("content");
		String userNameKor = paramMap.get("user_name_kor");
		String email = paramMap.get("email" + "@" + "email2");
		String tel = paramMap.get("tel");
		String ipAddress = web.getClientIP();
		int memberId = 0;
		
		Member loginInfo = (Member) web.getSession("loginInfo");
		if(loginInfo != null) {
			userNameKor = loginInfo.getUserNameKor();
			email = loginInfo.getEmail();
			memberId = loginInfo.getId();
			tel = loginInfo.getTel();
		}
		
		logger.debug("ecategory=" + ecategory);
		logger.debug("hotel_cate=" + hotelCate);
		logger.debug("qna_type=" + qnaType);
		logger.debug("subject=" + subject);
		logger.debug("content=" + content);
		logger.debug("user_name_kor=" + userNameKor);
		logger.debug("email=" + email);
		logger.debug("tel=" + tel);
		logger.debug("ip_address=" + ipAddress);
		logger.debug("memberId=" + memberId);

		/**(7)입력받은 파라미터에 대한 유효성 검사*/	
		//이름 검사
		if(!regex.isValue(userNameKor)) {
			return web.redirect(null, "작성자 이름을 입력하세요");
			
		}

		//이메일 검사
		/*if(!regex.isValue(email)) {
			return web.redirect(null, "이메일을 입력하세요");
			
		}
		if(!regex.isEmail(email)) {
			return web.redirect(null, "이메일 형식이 잘못되었습니다.");
			
		}*/
		//제목 및 내용 검사
		if(!regex.isValue(subject)) {
			return web.redirect(null, "글 제목을 입력하세요");
			
		}
		if(!regex.isValue(content)) {
			return web.redirect(null, "내용을 입력하세요");
			
		}
				
		/**(8)입력받은 파라미터를 Beans로 묶기*/	
		QnA qna = new QnA();
		qna.setEcategory(ecategory);
		qna.setHotelCate(hotelCate);
		qna.setQnaType(qnaType);
		qna.setSubject(subject);
		qna.setContent(content);
		qna.setUserNameKor(userNameKor);
		qna.setEmail(email);
		qna.setTel(tel);
		qna.setIpAddress(ipAddress);
		qna.setMemberId(memberId);
		
		logger.debug("qna >>" + qna.toString());
		
		/** Service를 통한 게시물 저장 */
		try {
			qnaService.writeQnA(qna);
		} catch(Exception e) {
			return web.redirect(null, e.getLocalizedMessage());
		}
		/** 첨부 파일 목록 처리 */
		List<FileInfo> fileList = upload.getFileList();
		
		try {
			for(int i = 0; i<fileList.size(); i++) {
				FileInfo info = fileList.get(i);
				File file = new File();
				file.setDocumentId(qna.getId());
				file.setCategory(qna.getEcategory());
				file.setOriginName(info.getOrginName());
				file.setFileDir(info.getFileDir());
				file.setFileName(info.getFileName());
				file.setContentType(info.getContentType());
				file.setFileSize(info.getFileSize());
				fileService.insertFile(file);
			}
		}catch(Exception e) {
			return web.redirect(null, e.getLocalizedMessage());
		} 
		/**(11)저장 완료 후 읽기 페이지로 이동하기*/
		return web.redirect(null, "문의사항이 저장되었습니다.");
	}
		
}