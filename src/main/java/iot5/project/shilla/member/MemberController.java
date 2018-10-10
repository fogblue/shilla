package iot5.project.shilla.member;

import java.io.IOException;
import java.util.Locale;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	@Autowired
	WebHelper web;
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
	@RequestMapping(value = "/member/log_main.do", method = RequestMethod.GET)
	public ModelAndView log_main(Locale locale, Model model, HttpServletRequest request, HttpServletResponse response) {
		logger.info("Welcome home! The client locale is {log_main}.", locale);
		return new ModelAndView("member/log_main");
	}

	@RequestMapping(value = "/member/log_user", method = RequestMethod.GET)
	public ModelAndView log_user(Locale locale, Model model, HttpServletRequest request, HttpServletResponse response) {
		logger.info("Welcome home! The client locale is {log_join01}.", locale);
		return new ModelAndView("member/log_user");
	}

	@RequestMapping(value = "/member/log_unuser", method = RequestMethod.GET)
	public ModelAndView log_unuser(Locale locale, Model model, HttpServletRequest request,
			HttpServletResponse response) {
		logger.info("Welcome home! The client locale is {log_join01}.", locale);
		return new ModelAndView("member/log_unuser");
	}

	
	@RequestMapping(value = "/member/login_ok.do", method = RequestMethod.POST)
	public ModelAndView LoginOk(Locale locale, Model model, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		web.init();
		
		if(web.getSession("loginInfo")!=null) {
			return web.redirect(web.getRootPath() + "/index.do", "이미 로그인 하셨습니다.");
			
		}
		/**(4)파라미터 처리*/
		String userId = web.getString("user_id");
		String userPw = web.getString("user_pw");
		
		logger.debug("userId=" + userId);
		logger.debug("userPw=" + userPw);
		
		if(userId == null || userPw == null) {
			return web.redirect(null, "아이디나 비밀번호가 없습니다.");
			
		}
		
		/**(5)전달받은 파라미터를 Beans에 설정*/
		Member member = new Member();
		member.setUserId(userId);
		member.setUserPw(userPw);
		
		/**(6)Service를 통한 회원 인증*/
		Member loginInfo = null;
		
		try {
			loginInfo= memberService.selectLoginInfo(member);
		} catch(Exception e) {
			return web.redirect(null, e.getLocalizedMessage());
			
		}
		
		web.setSession("loginInfo",loginInfo );
		
		String movePage = request.getHeader("referer");
		if(movePage == null) {
			movePage = web.getRootPath() + "/index.do";
		}
		//sqlSession.close();
		return web.redirect(movePage, null);
	
	}
	@RequestMapping(value = "/member/logout.do", method = RequestMethod.GET)
	public ModelAndView MemberLogout(Locale locale, Model model, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		web.init();
		
		Member loginInfo = (Member) web.getSession("loginInfo");
		if(loginInfo == null) {
			return web.redirect(web.getRootPath() + "/index.do", "로그인 후에 이용 가능합니다.");
		
		}
		web.removeAllSession();
		return web.redirect(web.getRootPath() + "/index.do", "로그아웃되었습니다.");
		
	}
	@RequestMapping(value = "/member/log_join01.do", method = RequestMethod.GET)
	public ModelAndView log_join01(Locale locale, Model model, HttpServletRequest request,
			HttpServletResponse response) {
		logger.info("Welcome home! The client locale is {log_join01}.", locale);
		return new ModelAndView("member/log_join01");
	}

	@RequestMapping(value = "/member/log_join02.do", method = RequestMethod.POST)
	public ModelAndView log_join02(Locale locale, Model model, HttpServletRequest request,
			HttpServletResponse response) {
		logger.info("Welcome home! The client locale is {log_join02}.", locale);
		return new ModelAndView("member/log_join02");
	}

	@RequestMapping(value = "/member/log_join03.do", method = RequestMethod.POST)
	public ModelAndView log_join03(Locale locale, Model model, HttpServletRequest request,
			HttpServletResponse response) {
		logger.info("Welcome home! The client locale is {log_join03}.", locale);
		return new ModelAndView("login/log_join03");
	}

}
