package iot5.project.shilla.info;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class InfoController {
	Logger logger = LoggerFactory.getLogger(InfoController.class);

	@RequestMapping(value = "/info/awards.do", method = RequestMethod.GET)
	public ModelAndView awards(Locale locale, Model model) {
		logger.info("Welcome to awards page! The client locale is {}.", locale);

		return new ModelAndView("info/awards");
	}

	@RequestMapping(value = "/info/hotelinfo.do", method = RequestMethod.GET)
	public ModelAndView hotelinfo(Locale locale, Model model) {
		logger.info("Welcome to hotel info page! The client locale is {}.", locale);

		return new ModelAndView("info/hotelinfo");
	}

	

	@RequestMapping(value = "/info/jejushilla.do", method = RequestMethod.GET)
	public ModelAndView jejushilla(Locale locale, Model model) {
		logger.info("Welcome to jeju shilla page! The client locale is {}.", locale);
		
		return new ModelAndView("info/jejushilla");
	}

	@RequestMapping(value = "/info/seoulshilla.do", method = RequestMethod.GET)
	public ModelAndView seoulshilla(Locale locale, Model model) {
		logger.info("Welcome to seoul shilla page! The client locale is {}.", locale);

		return new ModelAndView("info/seoulshilla");
	}
	
}
