package iot5.project.shilla.member;

import java.io.IOException;
import java.util.Locale;
import java.util.Map;

import javax.mail.MessagingException;
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

import iot5.project.shilla.helper.MailHelper;
import iot5.project.shilla.helper.RegexHelper;
import iot5.project.shilla.helper.UploadHelper;
import iot5.project.shilla.helper.Util;
import iot5.project.shilla.helper.WebHelper;
import iot5.project.shilla.model.Member;
import iot5.project.shilla.service.MemberService;

@Controller
public class MemberController {
	Logger logger = LoggerFactory.getLogger(MemberController.class);
	@Autowired
	WebHelper web;
	@Autowired
	SqlSession sqlSession;
	@Autowired
	RegexHelper regex;
	@Autowired
	UploadHelper upload;
	@Autowired
	MailHelper mail;
	@Autowired
	Util util;
	@Autowired
	MemberService memberService;

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/member/log_join02.do", method = RequestMethod.POST)
	public ModelAndView MemberJoin(Locale locale, Model model, HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		web.init();

		if (web.getSession("loginInfo") != null) {
			return web.redirect(web.getRootPath(), "이미 로그인 하셨습니다.");
		}
		return new ModelAndView("member/log_join02");
	}

	@RequestMapping(value = "/member/join_ok.do", method = RequestMethod.POST)
	public ModelAndView MemberJoinOk(Locale locale, Model model, HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		web.init();

		/** (3)로그인 여부 검사 */
		if (web.getSession("loginInfo") != null) {
			return web.redirect(web.getRootPath(), "이미 로그인 하셨습니다.");
		}
		/** (4)파일이 포함된 POST 파라미터 받기 */
		try {
			upload.multipartRequest();
		} catch (Exception e) {

			return web.redirect(null, "multipart데이터가 아닙니다.");
		}
		Map<String, String> paramMap = upload.getParamMap();
		String userNameKor = paramMap.get("user_name_kor");
		String userNameEng = paramMap.get("user_name_eng");
		String userId = paramMap.get("user_id");
		String userPw = paramMap.get("user_pw");
		String userPwRe = paramMap.get("user_pw_re");
		String birthdate = paramMap.get("birthdate");
		String email = paramMap.get("email");
		String tel = paramMap.get("tel");
		String telHome = paramMap.get("tel_home");
		String zipcode = paramMap.get("zipcode");
		String loadAddr = paramMap.get("load_addr");
		String detail = paramMap.get("detail");

		logger.debug("userNameKor=" + userNameKor);
		logger.debug("userNameEng=" + userNameEng);
		logger.debug("userId=" + userId);
		logger.debug("userPw=" + userPw);
		logger.debug("userPwRe=" + userPwRe);
		logger.debug("birthdate=" + birthdate);
		logger.debug("email=" + email);
		logger.debug("tel=" + tel);
		logger.debug("telHome=" + telHome);
		logger.debug("zipcode=" + zipcode);
		logger.debug("loadAddr=" + loadAddr);
		logger.debug("detail=" + detail);

		/** (5)입력값의 유효성 검사 */
		// 아이디 검사
		if (!regex.isValue(userId)) {

			return web.redirect(null, "아이디를 입력하세요");
		}
		if (!regex.isEngNum(userId)) {

			return web.redirect(null, "아이디는 숫자와 영문조합으로 20자까지만 가능합니다.");
		}
		if (userId.length() > 20) {

			return web.redirect(null, "아이디는 숫자와 영문의 조합으로 20자까지만 가능합니다.");

		}
		// 비밀번호 검사
		if (!regex.isValue(userPw)) {

			return web.redirect(null, "비밀번호를 입력하세요");

		}
		if (!regex.isEngNum(userPw)) {

			return web.redirect(null, "비밀번호는 숫자와 영문조합으로 20자까지만 가능합니다.");

		}
		if (userPw.length() > 20) {

			return web.redirect(null, "비밀번호는 숫자와 영문의 조합으로 20자까지만 가능합니다.");

		}
		if (!userPw.equals(userPwRe)) {

			return web.redirect(null, "비밀번호확인이 잘못되었습니다.");

		}
		// 이름 검사
		if (!regex.isValue(userNameKor)) {

			return web.redirect(null, "이름을 입력하세요");

		}
		if (!regex.isKor(userNameKor)) {

			return web.redirect(null, "이름은 한글만 입력가능합니다.");

		}
		if (userNameKor.length() < 2 || userNameKor.length() > 5) {

			return web.redirect(null, "이름은 2 ~ 5 글자까지만 가능합니다.");

		}
		// 이메일 검사
		if (!regex.isValue(email)) {

			return web.redirect(null, "이메일을 입력하세요");

		}
		if (!regex.isEmail(email)) {

			return web.redirect(null, "이메일 형식이 잘못되었습니다.");

		}
		// 연락처 검사
		if (!regex.isValue(tel)) {

			return web.redirect(null, "연락처를 입력하세요");

		}
		if (!regex.isCellPhone(tel) && !regex.isTel(tel)) {

			return web.redirect(null, "연락처 형식이 잘못되었습니다.");

		}
		// 생년월일 검사
		if (!regex.isValue(birthdate)) {

			return web.redirect(null, "생년월일을 입력하세요");

		}

		/** (7)전달 받은 파라미터를 Beans객체에 담는다 */
		Member member = new Member();
		member.setUserNameKor(userNameKor);
		member.setUserNameEng(userNameEng);
		member.setUserId(userId);
		member.setUserPw(userPwRe);
		member.setBirthdate(birthdate);
		member.setEmail(email);
		member.setTel(tel);
		member.setTelHome(telHome);
		member.setZipcode(zipcode);
		member.setLoadAddr(loadAddr);
		member.setDetail(detail);
		/** (8)Service를 통한 데이터 배이서 저장 처리 */
		try {
			memberService.insertMember(member);
		} catch (Exception e) {
			return web.redirect(null, e.getLocalizedMessage());

		}

		/** (9)회원가입하자마자 로그인 */
		Member loginInfo = null;

		try {
			loginInfo = memberService.selectLoginInfo(member);
		} catch (Exception e) {
			return web.redirect(null, e.getLocalizedMessage());
		}

		web.setSession("loginInfo", loginInfo);

		/** (10)이메일 발송 파라미터 처리 */

		logger.debug("email=" + email);

		if (email == null) {
			// sqlSession.close();
			return web.redirect(null, "이메일 주소를 입력하세요");

		}


		member = new Member();
		member.setEmail(email);
		member.setUserPw(userPw);

		try {
			memberService.updateMemberPasswordByEmail(member);
		} catch (Exception e) {
			return web.redirect(null, e.getLocalizedMessage());

		}

		String sender = "shillaManager@shilla.com";
		String subject = "신라호텔 회원가입 완료 메일입니다.";
		String content = "회원가입을 감사합니다. 회원님의 아이디는 <strong>" + userId + "</strong>이고, 회원번호는 <strong>" + loginInfo.getId()
				+ "</strong>입니다.";

		try {
			mail.sendMail(sender, email, subject, content);
		} catch (MessagingException e) {
			return web.redirect(null, "메일발송에 실패했습니다. 관리자에게 문의 바랍니다");

		}

		/** (10)가입이 완료되었으므로 완료페이지로 이동 */

		return web.redirect(web.getRootPath(), "회원가입이 완료되었습니다.");
	}

	@RequestMapping(value = "/member/log_main.do", method = RequestMethod.GET)
	public ModelAndView log_main(Locale locale, Model model, HttpServletRequest request, HttpServletResponse response) {
		logger.info("Welcome home! The client locale is {log_main}.", locale);
		return new ModelAndView("member/log_main");
	}

	@RequestMapping(value = "/member/login_ok.do", method = RequestMethod.POST)
	public ModelAndView LoginOk(Locale locale, Model model, HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		web.init();

		if (web.getSession("loginInfo") != null) {
			return web.redirect(web.getRootPath(), "이미 로그인 하셨습니다.");

		}
		/** (4)파라미터 처리 */
		String userId = web.getString("user_id");
		String userPw = web.getString("user_pw");

		logger.debug("userId=" + userId);
		logger.debug("userPw=" + userPw);

		if (userId == null || userPw == null) {
			return web.redirect(null, "아이디나 비밀번호가 없습니다.");

		}

		/** (5)전달받은 파라미터를 Beans에 설정 */
		Member member = new Member();
		member.setUserId(userId);
		member.setUserPw(userPw);

		/** (6)Service를 통한 회원 인증 */
		Member loginInfo = null;

		try {
			loginInfo = memberService.selectLoginInfo(member);
		} catch (Exception e) {
			return web.redirect(null, e.getLocalizedMessage());

		}

		web.setSession("loginInfo", loginInfo);

		String movePage = request.getHeader("referer");
		if (movePage == null) {
			movePage = web.getRootPath();
		}
		// sqlSession.close();
		return web.redirect(web.getRootPath(), null);

	}

	@RequestMapping(value = "/member/logout.do", method = RequestMethod.GET)
	public ModelAndView MemberLogout(Locale locale, Model model, HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		web.init();

		Member loginInfo = (Member) web.getSession("loginInfo");
		if (loginInfo == null) {
			return web.redirect(web.getRootPath(), "로그인 후에 이용 가능합니다.");

		}
		web.removeAllSession();
		return web.redirect(web.getRootPath(), "로그아웃되었습니다.");

	}

	@RequestMapping(value = "/member/log_join01.do", method = RequestMethod.GET)
	public ModelAndView log_join01(Locale locale, Model model, HttpServletRequest request,
			HttpServletResponse response) {
		logger.info("Welcome home! The client locale is {log_join01}.", locale);
		return new ModelAndView("member/log_join01");
	}

	@RequestMapping(value = "/member/log_join03.do", method = RequestMethod.POST)
	public ModelAndView log_join03(Locale locale, Model model, HttpServletRequest request,
			HttpServletResponse response) {
		logger.info("Welcome home! The client locale is {log_join03}.", locale);
		return new ModelAndView("member/log_join03");
	}

	@RequestMapping(value = "/member/find_id.do", method = RequestMethod.GET)
	public ModelAndView MemberFindId(Locale locale, Model model, HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		web.init();

		if (web.getSession("loginInfo") != null) {
			return web.redirect(web.getRootPath(), "이미 로그인 중입니다.");
		}
		return new ModelAndView("member/find_id");
	}

	@RequestMapping(value = "/member/find_id_ok.do", method = RequestMethod.POST)
	public ModelAndView MemberFindIdOk(Locale locale, Model model, HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		web.init();

		if (web.getSession("loginInfo") != null) {
			// sqlSession.close();
			return web.redirect(web.getRootPath(), "이미 로그인 중입니다.");

		}
		/** (4)파라미터 처리 */
		Map<String, String> paramMap = upload.getParamMap();
		String email = paramMap.get("find_id_email");
		String userNameKor = paramMap.get("find_id_name_kor");

		logger.debug("email=" + email);
		logger.debug("find_id_name_kor=" + userNameKor);

		// 이름 검사
		if (!regex.isValue(userNameKor)) {

			return web.redirect(null, "이름을 입력하세요");

		}
		if (!regex.isKor(userNameKor)) {

			return web.redirect(null, "이름은 한글만 입력가능합니다.");

		}
		if (userNameKor.length() < 2 || userNameKor.length() > 5) {

			return web.redirect(null, "이름은 2 ~ 5 글자까지만 가능합니다.");

		}
		// 이메일 검사
		if (!regex.isValue(email)) {

			return web.redirect(null, "이메일을 입력하세요");

		}
		if (!regex.isEmail(email)) {

			return web.redirect(null, "이메일 형식이 잘못되었습니다.");

		}

		Member member = new Member();
		member.setEmail(email);
		member.setUserNameKor(userNameKor);

		try {
			memberService.selectFindId(member);
		} catch (Exception e) {
			return web.redirect(null, e.getLocalizedMessage());

		}

		return web.redirect(web.getRootPath(), "인증되었습니다.");

	}

	@RequestMapping(value = "/member/find_pw.do", method = RequestMethod.GET)
	public ModelAndView MemberFindPw(Locale locale, Model model, HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		web.init();

		if (web.getSession("loginInfo") != null) {
			return web.redirect(web.getRootPath(), "이미 로그인 중입니다.");

		}
		return new ModelAndView("member/find_pw");
	}

	@RequestMapping(value = "/member/find_pw_ok.do", method = RequestMethod.POST)
	public ModelAndView MemberFindPwOk(Locale locale, Model model, HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		web.init();

		if (web.getSession("loginInfo") != null) {
			// sqlSession.close();
			return web.redirect(web.getRootPath(), "이미 로그인 중입니다.");

		}
		/** (4)파라미터 처리 */
		String email = web.getString("email");

		logger.debug("email=" + email);

		if (email == null) {
			// sqlSession.close();
			return web.redirect(null, "이메일 주소를 입력하세요");

		}

		String newPassword = util.getRandomPassword();

		Member member = new Member();
		member.setEmail(email);
		member.setUserPw(newPassword);

		try {
			memberService.updateMemberPasswordByEmail(member);
		} catch (Exception e) {
			return web.redirect(null, e.getLocalizedMessage());

		}

		String sender = "webmaster@mysite.com";
		String subject = "MySite 비밀번호 변경 안내 입니다.";
		String content = "회원님의 새로운 비밀번호는 <strong>" + newPassword + "</strong>입니다.";

		try {
			mail.sendMail(sender, email, subject, content);
		} catch (MessagingException e) {
			return web.redirect(null, "메일발송에 실패했습니다. 관리자에게 문의 바랍니다");

		}

		return web.redirect(null, "새로운 비밀번호가 메일로 발송되었습니다.");

	}

}
