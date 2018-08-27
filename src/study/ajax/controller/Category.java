package study.ajax.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

import study.ajax.model.CategoryItem;

@WebServlet("/api/category.do")
public class Category extends HttpServlet {
	private static final long serialVersionUID = -7633185553778077154L;

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("application/json");
		
		String type = request.getParameter("type");
		
		List<CategoryItem> list = new ArrayList<CategoryItem>();

		switch (type) {
		case "sshihot":
			list.add(new CategoryItem("sshihot01", "객실/패키지문의"));
			list.add(new CategoryItem("sshihot02", "다이닝문의"));
			list.add(new CategoryItem("sshihot03", "웨딩문의"));
			list.add(new CategoryItem("sshihot04", "연회/회의문의"));
			list.add(new CategoryItem("sshihot05", "홈페이지문의"));
			break;
		case "jshihot":
			list.add(new CategoryItem("jshihot01", "객실/패키지문의"));
			list.add(new CategoryItem("jshihot02", "연회/회의문의"));
			list.add(new CategoryItem("jshihot03", "홈페이지문의"));
			break;
		}

		// JSON형식의 문자열 만들기
		JSONObject json = new JSONObject();
		json.put("item", list);
		response.getWriter().print(json);
	}

}
