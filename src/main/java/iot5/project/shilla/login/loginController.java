package iot5.project.shilla.login;

import java.io.IOException;
import java.io.PrintWriter;
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

@Controller
public class loginController {
	private static final Logger logger = LoggerFactory.getLogger(loginController.class);
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

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/login/log_main.do", method = RequestMethod.GET)
	public ModelAndView log_main(Locale locale, Model model, HttpServletRequest request, HttpServletResponse response) {
		logger.info("Welcome home! The client locale is {log_main}.", locale);
		return new ModelAndView("login/log_main");
	}

	@RequestMapping(value = "/login/log_user", method = RequestMethod.GET)
	public ModelAndView log_user(Locale locale, Model model, HttpServletRequest request, HttpServletResponse response) {
		logger.info("Welcome home! The client locale is {log_join01}.", locale);
		return new ModelAndView("login/log_user");
	}

	@RequestMapping(value = "/login/log_unuser", method = RequestMethod.GET)
	public ModelAndView log_unuser(Locale locale, Model model, HttpServletRequest request,
			HttpServletResponse response) {
		logger.info("Welcome home! The client locale is {log_join01}.", locale);
		return new ModelAndView("login/log_unuser");
	}

	@RequestMapping(value = "/login/login_ok.do", method = RequestMethod.POST)
	public void LoginOk(Locale locale, Model model, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		web.init();
		
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html"); 
		
		String userId = request.getParameter("user_id");
		String userPw = request.getParameter("user_pw");
		
		if (userId == null) { userId = ""; }
		if (userPw == null) { userPw = ""; }

		PrintWriter out = response.getWriter();
		if (userId.equals("ajax") && userPw.equals("123qwe!@#")) {
			out.write("<h1 class='text-success'>Access success</h1>");	
		} else {
			out.write("<h1 class='text-danger'>Access denied</h1>");
		}
	
	
	}
	
	@RequestMapping(value = "/login/log_join01.do", method = RequestMethod.GET)
	public ModelAndView log_join01(Locale locale, Model model, HttpServletRequest request,
			HttpServletResponse response) {
		logger.info("Welcome home! The client locale is {log_join01}.", locale);
		return new ModelAndView("login/log_join01");
	}

	@RequestMapping(value = "/login/log_join02.do", method = RequestMethod.POST)
	public ModelAndView log_join02(Locale locale, Model model, HttpServletRequest request,
			HttpServletResponse response) {
		logger.info("Welcome home! The client locale is {log_join02}.", locale);
		return new ModelAndView("login/log_join02");
	}

	@RequestMapping(value = "/login/log_join03.do", method = RequestMethod.POST)
	public ModelAndView log_join03(Locale locale, Model model, HttpServletRequest request,
			HttpServletResponse response) {
		logger.info("Welcome home! The client locale is {log_join03}.", locale);
		return new ModelAndView("login/log_join03");
	}

}
