<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:choose>
	<c:when test="${qnaInfo} == null">
		<td colspan="6" id="find-target">자료가 없습니다.</td>
	</c:when>
	<c:otherwise>
		<td>${qnaInfo.id}</td>
		<td>${qnaInfo.hotelCate}</td>
		<td>${qnaInfo.ecategory}</td>
		<td><a href="${pageContext.request.contextPath}/mypage/mypg_qna_2.do?id=${qnaInfo.id}" style="display: inline;">${qnaInfo.subject}</a></td>
		<td>${qnaInfo.regDate}</td>
		<td></td>
	</c:otherwise>
</c:choose>