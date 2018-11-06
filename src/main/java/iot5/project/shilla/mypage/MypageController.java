package iot5.project.shilla.mypage;

import java.util.List;
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

import iot5.project.shilla.helper.PageHelper;
import iot5.project.shilla.helper.RegexHelper;
import iot5.project.shilla.helper.UploadHelper;
import iot5.project.shilla.helper.WebHelper;
import iot5.project.shilla.model.File;
import iot5.project.shilla.model.Member;
import iot5.project.shilla.model.QnA;
import iot5.project.shilla.model.Reservation;
import iot5.project.shilla.model.ResvGuest;
import iot5.project.shilla.model.ResvRoom;
import iot5.project.shilla.model.Room;
import iot5.project.shilla.service.FileService;
import iot5.project.shilla.service.MemberService;
import iot5.project.shilla.service.QnAService;
import iot5.project.shilla.service.ReservService;
import iot5.project.shilla.service.RoomService;

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
	@Autowired
	FileService fileService;
	@Autowired
	PageHelper pageHelper;
	@Autowired
	RoomService roomService;
	
	private static final Logger logger = LoggerFactory.getLogger(MypageController.class);
	
	@RequestMapping(value = "/mypage/mypg_main.do", method = RequestMethod.GET)
	public ModelAndView mypg_main(Locale locale, Model model) {	
		web.init();
		return new ModelAndView("mypage/mypg_main");
	}
	
	@RequestMapping(value = "/mypage/mypg_reservation.do", method = RequestMethod.GET)
	public ModelAndView mypg_reservation(Locale locale, Model model) {	
		web.init();
		
		Member loginInfo = (Member) web.getSession("loginInfo");
		
		ResvRoom resvroom = new ResvRoom();
		try {
			resvroom.setMemberId(loginInfo.getId());
		} catch (Exception e) {
			return web.redirect(web.getRootPath() + "/member/log_main.do", "로그인 후 이용 가능한 서비스입니다.");
		}
		int page = web.getInt("page", 1);
		
		int totalCount = 0;
		
		List<ResvRoom> reservInfo = null;
		try {
			totalCount = reservService.selectReservationCount(resvroom);
			pageHelper.pageProcess(page, totalCount, 10, 5);
			reservInfo = reservService.selectReservList(resvroom);
		} catch (Exception e) {
			return web.redirect(web.getRootPath() + "/mypage/mypg_reservation.do", null);
		}
		
		model.addAttribute("reservInfo", reservInfo);
		
		model.addAttribute("pageHelper", pageHelper);
		
		int maxPageNo = pageHelper.getTotalCount() - (pageHelper.getPage() -1) * pageHelper.getListCount();
		model.addAttribute("maxPageNo", maxPageNo);
		
		return new ModelAndView("mypage/mypg_reservation");
	}
	
	@RequestMapping(value = "/mypage/mypg_reservation_table.do", method = RequestMethod.GET)
	public ModelAndView mypg_reservation_table(Locale locale, Model model) {
		web.init();
		return new ModelAndView("mypage/mypg_reservation_table");
	}
	
	@RequestMapping(value = "/mypage/mypg_reservation_2.do", method = RequestMethod.GET)
	public ModelAndView mypg_reservation_2(Locale locale, Model model, HttpServletRequest request, HttpServletResponse response) {
		web.init();
		
		int id = web.getInt("id");
		logger.info("받아온 id는 >> " + id);
		model.addAttribute("id", id);
		
		ResvRoom resvroom = new ResvRoom();
		ResvGuest resvguest = new ResvGuest();
		resvroom.setId(id);
		resvguest.setResvRoomId(id);
		
		try {
			resvroom = reservService.selectReservRById(resvroom);
			resvguest = reservService.selectReservGById(resvguest);
		} catch (Exception e) {
			return web.redirect(web.getRootPath() + "/mypage/mypg_reservation_2.do", null);
		}
		
		Room room = new Room();
		
		room.setRoomNo(resvroom.getRoomNo());
		
		try {
			room = roomService.selectRoom(room);
		} catch (Exception e) {
			return web.redirect(null, e.getLocalizedMessage());
		}
		
		model.addAttribute("reservRInfo", resvroom);
		model.addAttribute("reservGInfo", resvguest);
		model.addAttribute("roomInfo", room);
		
		return new ModelAndView("mypage/mypg_reservation_2");
	}
	
	@RequestMapping(value = "/mypage/mypg_profile_edit.do", method = RequestMethod.GET)
	public ModelAndView mypg_profile_edit(Locale locale, Model model) {
		web.init();
		return new ModelAndView("mypage/mypg_profile_edit"); 
	}
	
	@RequestMapping(value = "/mypage/mypg_profile_edit_ok.do", method = RequestMethod.POST)
	public ModelAndView mypg_profile_edit_ok(Locale locale, Model model, HttpServletRequest request, HttpServletResponse response) {
		web.init();
		
		String userPw = request.getParameter("pswd_confirm");
		logger.info("입력한 패스워드는 >> " + userPw);
		
		if (!regex.isValue(userPw)) {
			return web.redirect(null, "비밀번호를 확인 후 다시 입력하세요.");		
		}
		
		Member loginInfo = (Member) web.getSession("loginInfo");
		Member member = new Member();
		member.setId(loginInfo.getId());
		member.setUserPw(userPw);

		try {
			memberService.selectMemberPasswordCount(member);
		} catch (Exception e) {
			return web.redirect(null, e.getLocalizedMessage());
		}
		
		return web.redirect(web.getRootPath() + "/mypage/mypg_profile_edit_2.do", null);
	}
	
	@RequestMapping(value = "/mypage/mypg_profile_edit_2.do", method = RequestMethod.GET)
	public ModelAndView mypg_profile_edit_2(Locale locale, Model model) {
		web.init();
		return new ModelAndView("mypage/mypg_profile_edit_2"); 
	}
	
	@RequestMapping(value = "/mypage/mypg_profile_edit_echk.do", method = RequestMethod.POST)
	public ModelAndView mypg_profile_edit_echk(Locale locale, Model model, HttpServletRequest request, HttpServletResponse response) {
		web.init();
		
		String newEmail = request.getParameter("email");
		logger.info("입력한 이메일은 >> " + newEmail);
		model.addAttribute("email", newEmail);
		
		if (!regex.isValue(newEmail)) {
			return web.redirect(null, "이메일을 입력하세요.");
		}
		if (!regex.isEmail(newEmail)) {
			return web.redirect(null, "이메일의 형식이 잘못되었습니다.");
		}
		
		Member member = new Member();
		member.setEmail(newEmail);
		int result = 0;
		try {
			result = memberService.selectEmailCheck(member);
		} catch (Exception e) {
			return web.redirect(null, e.getLocalizedMessage());
		}
		
		if (result > 0) {
			return web.redirect(null, "이미 사용중인 이메일 입니다.");
		}
		
		return web.redirect(null, "사용가능한 이메일 입니다.");
	}
	
	@RequestMapping(value = "/mypage/mypg_profile_edit_2_echk.do", method = RequestMethod.POST)
	public ModelAndView mypg_profile_edit_2_echk(Locale locale, Model model, HttpServletRequest request, HttpServletResponse response) {
		web.init();
		
		Member loginInfo = (Member) web.getSession("loginInfo");
		
		String email = loginInfo.getEmail();		
		String newEmail = request.getParameter("email");
		logger.info("기존의 이메일은 >> " + email);
		logger.info("입력한 이메일은 >> " + newEmail);
		
		if (!regex.isValue(newEmail)) {
			return web.redirect(null, "이메일을 입력하세요.");
		}
		if (!regex.isEmail(newEmail)) {
			return web.redirect(null, "이메일의 형식이 잘못되었습니다.");
		}
		
		Member member = new Member();
		member.setEmail(newEmail);
		int result = 0;
		try {
			result = memberService.selectEmailCheck(member);
		} catch (Exception e) {
			return web.redirect(null, e.getLocalizedMessage());
		}
		
		if (result > 0) {
			return web.redirect(null, "이미 사용중인 이메일 입니다.");
		}
		
		return web.redirect(null, "사용가능한 이메일 입니다.");
	}
	
	@RequestMapping(value = "/mypage/mypg_profile_edit_2_ok.do", method = RequestMethod.POST)
	public ModelAndView mypg_profile_edit_2_ok(Locale locale, Model model, HttpServletRequest request, HttpServletResponse response) {
		web.init();
		
		String echk = request.getParameter("emailDuplication");
		logger.info("echk의 값은 >> " + echk);
		if (!echk.equals("uncheck")) {
			return web.redirect(null, "이메일 중복확인을 해주세요.");
		}
		
		Member loginInfo = (Member) web.getSession("loginInfo");
		
		String email = loginInfo.getEmail();
		String newEmail = request.getParameter("email");
		String tel = loginInfo.getTel();
		String newTel = request.getParameter("tel");
		String agree1 = request.getParameter("agree1");
		String agree2 = request.getParameter("agree2");
		logger.info("기존의 이메일은 >> " + email);
		logger.info("입력한 이메일은 >> " + newEmail);
		logger.info("기존의 연락처는 >> " + tel);
		logger.info("입력한 연락처는 >> " + newTel);
		logger.info("수신동의1 >> " + agree1);
		logger.info("수신동의2 >> " + agree2);
		
		// 이메일 검사
		if (!regex.isValue(newEmail)) {
			return web.redirect(null, "이메일을 입력하세요.");
		}
		if (!regex.isEmail(newEmail)) {
			return web.redirect(null, "이메일의 형식이 잘못되었습니다.");
		}
		// 연락처 검사
		if (!regex.isValue(newTel)) {
			return web.redirect(null, "연락처를 입력하세요.");
		}
		if (!regex.isCellPhone(newTel) && !regex.isTel(newTel)) {
			return web.redirect(null, "연락처의 형식이 잘못되었습니다.");
		}
		
		if (!email.equals(newEmail) && tel.equals(newTel)) {
			Member member = new Member();
			member.setId(loginInfo.getId());
			member.setEmail(newEmail);
			member.setTel(tel);
			member.setAgree1(agree1);
			member.setAgree2(agree2);
			
			Member editInfo = null;
			try {
				/*memberService.selectEmailCount(member);*/
				memberService.updateMemberET(member);
				editInfo = memberService.selectMember(member);
			} catch (Exception e) {
				return web.redirect(null, e.getLocalizedMessage());
			}
			
			web.removeSession("loginInfo");
			web.setSession("loginInfo", editInfo);
		} else if (email.equals(newEmail) && !tel.equals(newTel)) {
			Member member = new Member();
			member.setId(loginInfo.getId());
			member.setEmail(email);
			member.setTel(newTel);
			member.setAgree1(agree1);
			member.setAgree2(agree2);
			
			Member editInfo = null;
			try {
				memberService.selectTelCount(member);
				memberService.updateMemberET(member);
				editInfo = memberService.selectMember(member);
			} catch (Exception e) {
				return web.redirect(null, e.getLocalizedMessage());
			}
			
			web.removeSession("loginInfo");
			web.setSession("loginInfo", editInfo);		
		} else if (email.equals(newEmail) && tel.equals(newTel)) {
			return web.redirect(null, "변경된 내용이 없습니다.");
		}
		
		return web.redirect(web.getRootPath() + "/mypage/mypg_profile_edit_2.do", "수정되었습니다.");
	}
	
	@RequestMapping(value = "/mypage/mypg_password_edit.do", method = RequestMethod.GET)
	public ModelAndView mypg_password_edit(Locale locale, Model model) {
		web.init();
		return new ModelAndView("mypage/mypg_password_edit"); 
	}
	
	@RequestMapping(value = "/mypage/mypg_password_edit_ok.do", method = RequestMethod.POST)
	public ModelAndView mypg_password_edit_ok(Locale locale, Model model, HttpServletRequest request, HttpServletResponse response) {
		web.init();
		
		String userPw = request.getParameter("now_pw");
		String newUserPw = request.getParameter("new_pw");
		String newUserPwRe = request.getParameter("new_pw_re");
		logger.info("userPw=" + userPw);
		logger.info("newUserPw=" + newUserPw);
		logger.info("newUserPwRe=" + newUserPwRe);
		
		if (!regex.isValue(userPw)) {	
			return web.redirect(null, "기존 비밀번호를 입력하세요.");		
		}
		
		if (!regex.isValue(newUserPw)) {	
			return web.redirect(null, "새 비밀번호를 입력하세요.");		
		}

		if (regex.isValue(newUserPw)) {
			if (!regex.isEngNum(newUserPw) || newUserPw.length() > 20 || newUserPw.length() < 8) {			
				return web.redirect(null, "비밀번호는 8~20자 사이의 숫자와 영문 조합만 가능합니다.");				
			}
	
			if (!newUserPw.equals(newUserPwRe)) {			
				return web.redirect(null, "비밀번호 확인이 잘못되었습니다.");			
			}
		}

		Member loginInfo = (Member) web.getSession("loginInfo");
		Member member = new Member();
		member.setId(loginInfo.getId());
		member.setUserPw(userPw);
		
		try {
			memberService.selectMemberPasswordCount(member);
		} catch (Exception e) {
			return web.redirect(null, e.getLocalizedMessage());
		}
		
		member.setUserPw(newUserPw);
		Member editInfo = null;
		try {
			memberService.updateMemberPasswordById(member);
			editInfo = memberService.selectMember(member);
		} catch (Exception e) {
			return web.redirect(null, e.getLocalizedMessage());
		}
		
		web.removeSession("loginInfo");
		web.setSession("loginInfo", editInfo);
		
		return web.redirect(web.getRootPath() + "/mypage/mypg_password_edit.do", "비밀번호 변경이 완료되었습니다.");
	}
	
	@RequestMapping(value = "/mypage/mypg_withdraw.do", method = RequestMethod.GET)
	public ModelAndView mypg_withdraw(Locale locale, Model model) {
		web.init();
		return new ModelAndView("mypage/mypg_withdraw"); 
	}
	
	@RequestMapping(value = "/mypage/mypg_withdraw_ok.do", method = RequestMethod.POST)
	public ModelAndView mypg_withdraw_ok(Locale locale, Model model, HttpServletRequest request, HttpServletResponse response) {
		web.init();
		
		String userPw = request.getParameter("pswd_confirm");
		logger.info("입력한 패스워드는 >> " + userPw);
		
		if (!regex.isValue(userPw)) {
			return web.redirect(null, "비밀번호를 확인 후 다시 입력하세요.");		
		}
		
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
		web.init();
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
		web.init();
		return new ModelAndView("mypage/mypg_withdraw_msg");
	}
	
	@RequestMapping(value = "/mypage/mypg_qna.do", method = RequestMethod.GET)
	public ModelAndView mypg_qna(Locale locale, Model model) {
		web.init();
		
		Member loginInfo = (Member) web.getSession("loginInfo");
		
		QnA qna = new QnA();
		qna.setMemberId(loginInfo.getId());
		
		int page = web.getInt("page", 1);
		
		int totalCount = 0;

		List<QnA> qnaInfo = null;
		try {
			totalCount = qnaService.selectQnACount(qna);
			pageHelper.pageProcess(page, totalCount, 10, 5);
			qnaInfo = qnaService.selectQnAList(qna);
		} catch (Exception e) {
			return web.redirect(web.getRootPath() + "/mypage/mypg_qna.do", null);
		}
		
		model.addAttribute("qnaInfo", qnaInfo);
		model.addAttribute("pageHelper", pageHelper);
		
		int maxPageNo = pageHelper.getTotalCount() - (pageHelper.getPage() -1) * pageHelper.getListCount();
		model.addAttribute("maxPageNo", maxPageNo);
		
		return new ModelAndView("mypage/mypg_qna");
	}

	@RequestMapping(value = "/mypage/mypg_qna_table.do", method = RequestMethod.GET)
	public ModelAndView mypg_qna_table(Locale locale, Model model) {
		web.init();
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

		File file = new File();
		file.setQnaId(qna.getId());
		
		QnA qnaInfo = null;
		List<File> fileList = null;
		try {
			qnaInfo = qnaService.selectQnAById(qna);
			fileList = fileService.selectQnAFileList(file);
		} catch (Exception e) {
			return web.redirect(web.getRootPath() + "/mypage/mypg_qna_2.do", null);
		}
		
		model.addAttribute("qnaInfo", qnaInfo);
		model.addAttribute("fileList", fileList);
		
		return new ModelAndView("mypage/mypg_qna_2");
	}
	
	@RequestMapping(value = "/mypage/reserv_test.do", method = RequestMethod.GET)
	public ModelAndView reserv_test(Locale locale, Model model, HttpServletRequest request, HttpServletResponse response) {
	web.init();
	
	return new ModelAndView("mypage/reserv_test");
	}
	
	@RequestMapping(value = "/mypage/reserv_test_ok.do", method = RequestMethod.POST)
	public ModelAndView reserv_test_ok(Locale locale, Model model, HttpServletRequest request, HttpServletResponse response) {
	web.init();
	
	String roomNo = request.getParameter("room_no");
	String checkIn = request.getParameter("check_in");
	String checkOut = request.getParameter("check_out");
	String roomType = request.getParameter("room_type");
	String packageType = request.getParameter("package_type");
	String bedType = request.getParameter("bed_type");
	String resvDate = request.getParameter("resv_date");
	String hotelCate = request.getParameter("hotel_category");
	String cardNo = request.getParameter("card_no");
	String cardType = request.getParameter("card_type");
	String detail = request.getParameter("detail");
	int exbed = web.getInt("exbed");
	int meal = web.getInt("meal");
	int totalPrice = web.getInt("total_price");
	int memberId = web.getInt("member_id");
	int cardYy = web.getInt("card_yy");
	int cardMm = web.getInt("card_mm");
	int pplAd = web.getInt("ppl_ad");
	int pplCh = web.getInt("ppl_ch");
	int pplBb = web.getInt("ppl_bb");

	Reservation reserv = new Reservation();	
	reserv.setRoomNo(Integer.parseInt(roomNo));
	reserv.setCheckIn(checkIn);
	reserv.setCheckOut(checkOut);
	reserv.setRoomType(roomType);
	reserv.setPackageType(packageType);
	reserv.setBedType(bedType);
	reserv.setExbed(exbed);
	reserv.setMeal(meal);
	reserv.setTotalPrice(totalPrice);
	reserv.setResvDate(resvDate);
	reserv.setMemberId(memberId);
	reserv.setHotelCate(hotelCate);
	reserv.setCardNo(cardNo);
	reserv.setCardType(cardType);
	reserv.setCardMm(cardMm);
	reserv.setCardYy(cardYy);
	reserv.setPplAd(pplAd);
	reserv.setPplCh(pplCh);
	reserv.setPplBb(pplBb);
	reserv.setDetail(detail);

	/** 객실 정보 입력 */
	try {
		reservService.insertReservRoom(reserv);
	} catch (Exception e) {
		return web.redirect(null, e.getLocalizedMessage());
	}
		
	/** 예약 번호 불러오기 */
	Reservation id = new Reservation();
	try {
		id = reservService.selectReserv(reserv);
	} catch (Exception e) {
		return web.redirect(null, e.getLocalizedMessage());
	}
	
	reserv.setResvRoomId(id.getRoomId());
	
	/** 예약 번호 불러오기 */
	try {
		reservService.insertReservGuest(reserv);
	} catch (Exception e) {
		return web.redirect(null, e.getLocalizedMessage());
	}
	
	return web.redirect(web.getRootPath() + "/mypage/reserv_test.do", "예약이 접수되었습니다.");
	}
}
