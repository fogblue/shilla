package iot5.project.shilla.mypage;

import java.util.List;
import java.util.Locale;

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

import iot5.project.shilla.helper.PageHelper;
import iot5.project.shilla.helper.RegexHelper;
import iot5.project.shilla.helper.UploadHelper;
import iot5.project.shilla.helper.WebHelper;
import iot5.project.shilla.model.File;
import iot5.project.shilla.model.Member;
import iot5.project.shilla.model.QnA;
import iot5.project.shilla.model.RoomForReserv;
import iot5.project.shilla.service.FileService;
import iot5.project.shilla.service.MemberService;
import iot5.project.shilla.service.QnAService;
import iot5.project.shilla.service.ReservService;
import iot5.project.shilla.service.RoomService;

@Controller
public class MypageController {
	
	@Autowired
	WebHelper web;
	@Autowired
	SqlSession sqlSession;
	@Autowired
	RegexHelper regex;
	@Autowired
	UploadHelper upload;
	@Autowired
	MemberService memberService;
	@Autowired
	QnAService qnaService;
	@Autowired
	ReservService reservService;
	@Autowired
	FileService fileService;
	@Autowired
	PageHelper pageHelper;
	@Autowired
	RoomService roomService;
	
	private static final Logger logger = LoggerFactory.getLogger(MypageController.class);
	
	@RequestMapping(value = "/mypage/mypg_main.do", method = RequestMethod.GET)
	public ModelAndView mypg_main(Locale locale, Model model) {	
		web.init();
		/*로그인 여부 검사*/
		if (web.getSession("loginInfo") == null) {
			return web.redirect(web.getRootPath() + "/member/log_main.do", "로그인 후 이용 가능한 서비스입니다.");
		}
		
		return new ModelAndView("mypage/mypg_main");
	}
	
	@RequestMapping(value = "/mypage/mypg_reservation.do", method = RequestMethod.GET)
	public ModelAndView mypg_reservation(Locale locale, Model model) {	
		web.init();
		/*로그인 여부 검사*/
		if (web.getSession("loginInfo") == null) {
			return web.redirect(web.getRootPath() + "/member/log_main.do", "로그인 후 이용 가능한 서비스입니다.");
		}
		/*로그인세션 참조*/
		Member loginInfo = (Member) web.getSession("loginInfo");
		/*로그인세션에서 회원번호를 가져와 객실예약 객체에 회원번호 넣어주기*/
		RoomForReserv resvroom = new RoomForReserv();
		try {
			resvroom.setMemberId(loginInfo.getId());
		} catch (Exception e) {
			return web.redirect(web.getRootPath() + "/member/log_main.do", "로그인 후 이용 가능한 서비스입니다.");
		}
		/*리스트페이지 번호 부여*/
		int page = web.getInt("page", 1);
		/*리스트갯수*/
		int totalCount = 0;
		/*예약리스트객체 만들기*/
		List<RoomForReserv> reservInfo = null;
		try {
			/*회원번호로 검색한 리스트결과를 객체에 담기*/
			totalCount = reservService.selectReservationCount(resvroom);
			pageHelper.pageProcess(page, totalCount, 10, 5);
			/*회원번호로 검색한 예약리스트의 정보를 객체에 담기*/
			reservInfo = reservService.selectReservList(resvroom);
		} catch (Exception e) {
			return web.redirect(web.getRootPath() + "/mypage/mypg_reservation.do", null);
		}
		/*예약리스트정보를 모델에 넣기*/
		model.addAttribute("reservInfo", reservInfo);
		model.addAttribute("pageHelper", pageHelper);
		
		int maxPageNo = pageHelper.getTotalCount() - (pageHelper.getPage() -1) * pageHelper.getListCount();
		model.addAttribute("maxPageNo", maxPageNo);
		
		return new ModelAndView("mypage/mypg_reservation");
	}
	
	@RequestMapping(value = "/mypage/mypg_reservation_search.do", method = RequestMethod.GET)
	public ModelAndView mypg_reservation_search(Locale locale, Model model) {
		web.init();
		/*로그인 여부 검사*/
		if (web.getSession("loginInfo") == null) {
			return web.redirect(web.getRootPath() + "/member/log_main.do", "로그인 후 이용 가능한 서비스입니다.");
		}
		/*조회날짜 받아오기*/
		String datepickerS = web.getString("datepickerS");
		String datepickerE = web.getString("datepickerE");
		logger.info("datepickerS=" + datepickerS);
		logger.info("datepickerE=" + datepickerE);
		/*로그인세션 참조*/
		Member loginInfo = (Member) web.getSession("loginInfo");
		/*로그인세션에서 회원번호를 가져와 객실예약 객체에 회원번호 넣어주기*/
		RoomForReserv resvroom = new RoomForReserv();
		resvroom.setMemberId(loginInfo.getId());
		/*만든 예약객체에 조회날짜 넣어주기*/
		resvroom.setDatepickerS(datepickerS);
		resvroom.setDatepickerE(datepickerE);
		/*리스트페이지 번호 부여*/
		int page = web.getInt("page", 1);
		/*리스트갯수*/
		int totalCount = 0;
		/*예약리스트객체 만들기*/
		List<RoomForReserv> reservBDInfo = null;
		try {
			/*회원번호로 검색한 리스트결과를 객체에 담기*/
			totalCount = reservService.selectReservationCountByDate(resvroom);
			pageHelper.pageProcess(page, totalCount, 10, 5);
			/*회원번호로 검색한 예약리스트의 정보를 객체에 담기*/
			reservBDInfo = reservService.selectReservListByDate(resvroom);
		} catch (Exception e) {
			return web.redirect(web.getRootPath() + "/mypage/mypg_reservation.do", null);
		}
		/*예약리스트정보를 모델에 넣기*/
		model.addAttribute("reservBDInfo", reservBDInfo);
		model.addAttribute("pageHelper", pageHelper);
		
		int maxPageNo = pageHelper.getTotalCount() - (pageHelper.getPage() -1) * pageHelper.getListCount();
		model.addAttribute("maxPageNo", maxPageNo);
		
		return new ModelAndView("mypage/mypg_reservation");
	}
	
	@RequestMapping(value = "/mypage/mypg_reservation_2.do", method = RequestMethod.GET)
	public ModelAndView mypg_reservation_2(Locale locale, Model model, HttpServletRequest request, HttpServletResponse response) {
		web.init();
		/*로그인 여부 검사*/
		if (web.getSession("loginInfo") == null) {
			return web.redirect(web.getRootPath() + "/member/log_main.do", "로그인 후 이용 가능한 서비스입니다.");
		}
		
		int id = web.getInt("id");
		logger.info("받아온 id는 >> " + id);
		model.addAttribute("id", id);
		
		RoomForReserv reserv = new RoomForReserv();
		reserv.setId(id);
		reserv.setResvRoomId(id);
		
		try {
			reserv = reservService.selectReservInfo(reserv);
		} catch (Exception e) {
			return web.redirect(web.getRootPath() + "/mypage/mypg_reservation_2.do", null);
		}
		
		model.addAttribute("reservInfo", reserv);
		
		return new ModelAndView("mypage/mypg_reservation_2");
	}
	
	@RequestMapping(value = "/mypage/mypg_profile_edit.do", method = RequestMethod.GET)
	public ModelAndView mypg_profile_edit(Locale locale, Model model) {
		web.init();
		/*로그인 여부 검사*/
		if (web.getSession("loginInfo") == null) {
			return web.redirect(web.getRootPath() + "/member/log_main.do", "로그인 후 이용 가능한 서비스입니다.");
		}
		
		return new ModelAndView("mypage/mypg_profile_edit"); 
	}
	
	@RequestMapping(value = "/mypage/mypg_profile_edit_ok.do", method = RequestMethod.POST)
	public ModelAndView mypg_profile_edit_ok(Locale locale, Model model, HttpServletRequest request, HttpServletResponse response) {
		web.init();
		/*로그인 여부 검사*/
		if (web.getSession("loginInfo") == null) {
			return web.redirect(web.getRootPath() + "/member/log_main.do", "로그인 후 이용 가능한 서비스입니다.");
		}
		
		String userPw = request.getParameter("pswd_confirm");
		logger.info("입력한 패스워드는 >> " + userPw);
		
		if (!regex.isValue(userPw)) {
			return web.redirect(null, "비밀번호를 확인 후 다시 입력하세요.");		
		}
		
		Member loginInfo = (Member) web.getSession("loginInfo");
		Member member = new Member();
		member.setId(loginInfo.getId());
		member.setUserPw(userPw);

		try {
			memberService.selectMemberPasswordCount(member);
		} catch (Exception e) {
			return web.redirect(null, e.getLocalizedMessage());
		}
		
		return web.redirect(web.getRootPath() + "/mypage/mypg_profile_edit_2.do", null);
	}
	
	@RequestMapping(value = "/mypage/mypg_profile_edit_2.do", method = RequestMethod.GET)
	public ModelAndView mypg_profile_edit_2(Locale locale, Model model) {
		web.init();
		/*로그인 여부 검사*/
		if (web.getSession("loginInfo") == null) {
			return web.redirect(web.getRootPath() + "/member/log_main.do", "로그인 후 이용 가능한 서비스입니다.");
		}
		
		return new ModelAndView("mypage/mypg_profile_edit_2"); 
	}
	
	@RequestMapping(value = "/mypage/mypg_profile_edit_echk.do", method = RequestMethod.POST)
	public ModelAndView mypg_profile_edit_echk(Locale locale, Model model, HttpServletRequest request, HttpServletResponse response) {
		web.init();
		/*로그인 여부 검사*/
		if (web.getSession("loginInfo") == null) {
			return web.redirect(web.getRootPath() + "/member/log_main.do", "로그인 후 이용 가능한 서비스입니다.");
		}
		
		String newEmail = request.getParameter("email");
		logger.info("입력한 이메일은 >> " + newEmail);
		model.addAttribute("email", newEmail);
		
		if (!regex.isValue(newEmail)) {
			return web.redirect(null, "이메일을 입력하세요.");
		}
		if (!regex.isEmail(newEmail)) {
			return web.redirect(null, "이메일의 형식이 잘못되었습니다.");
		}
		
		Member member = new Member();
		member.setEmail(newEmail);
		int result = 0;
		try {
			result = memberService.selectEmailCheck(member);
		} catch (Exception e) {
			return web.redirect(null, e.getLocalizedMessage());
		}
		
		if (result > 0) {
			return web.redirect(null, "이미 사용중인 이메일 입니다.");
		}
		
		return web.redirect(null, "사용가능한 이메일 입니다.");
	}
	
	@RequestMapping(value = "/mypage/mypg_profile_edit_2_echk.do", method = RequestMethod.POST)
	public ModelAndView mypg_profile_edit_2_echk(Locale locale, Model model, HttpServletRequest request, HttpServletResponse response) {
		web.init();
		/*로그인 여부 검사*/
		if (web.getSession("loginInfo") == null) {
			return web.redirect(web.getRootPath() + "/member/log_main.do", "로그인 후 이용 가능한 서비스입니다.");
		}
		
		Member loginInfo = (Member) web.getSession("loginInfo");
		
		String email = loginInfo.getEmail();		
		String newEmail = request.getParameter("email");
		logger.info("기존의 이메일은 >> " + email);
		logger.info("입력한 이메일은 >> " + newEmail);
		
		if (!regex.isValue(newEmail)) {
			return web.redirect(null, "이메일을 입력하세요.");
		}
		if (!regex.isEmail(newEmail)) {
			return web.redirect(null, "이메일의 형식이 잘못되었습니다.");
		}
		
		Member member = new Member();
		member.setEmail(newEmail);
		int result = 0;
		try {
			result = memberService.selectEmailCheck(member);
		} catch (Exception e) {
			return web.redirect(null, e.getLocalizedMessage());
		}
		
		if (result > 0) {
			return web.redirect(null, "이미 사용중인 이메일 입니다.");
		}
		
		return web.redirect(null, "사용가능한 이메일 입니다.");
	}
	
	@RequestMapping(value = "/mypage/mypg_profile_edit_2_ok.do", method = RequestMethod.POST)
	public ModelAndView mypg_profile_edit_2_ok(Locale locale, Model model, HttpServletRequest request, HttpServletResponse response) {
		web.init();
		/*로그인 여부 검사*/
		if (web.getSession("loginInfo") == null) {
			return web.redirect(web.getRootPath() + "/member/log_main.do", "로그인 후 이용 가능한 서비스입니다.");
		}
		
		String echk = request.getParameter("emailDuplication");
		logger.info("echk의 값은 >> " + echk);
		if (!echk.equals("uncheck")) {
			return web.redirect(null, "이메일 중복확인을 해주세요.");
		}
		
		Member loginInfo = (Member) web.getSession("loginInfo");
		
		String email = loginInfo.getEmail();
		String newEmail = request.getParameter("email");
		String tel = loginInfo.getTel();
		String newTel = request.getParameter("tel");
		String agree1 = request.getParameter("agree1");
		String agree2 = request.getParameter("agree2");
		logger.info("기존의 이메일은 >> " + email);
		logger.info("입력한 이메일은 >> " + newEmail);
		logger.info("기존의 연락처는 >> " + tel);
		logger.info("입력한 연락처는 >> " + newTel);
		logger.info("수신동의1 >> " + agree1);
		logger.info("수신동의2 >> " + agree2);
		
		// 이메일 검사
		if (!regex.isValue(newEmail)) {
			return web.redirect(null, "이메일을 입력하세요.");
		}
		if (!regex.isEmail(newEmail)) {
			return web.redirect(null, "이메일의 형식이 잘못되었습니다.");
		}
		// 연락처 검사
		if (!regex.isValue(newTel)) {
			return web.redirect(null, "연락처를 입력하세요.");
		}
		if (!regex.isCellPhone(newTel) && !regex.isTel(newTel)) {
			return web.redirect(null, "연락처의 형식이 잘못되었습니다.");
		}
		
		if (!email.equals(newEmail) && tel.equals(newTel)) {
			Member member = new Member();
			member.setId(loginInfo.getId());
			member.setEmail(newEmail);
			member.setTel(tel);
			member.setAgree1(agree1);
			member.setAgree2(agree2);
			
			Member editInfo = null;
			try {
				/*memberService.selectEmailCount(member);*/
				memberService.updateMemberET(member);
				editInfo = memberService.selectMember(member);
			} catch (Exception e) {
				return web.redirect(null, e.getLocalizedMessage());
			}
			
			web.removeSession("loginInfo");
			web.setSession("loginInfo", editInfo);
		} else if (email.equals(newEmail) && !tel.equals(newTel)) {
			Member member = new Member();
			member.setId(loginInfo.getId());
			member.setEmail(email);
			member.setTel(newTel);
			member.setAgree1(agree1);
			member.setAgree2(agree2);
			
			Member editInfo = null;
			try {
				memberService.selectTelCount(member);
				memberService.updateMemberET(member);
				editInfo = memberService.selectMember(member);
			} catch (Exception e) {
				return web.redirect(null, e.getLocalizedMessage());
			}
			
			web.removeSession("loginInfo");
			web.setSession("loginInfo", editInfo);		
		} else if (email.equals(newEmail) && tel.equals(newTel)) {
			return web.redirect(null, "변경된 내용이 없습니다.");
		}
		
		return web.redirect(web.getRootPath() + "/mypage/mypg_profile_edit_2.do", "수정되었습니다.");
	}
	
	@RequestMapping(value = "/mypage/mypg_password_edit.do", method = RequestMethod.GET)
	public ModelAndView mypg_password_edit(Locale locale, Model model) {
		web.init();
		/*로그인 여부 검사*/
		if (web.getSession("loginInfo") == null) {
			return web.redirect(web.getRootPath() + "/member/log_main.do", "로그인 후 이용 가능한 서비스입니다.");
		}
		
		return new ModelAndView("mypage/mypg_password_edit"); 
	}
	
	@RequestMapping(value = "/mypage/mypg_password_edit_ok.do", method = RequestMethod.POST)
	public ModelAndView mypg_password_edit_ok(Locale locale, Model model, HttpServletRequest request, HttpServletResponse response) {
		web.init();
		/*로그인 여부 검사*/
		if (web.getSession("loginInfo") == null) {
			return web.redirect(web.getRootPath() + "/member/log_main.do", "로그인 후 이용 가능한 서비스입니다.");
		}
		
		String userPw = request.getParameter("now_pw");
		String newUserPw = request.getParameter("new_pw");
		String newUserPwRe = request.getParameter("new_pw_re");
		logger.info("userPw=" + userPw);
		logger.info("newUserPw=" + newUserPw);
		logger.info("newUserPwRe=" + newUserPwRe);
		
		if (!regex.isValue(userPw)) {	
			return web.redirect(null, "기존 비밀번호를 입력하세요.");		
		}
		
		if (!regex.isValue(newUserPw)) {	
			return web.redirect(null, "새 비밀번호를 입력하세요.");		
		}

		if (regex.isValue(newUserPw)) {
			if (!regex.isEngNum(newUserPw) || newUserPw.length() > 20 || newUserPw.length() < 8) {			
				return web.redirect(null, "비밀번호는 8~20자 사이의 숫자와 영문 조합만 가능합니다.");				
			}
	
			if (!newUserPw.equals(newUserPwRe)) {			
				return web.redirect(null, "비밀번호 확인이 잘못되었습니다.");			
			}
		}

		Member loginInfo = (Member) web.getSession("loginInfo");
		Member member = new Member();
		member.setId(loginInfo.getId());
		member.setUserPw(userPw);
		
		try {
			memberService.selectMemberPasswordCount(member);
		} catch (Exception e) {
			return web.redirect(null, e.getLocalizedMessage());
		}
		
		member.setUserPw(newUserPw);
		Member editInfo = null;
		try {
			memberService.updateMemberPasswordById(member);
			editInfo = memberService.selectMember(member);
		} catch (Exception e) {
			return web.redirect(null, e.getLocalizedMessage());
		}
		
		web.removeSession("loginInfo");
		web.setSession("loginInfo", editInfo);
		
		return web.redirect(web.getRootPath() + "/mypage/mypg_password_edit.do", "비밀번호 변경이 완료되었습니다.");
	}
	
	@RequestMapping(value = "/mypage/mypg_withdraw.do", method = RequestMethod.GET)
	public ModelAndView mypg_withdraw(Locale locale, Model model) {
		web.init();
		/*로그인 여부 검사*/
		if (web.getSession("loginInfo") == null) {
			return web.redirect(web.getRootPath() + "/member/log_main.do", "로그인 후 이용 가능한 서비스입니다.");
		}
		
		return new ModelAndView("mypage/mypg_withdraw"); 
	}
	
	@RequestMapping(value = "/mypage/mypg_withdraw_ok.do", method = RequestMethod.POST)
	public ModelAndView mypg_withdraw_ok(Locale locale, Model model, HttpServletRequest request, HttpServletResponse response) {
		web.init();
		/*로그인 여부 검사*/
		if (web.getSession("loginInfo") == null) {
			return web.redirect(web.getRootPath() + "/member/log_main.do", "로그인 후 이용 가능한 서비스입니다.");
		}
		
		String userPw = request.getParameter("pswd_confirm");
		logger.info("입력한 패스워드는 >> " + userPw);
		
		if (!regex.isValue(userPw)) {
			return web.redirect(null, "비밀번호를 확인 후 다시 입력하세요.");		
		}
		
		Member loginInfo = (Member) web.getSession("loginInfo");
		Member member = new Member();
		member.setId(loginInfo.getId());
		member.setUserPw(userPw);

		try {
			memberService.selectMemberPasswordCount(member);
		} catch (Exception e) {
			return web.redirect(null, e.getLocalizedMessage());
		}
		
		return web.redirect(web.getRootPath() + "/mypage/mypg_withdraw_2.do", null);
	}
	
	@RequestMapping(value = "/mypage/mypg_withdraw_2.do", method = RequestMethod.GET)
	public ModelAndView mypg_withdraw_2(Locale locale, Model model) {
		web.init();
		/*로그인 여부 검사*/
		if (web.getSession("loginInfo") == null) {
			return web.redirect(web.getRootPath() + "/member/log_main.do", "로그인 후 이용 가능한 서비스입니다.");
		}
		
		return new ModelAndView("mypage/mypg_withdraw_2"); 
	}
	
	@RequestMapping(value = "/mypage/mypg_withdraw_2_ok.do", method = RequestMethod.GET)
	public ModelAndView mypg_withdraw_2_ok(Locale locale, Model model, HttpServletRequest request, HttpServletResponse response) {
		web.init();
		/*로그인 여부 검사*/
		if (web.getSession("loginInfo") == null) {
			return web.redirect(web.getRootPath() + "/member/log_main.do", "로그인 후 이용 가능한 서비스입니다.");
		}
		
		Member loginInfo = (Member) web.getSession("loginInfo");
		Member member = new Member();
		member.setId(loginInfo.getId());
		
		QnA qna = new QnA();
		qna.setMemberId(loginInfo.getId());
		
		try {
			qnaService.updateQnAMemberOut(qna);
			memberService.deleteMember(member);
		} catch (Exception e) {
			return web.redirect(null, e.getLocalizedMessage());
		}
		
		web.removeAllSession();
		return web.redirect(web.getRootPath(), "탈퇴되었습니다.");
	}
	
	@RequestMapping(value = "/mypage/mypg_withdraw_msg.do", method = RequestMethod.GET)
	public ModelAndView mypg_withdraw_msg(Locale locale, Model model) {
		web.init();
		/*로그인 여부 검사*/
		if (web.getSession("loginInfo") == null) {
			return web.redirect(web.getRootPath() + "/member/log_main.do", "로그인 후 이용 가능한 서비스입니다.");
		}
		
		return new ModelAndView("mypage/mypg_withdraw_msg");
	}
	
	@RequestMapping(value = "/mypage/mypg_qna.do", method = RequestMethod.GET)
	public ModelAndView mypg_qna(Locale locale, Model model) {
		web.init();
		
		/*로그인 여부 검사*/
		if (web.getSession("loginInfo") == null) {
			return web.redirect(web.getRootPath() + "/member/log_main.do", "로그인 후 이용 가능한 서비스입니다.");
		}
		
		Member loginInfo = (Member) web.getSession("loginInfo");
		
		QnA qna = new QnA();
		qna.setMemberId(loginInfo.getId());
		
		/*현재 페이지 수 --> 기본값은 1페이지로 설정함*/
		int page = web.getInt("page", 1);
		
		/* 게시글 목록 조회 */
		int totalCount = 0;
		List<QnA> qnaInfo = null;
		try {
			/*전체 게시물 수*/
			totalCount = qnaService.selectQnACount(qna);
			/*나머지 페이지 번호 계산하기
			--> 현재 페이지, 전체 게시물 수, 한 페이지의 목록 수, 그룹갯수*/
			pageHelper.pageProcess(page, totalCount, 10, 5);
			qnaInfo = qnaService.selectQnAList(qna);
		} catch (Exception e) {
			return web.redirect(web.getRootPath() + "/mypage/mypg_qna.do", null);
		}
		
		model.addAttribute("qnaInfo", qnaInfo);
		model.addAttribute("pageHelper", pageHelper);
		
		int maxPageNo = pageHelper.getTotalCount() - (pageHelper.getPage() -1) * pageHelper.getListCount();
		model.addAttribute("maxPageNo", maxPageNo);
		
		return new ModelAndView("mypage/mypg_qna");
	}
	
	@RequestMapping(value = "/mypage/mypg_qna_search.do", method = RequestMethod.GET)
	public ModelAndView mypg_qna_search(Locale locale, Model model) {
		web.init();
		/*로그인 여부 검사*/
		if (web.getSession("loginInfo") == null) {
			return web.redirect(web.getRootPath() + "/member/log_main.do", "로그인 후 이용 가능한 서비스입니다.");
		}
		/*조회날짜 받아오기*/
		String datepickerS = web.getString("datepickerS");
		String datepickerE = web.getString("datepickerE");
		logger.info("datepickerS=" + datepickerS);
		logger.info("datepickerE=" + datepickerE);
		/*로그인세션 참조*/
		Member loginInfo = (Member) web.getSession("loginInfo");
		/*문의사항 객체를 만들고 로그인세션에서 참조한 회원번호 넣어주기*/
		QnA qna = new QnA();
		qna.setMemberId(loginInfo.getId());
		
		qna.setDatepickerS(datepickerS);
		qna.setDatepickerE(datepickerE);
		/*리스트페이지 번호 부여*/
		int page = web.getInt("page", 1);
		/*리스트갯수*/
		int totalCount = 0;
		/*문의사항 리스트객체 만들기*/
		List<QnA> qnaBDInfo = null;
		try {
			/*회원번호로 검색한 리스트결과를 리스트갯수 객체에 넣기*/
			totalCount = qnaService.selectQnACountByDate(qna);
			pageHelper.pageProcess(page, totalCount, 10, 5);
			/*회원번호로 검색한 문의사항 리스트의 정보를 객체에 담기*/
			qnaBDInfo = qnaService.selectQnAListByDate(qna);
		} catch (Exception e) {
			return web.redirect(web.getRootPath() + "/mypage/mypg_qna.do", null);
		}
		/*문의사항리스트정보를 모델에 넣기*/
		model.addAttribute("qnaBDInfo", qnaBDInfo);
		model.addAttribute("pageHelper", pageHelper);
		
		int maxPageNo = pageHelper.getTotalCount() - (pageHelper.getPage() -1) * pageHelper.getListCount();
		model.addAttribute("maxPageNo", maxPageNo);
		
		return new ModelAndView("mypage/mypg_qna");
	}
	
	@RequestMapping(value = "/mypage/mypg_qna_2.do", method = RequestMethod.GET)
	public ModelAndView mypg_qna_2(Locale locale, Model model, HttpServletRequest request, HttpServletResponse response) {
		web.init();
		/*로그인 여부 검사*/
		if (web.getSession("loginInfo") == null) {
			return web.redirect(web.getRootPath() + "/member/log_main.do", "로그인 후 이용 가능한 서비스입니다.");
		}
		
		int id = web.getInt("id");
		logger.info("받아온 id는 >> " + id);
		model.addAttribute("id", id);
		
		QnA qna = new QnA();
		qna.setId(id);

		File file = new File();
		file.setQnaId(qna.getId());
		
		QnA qnaInfo = null;
		List<File> fileList = null;
		try {
			qnaInfo = qnaService.selectQnAById(qna);
			fileList = fileService.selectQnAFileList(file);
		} catch (Exception e) {
			return web.redirect(web.getRootPath() + "/mypage/mypg_qna_2.do", null);
		}
		
		model.addAttribute("qnaInfo", qnaInfo);
		model.addAttribute("fileList", fileList);
		
		return new ModelAndView("mypage/mypg_qna_2");
	}
}
