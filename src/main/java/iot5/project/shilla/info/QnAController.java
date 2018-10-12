package iot5.project.shilla.info;

import java.io.IOException;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.ServletException;

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
	private static final Logger logger = LoggerFactory.getLogger(QnAController.class);
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

	@RequestMapping(value = "/info/enquiry.do", method = RequestMethod.GET)
	public ModelAndView enquiry(Locale locale, Model model) {
		logger.info("Welcome to enquiry page! The client locale is {}.", locale);

		return new ModelAndView("info/enquiry");
	}

	@RequestMapping(value = "/info/write_ok.do", method = RequestMethod.POST)
	public ModelAndView loginTest(Locale locale, Model model) throws ServletException, IOException {

		web.init();

		/** 파일이 포함된 POST파라미터 받기 */
		try {
			upload.multipartRequest();
		} catch (Exception e) {
			return web.redirect(null, "multipart데이터가 아닙니다.");
		}

		/** UploadHelper에서 텍스트 형식의 값을 추출 */
		Map<String, String> paramMap = upload.getParamMap();
		String ecategory = paramMap.get("ecategory");
		String hotelCate = paramMap.get("hotel_cate");
		String enqType = paramMap.get("enq_type");
		String reservNo = paramMap.get("reserv_no");
		String weddingDate = paramMap.get("wedding_date");
		String qnaType = paramMap.get("qna_type");
		String subject = paramMap.get("subject");
		String content = paramMap.get("content");
		String userNameKor = paramMap.get("user_name_kor");
		String email = paramMap.get("email");
		String tel = paramMap.get("tel");
		String telHome = paramMap.get("tel_home");
		String ipAddress = web.getClientIP();
		int memberId = 0;

		if (hotelCate.equals("sshihot")) {
			hotelCate = "서울신라호텔";
		} else if (hotelCate.equals("jshihot")) {
			hotelCate = "제주신라호텔";
		} else {
			hotelCate = null;
		}

		if (enqType.equals("enq_room")) {
			enqType = "객실/패키지문의";
		} else if (enqType.equals("enq_dining")) {
			enqType = "객실/다이닝문의";
		} else if (enqType.equals("enq_wedding")) {
			enqType = "웨딩문의";
		} else if (enqType.equals("enq_party")) {
			enqType = "연회/회의문의";
		} else if (enqType.equals("enq_web")) {
			enqType = "홈페이지문의";
		} else {
			enqType = null;
		}

		/**
		 * 로그인 되어 있을 경우 세션에서 이름, 이메일, 회원번호 및 전화번호를 불러옴 로그인 하지 않았을 경우 회원번호를 13번 - 비회원으로
		 * 지정
		 */
		Member loginInfo = (Member) web.getSession("loginInfo");
		if (loginInfo != null) {
			userNameKor = loginInfo.getUserNameKor();
			email = loginInfo.getEmail();
			memberId = loginInfo.getId();
			tel = loginInfo.getTel();
			telHome = loginInfo.getTelHome();
		} else {
			memberId = 13;
		}

		logger.debug("ecategory=" + ecategory);
		logger.debug("hotel_cate=" + hotelCate);
		logger.debug("enq_type=" + enqType);
		logger.debug("reserv_no=" + reservNo);
		logger.debug("wedding_date=" + weddingDate);
		logger.debug("qna_type=" + qnaType);
		logger.debug("subject=" + subject);
		logger.debug("content=" + content);
		logger.debug("user_name_kor=" + userNameKor);
		logger.debug("email=" + email);
		logger.debug("tel=" + tel);
		logger.debug("tel_home=" + telHome);
		logger.debug("ip_address=" + ipAddress);
		logger.debug("memberId=" + memberId);

		/** 입력받은 파라미터에 대한 유효성 검사 */
		// 이름 검사
		if (!regex.isValue(userNameKor)) {
			return web.redirect(null, "작성자 이름을 입력하세요");
		}
		// 이메일 검사
		if (!regex.isValue(email)) {
			return web.redirect(null, "이메일을 입력하세요");

		}
		if (!regex.isEmail(email)) {
			return web.redirect(null, "이메일 형식이 잘못되었습니다.");

		}
		// 제목 및 내용 검사
		if (!regex.isValue(subject)) {
			return web.redirect(null, "글 제목을 입력하세요");

		}
		if (!regex.isValue(content)) {
			return web.redirect(null, "내용을 입력하세요");

		}
		
		if (!regex.isCellPhone(tel)) {
			return web.redirect(null, "휴대전화번호를 '-' 없이 입력하세요.");
		}

		int ireservNo = Integer.parseInt(reservNo);

		/** (8)입력받은 파라미터를 Beans로 묶기 */
		QnA qna = new QnA();
		qna.setEcategory(ecategory);
		qna.setHotelCate(hotelCate);
		qna.setEnqType(enqType);
		qna.setReservNo(ireservNo);
		qna.setWeddingDate(weddingDate);
		qna.setQnaType(qnaType);
		qna.setSubject(subject);
		qna.setContent(content);
		qna.setUserNameKor(userNameKor);
		qna.setEmail(email);
		qna.setTel(tel);
		qna.setTelHome(telHome);
		qna.setIpAddress(ipAddress);
		qna.setMemberId(memberId);

		logger.debug("qna >>" + qna.toString());

		/** Service를 통한 게시물 저장 */
		try {
			qnaService.insertQnA(qna);
		} catch (Exception e) {
			return web.redirect(null, e.getLocalizedMessage());
		}

		/** 첨부 파일 목록 처리 */
		List<FileInfo> fileList = upload.getFileList();
		try {
			for (int i = 0; i < fileList.size(); i++) {
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
		} catch (Exception e) {
			return web.redirect(null, e.getLocalizedMessage());
		}
		/** (11)저장 완료 후 읽기 페이지로 이동하기 */
		return web.redirect(web.getRootPath(), "문의사항이 저장되었습니다.");
	}

}