<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:choose>
	<c:when test="${fn:length(reservInfo) > 0}">
		<c:forEach var="reserv" items="${reservInfo}">
			<tr>
				<td>${reserv.id}</td>
				<td>${reserv.hotelCate}</td>
				<td><a href="${pageContext.request.contextPath}/mypage/mypg_reservation_2.do?id=${reserv.id}" style="display: inline;">${reserv.roomType}</a></td>
				<td>${reserv.checkIn}</td>
				<td></td>
			</tr>
		</c:forEach>
	</c:when>
	<c:otherwise>
		<tr id="find-target">
			<td colspan="5">자료가 없습니다.</td>
		</tr>
	</c:otherwise>
</c:choose>