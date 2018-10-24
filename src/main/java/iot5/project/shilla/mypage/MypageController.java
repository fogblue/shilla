package iot5.project.shilla.mypage;

import java.util.Locale;

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

import iot5.project.shilla.helper.RegexHelper;
import iot5.project.shilla.helper.UploadHelper;
import iot5.project.shilla.helper.WebHelper;
import iot5.project.shilla.model.Member;
import iot5.project.shilla.model.QnA;
import iot5.project.shilla.model.Reservation;
import iot5.project.shilla.service.MemberService;
import iot5.project.shilla.service.QnAService;
import iot5.project.shilla.service.ReservService;

@Controller
public class MypageController {
	
	@Autowired
	WebHelper web;
	@Autowired
	SqlSession sqlSession;
	@Autowired
	RegexHelper regex;
	@Autowired
	UploadHelper upload;
	@Autowired
	MemberService memberService;
	@Autowired
	QnAService qnaService;
	@Autowired
	ReservService reservService;
	
	private static final Logger logger = LoggerFactory.getLogger(MypageController.class);
	
	@RequestMapping(value = "/mypage/mypg_reservation.do", method = RequestMethod.GET)
	public ModelAndView mypg_reservation(Locale locale, Model model) {	
		return new ModelAndView("mypage/mypg_reservation");
	}
	
	@RequestMapping(value = "/mypage/mypg_reservation_table.do", method = RequestMethod.GET)
	public ModelAndView mypg_reservation_table(Locale locale, Model model) {
		web.init();
		
		Member loginInfo = (Member) web.getSession("loginInfo");
		
		Reservation resv = new Reservation();
		resv.setMemberId(loginInfo.getId());
		
		Reservation resvInfo = null;
		try {
			resvInfo = reservService.selectReserv(resv);
		} catch (Exception e) {
			return web.redirect(web.getRootPath() + "/mypage/mypg_reservation.do", null);
		}
		
		model.addAttribute("resvInfo", resvInfo);
		
		return new ModelAndView("mypage/mypg_reservation_table");
	}
	
	@RequestMapping(value = "/mypage/mypg_reservation_2.do", method = RequestMethod.GET)
	public ModelAndView mypg_reservation_2(Locale locale, Model model, HttpServletRequest request, HttpServletResponse response) {
		web.init();
		
		int id = web.getInt("id");
		logger.info("받아온 id는 >> " + id);
		model.addAttribute("id", id);
		
		Reservation resv = new Reservation();
		resv.setId(id);
		
		Reservation resvInfo = null;
		try {
			resvInfo = reservService.selectReservById(resv);
		} catch (Exception e) {
			return web.redirect(web.getRootPath() + "/mypage/mypg_reservation_2.do", null);
		}
		
		model.addAttribute("resvInfo", resvInfo);
		
		return new ModelAndView("mypage/mypg_reservation_2");
	}
	
	@RequestMapping(value = "/mypage/mypg_profile_edit.do", method = RequestMethod.GET)
	public ModelAndView mypg_profile_edit(Locale locale, Model model) {
		return new ModelAndView("mypage/mypg_profile_edit"); 
	}
	
	@RequestMapping(value = "/mypage/mypg_profile_edit_ok.do", method = RequestMethod.POST)
	public ModelAndView mypg_profile_edit_ok(Locale locale, Model model, HttpServletRequest request, HttpServletResponse response) {
		web.init();
		
		String userPw = request.getParameter("pswd_confirm");
		logger.info("입력한 패스워드는 >> " + userPw);
		
		if (!regex.isValue(userPw)) {
			return web.redirect(null, "현재 비밀번호를 입력하세요.");		
		}
		
		Member loginInfo = (Member) web.getSession("loginInfo");
		Member member = new Member();
		member.setId(loginInfo.getId());

		try {
			memberService.selectMemberPasswordCount(member);
			memberService.selectMember(member);
		} catch (Exception e) {
			return web.redirect(null, e.getLocalizedMessage());
		}
		
		return web.redirect(web.getRootPath() + "/mypage/mypg_profile_edit_2.do", null);
	}
	
	@RequestMapping(value = "/mypage/mypg_profile_edit_2.do", method = RequestMethod.GET)
	public ModelAndView mypg_profile_edit_2(Locale locale, Model model) {
		return new ModelAndView("mypage/mypg_profile_edit_2"); 
	}
	
	@RequestMapping(value = "/mypage/mypg_profile_edit_2_ok.do", method = RequestMethod.GET)
	public ModelAndView mypg_profile_edit_2_ok(Locale locale, Model model) {
		web.init();
		return web.redirect(web.getRootPath() + "/mypage/mypg_profile_edit_2.do", "수정되었습니다.");
	}
	
	@RequestMapping(value = "/mypage/mypg_password_edit.do", method = RequestMethod.GET)
	public ModelAndView mypg_password_edit(Locale locale, Model model) {
		return new ModelAndView("mypage/mypg_password_edit"); 
	}
	
	@RequestMapping(value = "/mypage/mypg_password_edit_ok.do", method = RequestMethod.POST)
	public ModelAndView mypg_password_edit_ok(Locale locale, Model model, HttpServletRequest request, HttpServletResponse response) {
		web.init();
		
		Member loginInfo = (Member) web.getSession("loginInfo");
		
		String userPw = request.getParameter("now_pw");
		String newUserPw = request.getParameter("new_pw");
		String newUserPwRe = request.getParameter("new_pw_re");
		
		logger.info("userPw=" + userPw);
		logger.info("newUserPw=" + newUserPw);
		logger.info("newUserPwRe=" + newUserPwRe);
		
		if (!regex.isValue(userPw)) {	
			return web.redirect(null, "현재 비밀번호를 입력하세요.");		
		}

		if (regex.isValue(newUserPw)) {
			if (!regex.isEngNum(newUserPw) || newUserPw.length() > 20 || newUserPw.length() < 8) {			
				return web.redirect(null, "새로운 비밀번호는 숫자와 영문의 조합으로 20자까지만 가능합니다.");				
			}
	
			if (!newUserPw.equals(newUserPwRe)) {			
				return web.redirect(null, "비밀번호 확인이 잘못되었습니다.");			
			}
		}
		
		Member member = new Member();
		member.setId(loginInfo.getId());
		member.setUserPw(userPw);
		member.setNewUserPw(newUserPw);
		
		Member editInfo = null;
		try {
			memberService.selectMemberPasswordCount(member);
			memberService.updateMember(member);
			editInfo = memberService.selectMember(member);
		} catch (Exception e) {
			return web.redirect(null, e.getLocalizedMessage());
		}
		
		web.removeSession("loginInfo");
		web.setSession("loginInfo", editInfo);
		
		return web.redirect(web.getRootPath() + "mypage/mypg_password_edit", null);
	}
	
	@RequestMapping(value = "/mypage/mypg_withdraw.do", method = RequestMethod.GET)
	public ModelAndView mypg_withdraw(Locale locale, Model model) {
		return new ModelAndView("mypage/mypg_withdraw"); 
	}
	
	@RequestMapping(value = "/mypage/mypg_withdraw_ok.do", method = RequestMethod.GET)
	public ModelAndView mypg_withdraw_ok(Locale locale, Model model) {
		web.init();
		
		String userPw = web.getString("pswd_confirm");
		logger.info("userPw=" + userPw);
		
		Member loginInfo = (Member) web.getSession("loginInfo");
		Member member = new Member();
		member.setId(loginInfo.getId());
		member.setUserPw(userPw);
		
		try {
			memberService.selectMemberPasswordCount(member);
		} catch (Exception e) {
			return web.redirect(null, e.getLocalizedMessage());
		}
		
		return web.redirect(web.getRootPath() + "/mypage/mypg_withdraw_2.do", null);
	}
	
	@RequestMapping(value = "/mypage/mypg_withdraw_2.do", method = RequestMethod.GET)
	public ModelAndView mypg_withdraw_2(Locale locale, Model model) {
		return new ModelAndView("mypage/mypg_withdraw_2"); 
	}
	
	@RequestMapping(value = "/mypage/mypg_withdraw_2_ok.do", method = RequestMethod.GET)
	public ModelAndView mypg_withdraw_2_ok(Locale locale, Model model, HttpServletRequest request, HttpServletResponse response) {
		web.init();
		
		Member loginInfo = (Member) web.getSession("loginInfo");
		Member member = new Member();
		member.setId(loginInfo.getId());
		
		QnA qna = new QnA();
		qna.setMemberId(loginInfo.getId());
		
		try {
			qnaService.updateQnAMemberOut(qna);
			memberService.deleteMember(member);
		} catch (Exception e) {
			return web.redirect(null, e.getLocalizedMessage());
		}
		
		web.removeAllSession();
		return web.redirect(web.getRootPath(), "탈퇴되었습니다.");
	}
	
	@RequestMapping(value = "/mypage/mypg_withdraw_msg.do", method = RequestMethod.GET)
	public ModelAndView mypg_withdraw_msg(Locale locale, Model model) {
		return new ModelAndView("mypage/mypg_withdraw_msg");
	}
	
	@RequestMapping(value = "/mypage/mypg_qna.do", method = RequestMethod.GET)
	public ModelAndView mypg_qna(Locale locale, Model model) {	
		return new ModelAndView("mypage/mypg_qna");
	}

	@RequestMapping(value = "/mypage/mypg_qna_table.do", method = RequestMethod.GET)
	public ModelAndView mypg_qna_table(Locale locale, Model model) {
		web.init();
		
		Member loginInfo = (Member) web.getSession("loginInfo");
		
		QnA qna = new QnA();
		qna.setMemberId(loginInfo.getId());
		
		QnA qnaInfo = null;
		try {
			qnaInfo = qnaService.selectQnA(qna);
		} catch (Exception e) {
			return web.redirect(web.getRootPath() + "/mypage/mypg_qna.do", null);
		}
		
		model.addAttribute("qnaInfo", qnaInfo);
		
		return new ModelAndView("mypage/mypg_qna_table");
	}
	
	@RequestMapping(value = "/mypage/mypg_qna_2.do", method = RequestMethod.GET)
	public ModelAndView mypg_qna_2(Locale locale, Model model, HttpServletRequest request, HttpServletResponse response) {
		web.init();
		
		int id = web.getInt("id");
		logger.info("받아온 id는 >> " + id);
		model.addAttribute("id", id);
		
		QnA qna = new QnA();
		qna.setId(id);

		QnA qnaInfo = null;
		try {
			qnaInfo = qnaService.selectQnAById(qna);
		} catch (Exception e) {
			return web.redirect(web.getRootPath() + "/mypage/mypg_qna_2.do", null);
		}
		
		model.addAttribute("qnaInfo", qnaInfo);
		
		return new ModelAndView("mypage/mypg_qna_2");
	}
}
