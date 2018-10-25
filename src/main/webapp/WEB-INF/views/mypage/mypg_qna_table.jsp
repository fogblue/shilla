<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:choose>
	<c:when test="${fn:length(qnaInfo) > 0}">
		<c:forEach var="qna" items="${qnaInfo}">
			<tr>
				<td>${qna.id}</td>
				<td>${qna.hotelCate}</td>
				<td>${qna.ecategory}</td>
				<td><a href="${pageContext.request.contextPath}/mypage/mypg_qna_2.do?id=${qna.id}" style="display: inline;">${qna.subject}</a></td>
				<td>${qna.regDate}</td>
				<td></td>
			</tr>
		</c:forEach>
	</c:when>
	<c:otherwise>
		<tr id="find-target">
			<td colspan="6">자료가 없습니다.</td>
		</tr>
	</c:otherwise>
</c:choose>