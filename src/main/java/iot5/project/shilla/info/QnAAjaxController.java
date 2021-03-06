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
public class QnAAjaxController {
	Logger logger = LoggerFactory.getLogger(QnAAjaxController.class);
	
	@RequestMapping(value = "/info/enq_dining", method = RequestMethod.GET)
	public ModelAndView enqDining(Locale locale, Model model) {
		logger.info("Welcome to enquiry page! The client locale is {}.", locale);

		return new ModelAndView("info/enq_dining");
	}
	
	@RequestMapping(value = "/info/enq_room", method = RequestMethod.GET)
	public ModelAndView enqRoom(Locale locale, Model model) {
		logger.info("Welcome to enquiry page! The client locale is {}.", locale);

		return new ModelAndView("info/enq_room");
	}
	
	@RequestMapping(value = "/info/enq_wedding", method = RequestMethod.GET)
	public ModelAndView enqWedding(Locale locale, Model model) {
		logger.info("Welcome to enquiry page! The client locale is {}.", locale);

		return new ModelAndView("info/enq_wedding");
	}

	@RequestMapping(value = "/info/enq_party", method = RequestMethod.GET)
	public ModelAndView enqParty(Locale locale, Model model) {
		logger.info("Welcome to enquiry page! The client locale is {}.", locale);

		return new ModelAndView("info/enq_party_web");
	}
	@RequestMapping(value = "/info/enq_web", method = RequestMethod.GET)
	public ModelAndView enqWeb(Locale locale, Model model) {
		logger.info("Welcome to enquiry page! The client locale is {}.", locale);

		return new ModelAndView("info/enq_party_web");
	}
}