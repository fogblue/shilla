package iot5.project.shilla.admin;

import java.io.IOException;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.ServletException;

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
import iot5.project.shilla.model.File;
import iot5.project.shilla.model.Room;
import iot5.project.shilla.service.FileService;
import iot5.project.shilla.service.RoomService;

@Controller
public class AdminController {
	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);
	
	@Autowired
	WebHelper web;
	@Autowired
	UploadHelper upload;
	@Autowired
	RoomService roomService;
	@Autowired
	FileService fileService;
	
	@RequestMapping(value = "/admin/room_list.do", method = RequestMethod.GET)
	public ModelAndView roomList(Locale locale, Model model) {
		logger.info("Admin Page");
		String keyword = web.getString("keyword", "");
		
		Room room = new Room();
		/*room.setRoomNo(keyword);*/
		
		/** Service를 통한 SQL 수행 */
		// 조회결과를 저장하기 위한 객체
		List<Room> list = null;
		try {
			/*list = roomService.getProfessorJoinList(room);*/
		} catch (Exception e) {
			web.redirect(null, e.getLocalizedMessage());
			return null;
		}
		
		return new ModelAndView("admin/room_list");
	}
	
	@RequestMapping(value = "/admin/room_add.do", method = RequestMethod.GET)
	public ModelAndView roomAdd(Locale locale, Model model) {
		logger.info("Admin Page");

		return new ModelAndView("admin/room_add");
	}
	
	@RequestMapping(value = "/admin/room_add_ok.do", method = RequestMethod.POST)
	public ModelAndView roomAddOk(Locale locale, Model model) throws ServletException, IOException {

		web.init();

		/** 파일이 포함된 POST파라미터 받기 */
		try {
			upload.multipartRequest();
		} catch (Exception e) {
			return web.redirect(null, "multipart데이터가 아닙니다.");
		}

		/** UploadHelper에서 텍스트 형식의 값을 추출 */
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
	
		/** 입력받은 파라미터를 Beans로 묶기 */
		Room room = new Room();
		room.setHotelCate(hotelCate);
		room.setRoomType(roomType);
		room.setBedType(bedType);
		room.setRoomPrice(roomPrice);
		room.setRoomNo(roomNo);
		room.setPackageId(packageId);
		
		logger.debug("room >>" + room.toString());

		/** Service를 통한 게시물 저장 */
		try {
			roomService.insertRoom(room);
		} catch (Exception e) {
			return web.redirect(null, e.getLocalizedMessage());
		}
		
		/** 첨부 파일 목록 처리 */
		List<FileInfo> fileList = upload.getFileList();
		try {
			for (int i = 0; i < fileList.size(); i++) {
				FileInfo info = fileList.get(i);
				
				// DB에 저장하기 위한 항목 생성
				File file = new File();
				
				// 몇번 게시물에 속한 파일인지 저장한다.
				file.setRoomId(room.getId());
				
				file.setCategory("Room");
				file.setOriginName(info.getOrginName());
				file.setFileDir(info.getFileDir());
				file.setFileName(info.getFileName());
				file.setContentType(info.getContentType());
				file.setFileSize(info.getFileSize());
				fileService.insertFile(file);
			}
		} catch (Exception e) {
			return web.redirect(null, e.getLocalizedMessage());
		}
		
		/** 저장 완료 후 읽기 페이지로 이동하기 */
		return web.redirect(web.getRootPath() + "/admin/room_add.do", "객실 정보가 저장되었습니다.");
	}
	
	@RequestMapping(value = "/admin/room_view.do", method = RequestMethod.GET)
	public ModelAndView roomView(Locale locale, Model model) {
		/*int roomId = web.getInt("id");*/
		int roomId = 3;
		logger.debug("roomId=" + roomId);
		
		if (roomId == 0) {
			return web.redirect(null, "객실 번호가 없습니다.");
		}
		
		Room room = new Room();
		File file = new File();
		
		room.setId(roomId);
		file.setRoomId(roomId);
		
		List<File> fileList = null;
			
		try {
			room = roomService.selectRoom(room);
			fileList = fileService.selectRoomFileList(file);
		} catch (Exception e) {
			return web.redirect(null, e.getLocalizedMessage());
		}
		
		model.addAttribute("room", room);
		model.addAttribute("fileList", fileList);

		return new ModelAndView("admin/room_view");
	}

}
