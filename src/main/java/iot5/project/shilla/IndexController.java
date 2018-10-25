package iot5.project.shilla;

import java.io.IOException;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.ServletException;
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

import iot5.project.shilla.helper.FileInfo;
import iot5.project.shilla.helper.UploadHelper;
import iot5.project.shilla.helper.WebHelper;
import iot5.project.shilla.model.Room;
import iot5.project.shilla.service.FileService;
import iot5.project.shilla.service.RoomService;

@Controller
public class IndexController {
	private static final Logger logger = LoggerFactory.getLogger(IndexController.class);
	
	@Autowired
	WebHelper web;
	@Autowired
	UploadHelper upload;
	@Autowired
	RoomService roomService;
	@Autowired
	FileService fileService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView index(Locale locale, Model model) {
		logger.info("대문입장");
		return new ModelAndView("index");
	}
	
	@RequestMapping(value = "/mem_policy.do", method = RequestMethod.GET)
	public ModelAndView policy(Locale locale, Model model) {
		logger.info("개인정보");
		
		return new ModelAndView("mem_policy");
	}
	
	@RequestMapping(value = "/room_add.do", method = RequestMethod.GET)
	public ModelAndView room(Locale locale, Model model) {
		logger.info("Admin Page");

		return new ModelAndView("room_add");
	}
	
	@RequestMapping(value = "/room_add_ok.do", method = RequestMethod.POST)
	public ModelAndView roomAddOk(Locale locale, Model model, HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		web.init();

		/** 파일이 포함된 POST파라미터 받기 */
		try {
			upload.multipartRequest();
		} catch (Exception e) {
			return web.redirect(null, "multipart데이터가 아닙니다.");
		}

		/** (4)UploadHelper에서 텍스트 형식의 값을 추출 */
		Map<String, String> paramMap = upload.getParamMap();
		String hotelCate = paramMap.get("hotel_cate");
		int roomNo = Integer.parseInt(paramMap.get("room_no"));
		String roomType = paramMap.get("room_type");
		String bedType = paramMap.get("bed_type");
		int roomPrice = Integer.parseInt(paramMap.get("room_price"));
		int packageId =  Integer.parseInt(paramMap.get("package_id"));
		
		logger.debug("hotel_cate=" + hotelCate);
		logger.debug("room_type=" + roomType);
		logger.debug("bed_type=" + bedType);
		logger.debug("room_price=" + roomPrice);
		logger.debug("room_no=" + roomNo);
		logger.debug("packageId=" + packageId);
		
		List<FileInfo> fileList = upload.getFileList();
		// 업로드 된 프로필 사진 경로가 저장될 변수
		String roomImg = null;

		// 업로드 된 파일이 존재할 경우만 변수값을 할당한다.
		if (fileList.size() > 0) {
			// 단일 업로드이므로 0번째 항목만 가져온다.
			FileInfo info = fileList.get(0);
			roomImg = info.getFileDir() + "/" + info.getFileName();
		}

		// 파일경로를 로그로 기록
		logger.debug("roomImg=" + roomImg);
		

		/** (8)입력받은 파라미터를 Beans로 묶기 */
		Room room = new Room();
		room.setHotelCate(hotelCate);
		room.setRoomType(roomType);
		room.setBedType(bedType);
		room.setRoomPrice(roomPrice);
		room.setRoomImg(roomImg);
		room.setRoomNo(roomNo);
		room.setPackageId(packageId);
		
		logger.debug("room >>" + room.toString());

		/** Service를 통한 게시물 저장 */
		try {
			roomService.insertRoom(room);
		} catch (Exception e) {
			return web.redirect(null, e.getLocalizedMessage());
		}
		
		/** (11)저장 완료 후 읽기 페이지로 이동하기 */
		return web.redirect(web.getRootPath() + "/room_add.do", "객실 정보가 저장되었습니다.");
	}
}
