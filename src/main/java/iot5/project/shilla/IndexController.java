package iot5.project.shilla;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import iot5.project.shilla.helper.UploadHelper;
import iot5.project.shilla.helper.WebHelper;
import iot5.project.shilla.service.FileService;
import iot5.project.shilla.service.MemberService;
import iot5.project.shilla.service.QnAService;
import iot5.project.shilla.service.RoomService;

@Controller
public class IndexController {
	private static final Logger logger = LoggerFactory.getLogger(IndexController.class);
	
	@Autowired
	WebHelper web;
	@Autowired
	UploadHelper upload;
	@Autowired
	RoomService roomService;
	@Autowired
	FileService fileService;
	@Autowired
	MemberService memberService;
	@Autowired
	QnAService qnaService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView index(Locale locale, Model model) {
		logger.info("대문입장");
		return new ModelAndView("index");
	}
	
	@RequestMapping(value = "/mem_policy.do", method = RequestMethod.GET)
	public ModelAndView policy(Locale locale, Model model) {
		logger.info("개인정보");
		
		return new ModelAndView("mem_policy");
	}
	

}
