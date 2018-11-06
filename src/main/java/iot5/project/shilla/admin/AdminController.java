package iot5.project.shilla.admin;

import java.io.IOException;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.ServletException;
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

import iot5.project.shilla.helper.FileInfo;
import iot5.project.shilla.helper.PageHelper;
import iot5.project.shilla.helper.RegexHelper;
import iot5.project.shilla.helper.UploadHelper;
import iot5.project.shilla.helper.WebHelper;
import iot5.project.shilla.model.File;
import iot5.project.shilla.model.Member;
import iot5.project.shilla.model.QnA;
import iot5.project.shilla.model.Room;
import iot5.project.shilla.service.FileService;
import iot5.project.shilla.service.MemberService;
import iot5.project.shilla.service.QnAService;
import iot5.project.shilla.service.ReservService;
import iot5.project.shilla.service.RoomService;

@Controller
public class AdminController {
	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);

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
	

	@RequestMapping(value = "/admin/room_list.do", method = RequestMethod.GET)
	public ModelAndView roomList(Locale locale, Model model) throws ServletException, IOException {
		logger.info("Admin Page");

		web.init();

		// 검색어 파라미터 받기 + Beans 설정
		String keyword = web.getString("keyword", "");

		Room room = new Room();
		room.setRoomType(keyword);

		// 현재 페이지 번호에 대한 파라미터 받기
		int nowPage = web.getInt("page", 1);

		// 전체 데이터 수 조회하기
		int totalCount = 0;
		try {
			totalCount = roomService.getRoomCount(room);
		} catch (Exception e) {
			return web.redirect(null, e.getLocalizedMessage());
		}

		pageHelper.pageProcess(nowPage, totalCount, 10, 5);
		room.setLimitStart(pageHelper.getLimitStart());
		room.setListCount(pageHelper.getListCount());

		/** Service를 통한 SQL 수행 */
		// 조회결과를 저장하기 위한 객체
		List<Room> list = null;
		try {
			list = roomService.getRoomList(room);
		} catch (Exception e) {
			return web.redirect(null, e.getLocalizedMessage());
		}

		model.addAttribute("list", list);
		model.addAttribute("pageHelper", pageHelper);
		model.addAttribute("keyword", keyword);

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
		int packageId = Integer.parseInt(paramMap.get("package_id"));

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
		web.init();

		int roomId = web.getInt("id");
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

	@RequestMapping(value = "/admin/admin.do", method = RequestMethod.GET)
	public ModelAndView admin(Locale locale, Model model) {
		logger.info("Admin Page");

		return new ModelAndView("admin");
	}

	@RequestMapping(value = "/admin/enqanswer.do", method = RequestMethod.GET)
	public ModelAndView enqanswer(Locale locale, Model model) {
		logger.info("Admin Page");
		web.init();

		Member loginInfo = (Member) web.getSession("loginInfo");

		QnA qna = new QnA();
		qna.setMemberId(loginInfo.getId());

		List<QnA> qnaInfo = null;
		try {
			qnaInfo = qnaService.selectQnAList(qna);
		} catch (Exception e) {
			return web.redirect(web.getRootPath() + "/admin/enqanswer.do", null);
		}

		model.addAttribute("qnaInfo", qnaInfo);

		return new ModelAndView("admin/enqanswer");
	}
	@RequestMapping(value = "/admin/enqanswer_table.do", method = RequestMethod.GET)
	public ModelAndView mypg_qna_table(Locale locale, Model model) {
		web.init();
		return new ModelAndView("admin/enqanswer_table");
	}

	@RequestMapping(value = "/admin/enqanswer_2.do", method = RequestMethod.GET)
	public ModelAndView enqanswer_2(Locale locale, Model model, HttpServletRequest request, HttpServletResponse response) {
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
			return web.redirect(web.getRootPath() + "/admin/enqanswer_2.do", null);
		}

		model.addAttribute("qnaInfo", qnaInfo);
		model.addAttribute("fileInfo", fileList);

		return new ModelAndView("admin/enqanswer_2");
	}

	@RequestMapping(value = "/admin/package_add.do", method = RequestMethod.GET)

	public ModelAndView packageAdd(Locale locale, Model model) {
		logger.info("Admin Page");

		return new ModelAndView("admin/package_add");
	}

	@RequestMapping(value = "/admin/package_add_ok.do", method = RequestMethod.POST)
	public ModelAndView packageAddOk(Locale locale, Model model, HttpServletRequest request)
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
		int packageId = Integer.parseInt(paramMap.get("package_id"));

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
		room.setRoomNo(roomNo);

		logger.debug("room >>" + room.toString());

		/** Service를 통한 게시물 저장 */
		try {
			roomService.insertRoom(room);
		} catch (Exception e) {
			return web.redirect(null, e.getLocalizedMessage());
		}

		/** (11)저장 완료 후 읽기 페이지로 이동하기 */
		return web.redirect(web.getRootPath() + "/admin/package_add.do", "패키지 정보가 저장되었습니다.");
	}


}
