package iot5.project.shilla.sitemap;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import iot5.project.shilla.mypage.MypageController;

@Controller
public class SitemapController {
private static final Logger logger = LoggerFactory.getLogger(MypageController.class);
	
	@RequestMapping(value = "/sitemap/sitemap.do", method = RequestMethod.GET)
	public ModelAndView sitemap(Locale locale, Model model) {
		logger.info("사이트맵페이지 입장");
		return new ModelAndView("/sitemap/sitemap");
	}
}
