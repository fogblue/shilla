<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:choose>
	<c:when test="${reservInfo} == null">
		<td colspan="5" id="find-target">자료가 없습니다.</td>
	</c:when>
	<c:otherwise>
		<td>${reservInfo.id}</td>
		<td>${reservInfo.hotelCate}</td>
		<td><a href="${pageContext.request.contextPath}/mypage/mypg_reservation_2.do?id=${reservInfo.id}" style="display: inline;">${reservInfo.roomType}</a></td>
		<td>${reservInfo.checkIn}</td>
		<td></td>
	</c:otherwise>
</c:choose>