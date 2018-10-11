package iot5.project.shilla.info;

import java.io.IOException;
import java.util.Locale;
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
		
}