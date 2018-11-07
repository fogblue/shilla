package iot5.project.shilla;

import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import iot5.project.shilla.helper.UploadHelper;
import iot5.project.shilla.helper.WebHelper;
import iot5.project.shilla.model.Reservation;
import iot5.project.shilla.model.ResvGuest;
import iot5.project.shilla.model.Room;
import iot5.project.shilla.model.RoomForReserv;
import iot5.project.shilla.service.ReservService;
import iot5.project.shilla.service.RoomService;

@Controller
public class TestController {
	private static final Logger logger = LoggerFactory.getLogger(TestController.class);
	
	@Autowired
	WebHelper web;
	@Autowired
	UploadHelper upload;
	@Autowired
	RoomService roomService;
	@Autowired
	ReservService reservService;
	
	@RequestMapping(value = "/test/reservation_test.do", method = RequestMethod.GET)
	public ModelAndView reservation_test(Locale locale, Model model) {
		web.init();

		return new ModelAndView("test/reservation_test");
	}

	@RequestMapping(value = "/test/reservation_test2.do", method = RequestMethod.GET)
	public ModelAndView reservation_test2(Locale locale, Model model) {
		web.init();

		return new ModelAndView("test/reservation_test2");
	}
	
	@RequestMapping(value = "/test/reservation_test_ok.do", method = RequestMethod.GET)
	public ModelAndView reservationTestOk(Locale locale, Model model) {
		web.init();
		
		String hotelCate = web.getString("hotel_category");
		String tStart = web.getString("t-start");
		String tEnd = web.getString("t-end");

		RoomForReserv room = new RoomForReserv();
		room.setHotelCate(hotelCate);
		room.setCheckIn(tStart);
		room.setCheckOut(tEnd);
		
		logger.info("hotelCate=" + hotelCate);
		logger.info("tStart=" + tStart);
		logger.info("tEnd=" + tEnd);

		int pplAd = web.getInt("ppl_ad");
		int pplCh = web.getInt("ppl_ch");
		int pplBb = web.getInt("ppl_bb");
		
		ResvGuest guest = new ResvGuest();
		guest.setPplAd(pplAd);
		guest.setPplCh(pplCh);
		guest.setPplBb(pplBb);
		
		logger.info("pplAd=" + pplAd);
		logger.info("pplCh=" + pplCh);
		logger.info("pplBb=" + pplBb);
		
		
		List<RoomForReserv> roomList = null;
		
		try {
			roomList = roomService.getRoomList(room);
		} catch (Exception e) {
			return web.redirect(null, e.getLocalizedMessage());
		}
		model.addAttribute("roomInfo", room);
		model.addAttribute("guestInfo", guest);
		model.addAttribute("roomList", roomList);
		
		return new ModelAndView("test/reservation_test2");
	}
	
	@RequestMapping(value = "/test/reservation_test2_ok.do", method = RequestMethod.GET)
	public ModelAndView reservationTest2Ok(Locale locale, Model model) {
		web.init();
		
		String hotelCate = web.getString("hotel_category");
		String tStart = web.getString("t-start");
		String tEnd = web.getString("t-end");
		int pplAd = web.getInt("ppl_ad");
		int pplCh = web.getInt("ppl_ch");
		int pplBb = web.getInt("ppl_bb");
		
		logger.info("hotelCate=" + hotelCate);
		logger.info("tStart=" + tStart);
		logger.info("tEnd=" + tEnd);
		logger.info("pplAd=" + pplAd);
		logger.info("pplCh=" + pplCh);
		logger.info("pplBb=" + pplBb);
		
		int roomId = web.getInt("id");
		int roomNo = web.getInt("room_no");
		String roomType = web.getString("room_type");
		String bedType = web.getString("bed_type");
		int roomPrice = web.getInt("room_price");

		logger.info("roomId=" + roomId);
		logger.info("roomNo=" + roomNo);
		logger.info("roomType=" + roomType);
		logger.info("bedType=" + bedType);
		logger.info("roomPrice=" + roomPrice);
		
		Reservation reserv = new Reservation();
		reserv.setHotelCate(hotelCate);
		reserv.setCheckIn(tStart);
		reserv.setCheckOut(tEnd);
		reserv.setPplAd(pplAd);
		reserv.setPplCh(pplCh);
		reserv.setPplBb(pplBb);
		reserv.setRoomId(roomId);
		reserv.setRoomNo(roomNo);
		reserv.setRoomType(roomType);
		reserv.setBedType(bedType);
		reserv.setRoomPrice(roomPrice);
		
		model.addAttribute("reservInfo", reserv);
		
		return new ModelAndView("test/reserv_test");
	}
	
	@RequestMapping(value = "/mypage/reserv_test.do", method = RequestMethod.GET)
	public ModelAndView reserv_test(Locale locale, Model model, HttpServletRequest request, HttpServletResponse response) {
		web.init();
		
		return new ModelAndView("test/reserv_test");
	}
	
	@RequestMapping(value = "/mypage/reserv_test_ok.do", method = RequestMethod.POST)
	public ModelAndView reserv_test_ok(Locale locale, Model model, HttpServletRequest request, HttpServletResponse response) {
		web.init();
		
		int memberId = web.getInt("member_id");
		String checkIn = request.getParameter("check_in");
		String checkOut = request.getParameter("check_out");
		String hotelCate = request.getParameter("hotel_category");
		int roomNo = web.getInt("room_no");
		int pplAd = web.getInt("ppl_ad");
		int pplCh = web.getInt("ppl_ch");
		int pplBb = web.getInt("ppl_bb");
		String roomType = request.getParameter("room_type");
		String bedType = request.getParameter("bed_type");
		int exbed = web.getInt("exbed");
		int meal = web.getInt("meal");
		String cardNo = request.getParameter("card_no");
		String cardType = request.getParameter("card_type");
		int cardYy = web.getInt("card_yy");
		int cardMm = web.getInt("card_mm");
		String detail = request.getParameter("detail");
		String resvDate = request.getParameter("resv_date");
		
		/** 객실 번호로 객실 정보 조회 */
		Room room = new Room();
		room.setRoomNo(roomNo);
		
		try {
			room = roomService.selectRoom(room);
		} catch (Exception e) {
			return web.redirect(null, e.getLocalizedMessage());
		}
		
		RoomForReserv reserv = new RoomForReserv();
		reserv.setRoomId(room.getId());
		reserv.setRoomPrice(room.getRoomPrice());
		reserv.setMemberId(memberId);
		reserv.setCheckIn(checkIn);
		reserv.setCheckOut(checkOut);
		reserv.setHotelCate(hotelCate);
		reserv.setRoomNo(roomNo);
		reserv.setPplAd(pplAd);
		reserv.setPplCh(pplCh);
		reserv.setPplBb(pplBb);
		reserv.setRoomType(roomType);
		reserv.setBedType(bedType);
		reserv.setExbed(exbed);
		reserv.setMeal(meal);
		reserv.setCardNo(cardNo);
		reserv.setCardType(cardType);
		reserv.setCardYy(cardYy);
		reserv.setCardMm(cardMm);
		reserv.setDetail(detail);
		reserv.setResvDate(resvDate);

		/** 객실 정보 입력 */
		try {
			reservService.insertReservRoom(reserv);
		} catch (Exception e) {
			return web.redirect(null, e.getLocalizedMessage());
		}
		
		/** 예약 번호로 객실 정보 불러오기 */
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
