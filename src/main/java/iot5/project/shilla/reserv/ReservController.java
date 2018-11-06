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
import iot5.project.shilla.model.ResvGuest;
import iot5.project.shilla.model.Room;
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
	
	@RequestMapping(value = "/reservation/reservation.do", method = RequestMethod.GET)
	public ModelAndView reservation(Locale locale, Model model) {
		web.init();
			 
	/*	Reservation roomInfo = null;
		Reservation guestInfo = null;

		try {
			loginInfo = memberService.selectLoginInfo(member);
		} catch (Exception e) {
			return web.redirect(null, e.getLocalizedMessage());
		}

		web.setSession("reservation", reservation);*/

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
	}
	
	@RequestMapping(value = "/reservation/reservation2.do", method = RequestMethod.GET)
	public ModelAndView reservation2(Locale locale, Model model) {
		web.init();
		
		return new ModelAndView("reservation/reservation2");
	}
	
	@RequestMapping(value = "/reservation/reservation3.do", method = RequestMethod.GET)
	public ModelAndView reservation3(Locale locale, Model model) {
		web.init();

		return new ModelAndView("reservation/reservation3");
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