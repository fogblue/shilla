package iot5.project.shilla.reserv;

import java.util.List;
import java.util.Locale;
import java.util.Map;

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

import iot5.project.shilla.helper.FileInfo;
import iot5.project.shilla.helper.UploadHelper;
import iot5.project.shilla.helper.WebHelper;
import iot5.project.shilla.model.Member;
import iot5.project.shilla.model.Reservation;
import iot5.project.shilla.model.ResvGuest;
import iot5.project.shilla.model.Room;
import iot5.project.shilla.model.RoomForReserv;
import iot5.project.shilla.service.ReservService;
import iot5.project.shilla.service.RoomService;

@Controller
public class ReservController {
	private static final Logger logger = LoggerFactory.getLogger(ReservController.class);
	@Autowired
	WebHelper web;
	@Autowired
	SqlSession sqlSession;
	@Autowired
	RoomService roomService;
	@Autowired
	UploadHelper upload;
	@Autowired
	ReservService reservService;
	
	@RequestMapping(value = "/reservation/reservation.do", method = RequestMethod.GET)
	public ModelAndView reservation(Locale locale, Model model) {
		web.init();
						
		return new ModelAndView("reservation/reservation");
	}
	
	@RequestMapping(value = "/reservation/reservation_ok.do", method = RequestMethod.POST)
	public ModelAndView reservation_ok(Locale locale, Model model, HttpServletRequest request) {
		web.init();
		
		String hotelCate = request.getParameter("hotel_category");
		String tStart = request.getParameter("t-start");
		String tEnd = request.getParameter("t-end");
		int pplAd = web.getInt("ppl_ad");
		int pplCh = web.getInt("ppl_ch");
		int pplBb = web.getInt("ppl_bb");

		RoomForReserv room = new RoomForReserv();
		room.setHotelCate(hotelCate);
		room.setCheckIn(tStart);
		room.setCheckOut(tEnd);
		ResvGuest guest = new ResvGuest();
		guest.setPplAd(pplAd);
		guest.setPplCh(pplCh);
		guest.setPplBb(pplBb);
		
		logger.info("hotelCate=" + hotelCate);
		logger.info("tStart=" + tStart);
		logger.info("tEnd=" + tEnd);
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
		
		return new ModelAndView("reservation/reservation");

	}
	
	/*@RequestMapping(value = "/reservation/rsv_roomselect.do", method = RequestMethod.GET)
	public ModelAndView rsv_roomselect(Locale locale, Model model) {
		web.init();
		
		Room room = new Room();
		List<Room> RoomList = null;
		
		try	{
			RoomList = roomService.getRoomListNW(room);
		} catch (Exception e) {
			return web.redirect(web.getRootPath() + "/reservation/rsv_roomselect.do", null);
		}
		
		model.addAttribute("RoomList", RoomList);

		return new ModelAndView("reservation/rsv_roomselect");
	}*/
	
	@RequestMapping(value = "/reservation/rsv_roomselect.do", method = RequestMethod.GET)
	public ModelAndView rsv_roomselect(Locale locale, Model model) {
		web.init();
		
		String hotelCate = web.getString("hotel_category");
		String tStart = web.getString("t-start");
		String tEnd = web.getString("t-end");
		int pplAd = web.getInt("ppl_ad");
		int pplCh = web.getInt("ppl_ch");
		int pplBb = web.getInt("ppl_bb");
		int roomId = web.getInt("id");
		int roomNo = web.getInt("room_no");
		String roomType = web.getString("room_type");
		String bedType = web.getString("bed_type");
		int roomPrice = web.getInt("room_price");
		
		logger.info("hotelCate=" + hotelCate);
		logger.info("tStart=" + tStart);
		logger.info("tEnd=" + tEnd);
		logger.info("pplAd=" + pplAd);
		logger.info("pplCh=" + pplCh);
		logger.info("pplBb=" + pplBb);

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
		
		return new ModelAndView("reservation/rsv_roomselect");
	}
	
	@RequestMapping(value = "/reservation/reservation2.do", method = RequestMethod.GET)
	public ModelAndView reservation2(Locale locale, Model model) {
		web.init();
		
		String hotelCate = web.getString("hotel_category");
		String tStart = web.getString("t-start");
		String tEnd = web.getString("t-end");
		int roomId = web.getInt("id");
		int roomNo = web.getInt("room_no");
		String roomType = web.getString("room_type");
		String bedType = web.getString("bed_type");
		int roomPrice = web.getInt("room_price");
		int pplAd = web.getInt("ppl_ad");
		int pplCh = web.getInt("ppl_ch");
		int pplBb = web.getInt("ppl_bb");
		
		Reservation reserv = new Reservation();
		reserv.setHotelCate(hotelCate);
		reserv.setCheckIn(tStart);
		reserv.setCheckOut(tEnd);
		reserv.setRoomId(roomId);
		reserv.setRoomNo(roomNo);
		reserv.setRoomType(roomType);
		reserv.setBedType(bedType);
		reserv.setRoomPrice(roomPrice);
		reserv.setPplAd(pplAd);
		reserv.setPplCh(pplCh);
		reserv.setPplBb(pplBb);
		
		logger.info("hotelCate=" + hotelCate);
		logger.info("tStart=" + tStart);
		logger.info("tEnd=" + tEnd);
		logger.info("pplAd=" + pplAd);
		logger.info("pplCh=" + pplCh);
		logger.info("pplBb=" + pplBb);
		logger.info("roomId=" + roomId);
		logger.info("roomNo=" + roomNo);
		logger.info("roomType=" + roomType);
		logger.info("bedType=" + bedType);
		logger.info("roomPrice=" + roomPrice);
		
		model.addAttribute("reservInfo", reserv);
		return new ModelAndView("reservation/reservation2");
	}
	
	
	
	
	
	@RequestMapping(value = "/reservation/reservation3.do", method = RequestMethod.GET)
	public ModelAndView reservation3(Locale locale, Model model) {
		web.init();
		
		String hotelCate = web.getString("hotel_category");
		String tStart = web.getString("t-start");
		String tEnd = web.getString("t-end");
		int roomId = web.getInt("id");
		int roomNo = web.getInt("room_no");
		String roomType = web.getString("room_type");
		String bedType = web.getString("bed_type");
		int roomPrice = web.getInt("room_price");
		int pplAd = web.getInt("ppl_ad");
		int pplCh = web.getInt("ppl_ch");
		int pplBb = web.getInt("ppl_bb");
		int meal = web.getInt("meal");
		int exbed = web.getInt("exbed");
		String detail = web.getString("detail");
		
		logger.info("hotelCate=" + hotelCate);
		logger.info("tStart=" + tStart);
		logger.info("tEnd=" + tEnd);
		logger.info("pplAd=" + pplAd);
		logger.info("pplCh=" + pplCh);
		logger.info("pplBb=" + pplBb);
		logger.info("roomId=" + roomId);
		logger.info("roomNo=" + roomNo);
		logger.info("roomType=" + roomType);
		logger.info("bedType=" + bedType);
		logger.info("roomPrice=" + roomPrice);
		logger.info("meal >> " + meal);
		logger.info("exbed >> " + exbed);
		
		Reservation reserv = new Reservation();
		reserv.setHotelCate(hotelCate);
		reserv.setCheckIn(tStart);
		reserv.setCheckOut(tEnd);
		reserv.setRoomId(roomId);
		reserv.setRoomNo(roomNo);
		reserv.setRoomType(roomType);
		reserv.setBedType(bedType);
		reserv.setRoomPrice(roomPrice);
		reserv.setPplAd(pplAd);
		reserv.setPplCh(pplCh);
		reserv.setPplBb(pplBb);
		reserv.setMeal(meal);
		reserv.setExbed(exbed);
		reserv.setDetail(detail);
		
		model.addAttribute("reservInfo", reserv);
		return new ModelAndView("reservation/reservation3");
	}
	
	@RequestMapping(value = "/reservation/reservation3_ok.do", method = RequestMethod.POST)
	public ModelAndView reservation3_ok(Locale locale, Model model, HttpServletRequest request) {
		web.init();
		Member loginInfo = (Member) web.getSession("loginInfo");
		
		String hotelCate = request.getParameter("hotel_category");
		String tStart = request.getParameter("t-start");
		String tEnd = request.getParameter("t-end");
		int roomId = Integer.parseInt(request.getParameter("id"));
		int roomNo = Integer.parseInt(request.getParameter("room_no"));
		String roomType = request.getParameter("room_type");
		String bedType = request.getParameter("bed_type");
		int roomPrice = Integer.parseInt(request.getParameter("room_price"));
		int pplAd = Integer.parseInt(request.getParameter("ppl_ad"));
		int pplCh = Integer.parseInt(request.getParameter("ppl_ch"));
		int pplBb = Integer.parseInt(request.getParameter("ppl_bb"));
		int meal = Integer.parseInt(request.getParameter("meal"));
		int exbed = Integer.parseInt(request.getParameter("exbed"));
		String detail = request.getParameter("detail");
		String cardType = request.getParameter("card_type");
		String cardNo = request.getParameter("card_no");
		int cardYy = Integer.parseInt(request.getParameter("card_yy"));
		int cardMm = web.getInt("card_mm");
		
		RoomForReserv reserv = new RoomForReserv();
		reserv.setMemberId(loginInfo.getId());
		reserv.setHotelCate(hotelCate);
		reserv.setCheckIn(tStart);
		reserv.setCheckOut(tEnd);
		reserv.setRoomId(roomId);
		reserv.setRoomNo(roomNo);
		reserv.setRoomType(roomType);
		reserv.setBedType(bedType);
		reserv.setRoomPrice(roomPrice);
		reserv.setPplAd(pplAd);
		reserv.setPplCh(pplCh);
		reserv.setPplBb(pplBb);
		reserv.setMeal(meal);
		reserv.setExbed(exbed);
		reserv.setDetail(detail);
		reserv.setCardType(cardType);
		reserv.setCardNo(cardNo);
		reserv.setCardYy(cardYy);
		reserv.setCardMm(cardMm);
		
		logger.info("hotelCate=" + hotelCate);
		logger.info("tStart=" + tStart);
		logger.info("tEnd=" + tEnd);
		logger.info("pplAd=" + pplAd);
		logger.info("pplCh=" + pplCh);
		logger.info("pplBb=" + pplBb);
		logger.info("roomId=" + roomId);
		logger.info("roomNo=" + roomNo);
		logger.info("roomType=" + roomType);
		logger.info("bedType=" + bedType);
		logger.info("roomPrice=" + roomPrice);
		logger.info("meal >> " + meal);
		logger.info("exbed >> " + exbed);
		
		/*try {
			reservService.insertReservation(reserv);
		} catch (Exception e) {
			return web.redirect(null, e.getLocalizedMessage());
		}*/
		
		/** 객실 정보 입력 */
		try {
			reservService.insertReservRoom(reserv);
		} catch (Exception e) {
			return web.redirect(null, e.getLocalizedMessage());
		}
				
		/** 예약 번호로 객실 정보 불러오기 */
		RoomForReserv id = new RoomForReserv();
		try {
			id = reservService.selectReserv(reserv);
		} catch (Exception e) {
			return web.redirect(null, e.getLocalizedMessage());
		}
	
		reserv.setResvRoomId(id.getId());
		
		/** 예약 번호 불러오기 */
		try {
			reservService.insertReservGuest(reserv);
		} catch (Exception e) {
			return web.redirect(null, e.getLocalizedMessage());
		}
		
		model.addAttribute("reservInfo", reserv);
		return web.redirect(web.getRootPath() + "/reservation/reservation4.do", "객실입력이 완료되었습니다.");
	}
	
	
	@RequestMapping(value = "/reservation/reservation4.do", method = RequestMethod.GET)
	public ModelAndView reservation4(Locale locale, Model model) {
		web.init();

		return new ModelAndView("reservation/reservation4");
	}
	
	@RequestMapping(value = "/reservation/rsv_roominsert.do", method = RequestMethod.GET)
	public ModelAndView rsv_roominsert(Locale locale, Model model) {
		web.init();

		return new ModelAndView("reservation/rsv_roominsert");
	}
	
	@RequestMapping(value = "/reservation/rsv_roominsert_ok.do", method = RequestMethod.POST)
	public ModelAndView rsv_roominsert_ok(Locale locale, Model model) {
		web.init();

		/** (4) 파일이 포함된 POST 파라미터 받기 */
		// <form>태그 안에 <input type="file">요소가 포함되어 있고,
		// <form>태그에 enctype="multipart/form-data"가 정의되어 있는 경우
		// WebHelper의 getString()|getInt() 메서드는 더 이상 사용할 수 없게 된다.
		try {
			upload.multipartRequest();
		} catch (Exception e) {
			return web.redirect(null, "multipart 데이터가 아닙니다.");
		}
		
		// UploadHelper에서 텍스트 형식의 파라미터를 분류한 Map을 리턴받아서 값을 추출한다.
		Map<String, String> paramMap = upload.getParamMap();
		int roomNo = Integer.parseInt(paramMap.get("room_no"));
		String roomType = paramMap.get("room_type");
		String bedType = paramMap.get("bed_type");
		int roomPrice = Integer.parseInt(paramMap.get("room_price"));
		/*String roomImg = paramMap.get("room_img");*/
		int packageId = Integer.parseInt(paramMap.get("package_id"));
		String hotelCate = paramMap.get("hotel_category");
		
		// 전달받은 파라미터는 값의 정상여부 확인을 위해서 로그로 확인
		logger.debug("roomNo=" + roomNo);
		logger.debug("roomType=" + roomType);
		logger.debug("bedType=" + bedType);
		logger.debug("roomPrice=" + roomPrice);
		/*logger.debug("roomImg=" + roomImg);*/
		logger.debug("packageId=" + packageId);
		logger.debug("hotelCate=" + hotelCate);
		
		/** (6) 업로드 된 파일 정보 추출 */
		List<FileInfo> fileList = upload.getFileList();
		// 업로드 된 프로필 사진 경로가 저장될 변수
		String roomImage = null;

		// 업로드 된 파일이 존재할 경우만 변수값을 할당한다.
		if (fileList.size() > 0) {
			// 단일 업로드이므로 0번째 항목만 가져온다.
			FileInfo info = fileList.get(0);
			roomImage = info.getFileDir() + "/" + info.getFileName();
		}

		// 파일경로를 로그로 기록
		logger.debug("roomImage=" + roomImage);
		
		/** (7) 전달받은 파라미터를 Beans 객체에 담는다. */
		Room room = new Room();
		room.setRoomNo(roomNo);
		room.setRoomType(roomType);
		room.setBedType(bedType);
		room.setRoomPrice(roomPrice);
		/*room.setRoomImg(roomImg);*/
		room.setHotelCate(hotelCate);
		
		/** (8) Service를 통한 데이터베이스 저장 처리 */
		try {
			roomService.insertRoom(room);
		} catch (Exception e) {
			return web.redirect(null, e.getLocalizedMessage());
		}
		
		return web.redirect(web.getRootPath() + "/reservation/rsv_roominsert.do", "객실입력이 완료되었습니다.");
	}
}