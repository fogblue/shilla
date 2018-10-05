package iot5.project.shilla;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class IndexController {
	
	private static final Logger logger = LoggerFactory.getLogger(IndexController.class);
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView home(Locale locale, Model model) {
		logger.debug("대문입장");
		
		return new ModelAndView("index");
	}
	
	@RequestMapping(value = "/mem_policy.do", method = RequestMethod.GET)
	public ModelAndView policy(Locale locale, Model model) {
		logger.debug("개인정보");
		
		return new ModelAndView("mem_policy");
	}
}
