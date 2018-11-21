package iot5.project.shilla.info;

import java.io.IOException;
import java.util.Locale;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import iot5.project.shilla.helper.UploadHelper;
import iot5.project.shilla.helper.WebHelper;

@Controller
public class Download {


	private static final Logger logger = LoggerFactory.getLogger(Download.class);
	@Autowired
	WebHelper web;
	@Autowired
	UploadHelper upload;
	
	@RequestMapping("/download.do")
	public ModelAndView download(Locale locale, Model model, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		/** 파라미터 받기 */
		String filePath = web.getString("file");
		String orginName = web.getString("orgin");
		
		/** 다운로드 스트림 출력하기 */
		if (filePath != null) {
			try {
				logger.debug("Create Thumbnail Image --> " + filePath);
				upload.printFileStream(filePath, orginName);
			} catch (IOException e) {
				logger.debug(e.getLocalizedMessage());
			}
		}
		return null;
	}

}
