package iot5.project.shilla.reserv;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import iot5.project.shilla.helper.WebHelper;
import iot5.project.shilla.model.Reservation;
import iot5.project.shilla.model.ResvGuest;

@Controller
public class ReservController {
	private static final Logger logger = LoggerFactory.getLogger(ReservController.class);
	@Autowired
	WebHelper web;
	@Autowired
	SqlSession sqlSession;
	
	
	
	
	
	
	
	
	@RequestMapping(value = "/reservation/reservation.do", method = RequestMethod.GET)
	public ModelAndView reservation(Locale locale, Model model) {
		logger.info("Your locale is", locale);
		
		 
		Reservation roomInfo = null;
		Reservation guestInfo = null;

		try {
			/*loginInfo = memberService.selectLoginInfo(member);*/
		} catch (Exception e) {
			return web.redirect(null, e.getLocalizedMessage());
		}

		/*web.setSession("reservation", reservation);*/
		
		
		
		
		
	/*	web.init();
		int pplAd = web.getInt("ppl_add");
		int pplCh = web.getInt("ppl_ch");
		int pplBb = web.getInt("ppl_bb");
		
		Reservation reservation = new Reservation();
		reservation.setPplAd(pplAd);
		reservation.setPplCh(pplCh);
		reservation.setPplBb(pplBb);*/
		
		
		return new ModelAndView("reservation/reservation");
	}
	
	@RequestMapping(value = "/reservation/reservation_ok.do", method = RequestMethod.POST)
	public ModelAndView reservation_ok(Locale locale, Model model, HttpServletRequest request) {
		web.init();
		
		int ppl_ad = Integer.parseInt(request.getParameter("ppl_ad"));
		int ppl_ch = Integer.parseInt(request.getParameter("ppl_ch"));
		int ppl_bb = Integer.parseInt(request.getParameter("ppl_bb"));
		logger.info("ppl_ad >> " + ppl_ad);
		logger.info("ppl_ch >> " + ppl_ch);
		logger.info("ppl_bb >> " + ppl_bb);
		
		ResvGuest reserv = new ResvGuest();
		reserv.setPplAd(ppl_ad);
		reserv.setPplCh(ppl_ch);
		reserv.setPplBb(ppl_bb);

		
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