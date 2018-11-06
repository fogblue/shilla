<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<div class="container2">
	<table>
	<c:choose>
		<c:when test="${fn:length(roomList) > 0}">
			<c:forEach var="room" items="${roomList}">
				<tr>
					<td>${room.id}</td>
					<td>${room.roomNo}</td>
					<td>${room.roomType}</td>
					<td>${room.bedType}</td>
					<td>${room.roomPrice}</td>
					<td>${room.hotelCate}</td>
				</tr>
			</c:forEach>
		</c:when>
		<c:otherwise>
			<tr id="find-target">
				<td colspan="6">예약 가능한 객실이 없습니다.</td>
			</tr>
		</c:otherwise>
	</c:choose>
	</table>
</div>