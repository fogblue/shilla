package iot5.project.shilla.login;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class loginController {
private static final Logger logger = LoggerFactory.getLogger(loginController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/login/log_main.do", method = RequestMethod.GET)
	public String log_main(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {log_main}.", locale);
		return "login/log_main";
	}
	@RequestMapping(value = "/login/log_join01.do", method = RequestMethod.GET)
	public String log_join01(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {log_join01}.", locale);
		return "login/log_join01";
	}
	@RequestMapping(value = "/login/log_join02.do", method = RequestMethod.GET)
	public String log_join02(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {log_join02}.", locale);
		return "login/log_join02";
	}
	@RequestMapping(value = "/login/log_join03.do", method = RequestMethod.GET)
	public String log_join03(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {log_join03}.", locale);
		return "login/log_join03";
	}
	
}
