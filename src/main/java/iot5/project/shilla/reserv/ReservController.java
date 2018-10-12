package iot5.project.shilla.reserv;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ReservController {
	private static final Logger logger = LoggerFactory.getLogger(ReservController.class);

	@RequestMapping(value = "/reservation/reservation.do", method = RequestMethod.GET)
	public ModelAndView reservation(Locale locale, Model model) {
		logger.info("Your locale is", locale);

		return new ModelAndView("reservation/reservation");
	}
	
	@RequestMapping(value = "/reservation/rsv_roomselect.do", method = RequestMethod.GET)
	public ModelAndView rsv_roomselect(Locale locale, Model model) {
		logger.info("Your locale is", locale);

		return new ModelAndView("reservation/rsv_roomselect");
	}
	
	@RequestMapping(value = "/reservation/reservation2.do", method = RequestMethod.GET)
	public ModelAndView reservation2(Locale locale, Model model) {
		logger.info("Your locale is", locale);

		return new ModelAndView("reservation/reservation2");
	}
	
	@RequestMapping(value = "/reservation/reservation3.do", method = RequestMethod.GET)
	public ModelAndView reservation3(Locale locale, Model model) {
		logger.info("Your locale is", locale);

		return new ModelAndView("reservation/reservation3");
	}
	
	@RequestMapping(value = "/reservation/reservation4.do", method = RequestMethod.GET)
	public ModelAndView reservation4(Locale locale, Model model) {
		logger.info("Your locale is", locale);

		return new ModelAndView("reservation/reservation4");
	}

}