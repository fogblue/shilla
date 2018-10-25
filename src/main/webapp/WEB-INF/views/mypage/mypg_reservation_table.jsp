<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:choose>
	<c:when test="${resvInfo} == null">
		<td colspan="5" id="find-target">자료가 없습니다.</td>
	</c:when>
	<c:otherwise>
		<td>${resvInfo.id}</td>
		<td>${resvInfo.hotelCate}</td>
		<td><a href="${pageContext.request.contextPath}/mypage/mypg_reservation_2.do?id=${resvInfo.id}" style="display: inline;">${resvInfo.roomType}</a></td>
		<td>${resvInfo.checkIn}</td>
		<td></td>
	</c:otherwise>
</c:choose>