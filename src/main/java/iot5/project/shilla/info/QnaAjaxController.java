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
public class QnaAjaxController {
	private static final Logger logger = LoggerFactory.getLogger(QnaAjaxController.class);
	
	@RequestMapping(value = "/info/enq_dining", method = RequestMethod.GET)
	public ModelAndView enq_dining(Locale locale, Model model) {
		logger.info("Welcome to inquiry page! The client locale is {}.", locale);

		return new ModelAndView("info/enq_dining");
	}
	
	@RequestMapping(value = "/info/enq_room", method = RequestMethod.GET)
	public ModelAndView enq_room(Locale locale, Model model) {
		logger.info("Welcome to inquiry page! The client locale is {}.", locale);

		return new ModelAndView("info/enq_room");
	}
	
	@RequestMapping(value = "/info/enq_wedding", method = RequestMethod.GET)
	public ModelAndView enq_wedding(Locale locale, Model model) {
		logger.info("Welcome to inquiry page! The client locale is {}.", locale);

		return new ModelAndView("info/enq_wedding");
	}

}
