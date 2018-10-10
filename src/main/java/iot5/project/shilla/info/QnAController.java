package iot5.project.shilla.info;

import java.io.IOException;
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

import iot5.project.shilla.helper.PageHelper;
import iot5.project.shilla.helper.RegexHelper;
import iot5.project.shilla.helper.UploadHelper;
import iot5.project.shilla.helper.WebHelper;
import iot5.project.shilla.model.Member;
import iot5.project.shilla.model.QnA;
import iot5.project.shilla.service.MemberService;
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
	MemberService memberService;
	
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
	@RequestMapping(value = "/member/login_test.do", method = RequestMethod.GET)
	public ModelAndView loginTest(Locale locale, Model model) {
		logger.info("Welcome to contact info page! The client locale is {}.", locale);
		
		return new ModelAndView("login_test");
	}
	
	@RequestMapping(value = "/member/login_test_ok.do", method = RequestMethod.POST)
	public ModelAndView LoginOk(Locale locale, Model model, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		web.init();
		
		if(web.getSession("loginInfo")!=null) {
			return web.redirect(web.getRootPath(), "이미 로그인 하셨습니다.");
			
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
		
		return web.redirect(web.getRootPath(), null);
	
	}
	
	
}