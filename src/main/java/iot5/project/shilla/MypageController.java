package iot5.project.shilla;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MypageController {

	private static final Logger logger = LoggerFactory.getLogger(MypageController.class);
	
	@RequestMapping(value = "/mypage/mypg_reservation.do", method = RequestMethod.GET)
	public String mypg_reservation(Locale locale, Model model) {
		logger.debug("예약페이지 입장");
		return "mypage/mypg_reservation";
	}
	
	@RequestMapping(value = "/mypage/mypg_reservation_2.do", method = RequestMethod.GET)
	public String mypg_reservation_2(Locale locale, Model model) {
		logger.debug("예약페이지2 입장");
		return "mypage/mypg_reservation_2";
	}
	
	@RequestMapping(value = "/mypage/mypg_profile_edit.do", method = RequestMethod.GET)
	public String mypg_profile_edit(Locale locale, Model model) {
		logger.debug("프로필변경페이지 입장");
		return "mypage/mypg_profile_edit";
	}
}
