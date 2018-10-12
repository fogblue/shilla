package iot5.project.shilla.mypage;

import java.util.Locale;

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
import iot5.project.shilla.service.MemberService;
import iot5.project.shilla.service.QnAService;

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
	
	private static final Logger logger = LoggerFactory.getLogger(MypageController.class);
	
	@RequestMapping(value = "/mypage/mypg_reservation.do", method = RequestMethod.GET)
	public ModelAndView mypg_reservation(Locale locale, Model model) {
		logger.debug("예약확인페이지 입장");
		return new ModelAndView("mypage/mypg_reservation");
	}
	
	@RequestMapping(value = "/mypage/mypg_reservation_2.do", method = RequestMethod.GET)
	public ModelAndView mypg_reservation_2(Locale locale, Model model) {
		logger.debug("예약상세확인페이지 입장");
		return new ModelAndView("mypage/mypg_reservation_2");
	}
	
	@RequestMapping(value = "/mypage/mypg_profile_edit.do", method = RequestMethod.GET)
	public ModelAndView mypg_profile_edit(Locale locale, Model model) {
		logger.debug("프로필변경페이지 입장");
		return new ModelAndView("mypage/mypg_profile_edit"); 
	}
	
	@RequestMapping(value = "/mypage/mypg_profile_edit_ok.do", method = RequestMethod.GET)
	public ModelAndView mypg_profile_edit_ok(Locale locale, Model model) {
		web.init();
		
		
		
		return web.redirect(web.getRootPath() + "/mypage/mypg_profile_edit_2.do", null);
	}
	
	@RequestMapping(value = "/mypage/mypg_profile_edit_2.do", method = RequestMethod.GET)
	public ModelAndView mypg_profile_edit_2(Locale locale, Model model) {
		logger.debug("프로필변경확인페이지 입장");
		return new ModelAndView("mypage/mypg_profile_edit_2"); 
	}
	
	@RequestMapping(value = "/mypage/mypg_profile_edit_2_ok.do", method = RequestMethod.GET)
	public ModelAndView mypg_profile_edit_2_ok(Locale locale, Model model) {
		web.init();
		
		
		
		return web.redirect(web.getRootPath(), "수정되었습니다.");
	}
	
	@RequestMapping(value = "/mypage/mypg_password_edit.do", method = RequestMethod.GET)
	public ModelAndView mypg_password_edit(Locale locale, Model model) {
		logger.debug("비밀번호변경페이지 입장");
		return new ModelAndView("mypage/mypg_password_edit"); 
	}
	
	@RequestMapping(value = "/mypage/mypg_withdraw.do", method = RequestMethod.GET)
	public ModelAndView mypg_withdraw(Locale locale, Model model) {
		logger.debug("회원탈퇴페이지 입장");
		return new ModelAndView("mypage/mypg_withdraw"); 
	}
	
	@RequestMapping(value = "/mypage/mypg_withdraw_ok.do", method = RequestMethod.GET)
	public ModelAndView mypg_withdraw_ok(Locale locale, Model model) {
		web.init();
		
		String userPw = web.getString("pswd_confirm");
		logger.debug("userPw=" + userPw);
		
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
		logger.debug("회원탈퇴확인페이지 입장");
		return new ModelAndView("mypage/mypg_withdraw_2"); 
	}
	
	@RequestMapping(value = "/mypage/mypg_withdraw_2_ok.do", method = RequestMethod.GET)
	public ModelAndView mypg_withdraw_2_ok(Locale locale, Model model) {
		web.init();
		
		Member loginInfo = (Member) web.getSession("loginInfo");
		Member member = new Member();
		member.setId(loginInfo.getId());
		
		QnA qna = new QnA();
		qna.setMemberId(loginInfo.getId());
		
		try {
			QnAService.updateQnA(qna);
			memberService.deleteMember(member);
		} catch (Exception e) {
			return web.redirect(null, e.getLocalizedMessage());
		}
		
		web.removeAllSession();
		return web.redirect(web.getRootPath(), "탈퇴되었습니다.");
	}
	
	@RequestMapping(value = "/mypage/mypg_withdraw_msg.do", method = RequestMethod.GET)
	public ModelAndView mypg_withdraw_msg(Locale locale, Model model) {
		logger.debug("회원탈퇴확인메시지출력");
		return new ModelAndView("mypage/mypg_withdraw_msg");
	}
	
	@RequestMapping(value = "/mypage/mypg_qna.do", method = RequestMethod.GET)
	public ModelAndView mypg_qna(Locale locale, Model model) {
		logger.debug("문의확인페이지 입장");
		return new ModelAndView("mypage/mypg_qna");
	}
}
