<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<div class="container2">
	<table>
	<c:choose>
		<c:when test="${fn:length(roomList) > 0}">
			<c:forEach var="roomList" items="${roomList}">
				<tr>
					<form method="get" action="${pageContext.request.contextPath}/test/reservation_test2_ok.do">
						<td>${roomList.id}</td>
						<input type="hidden" name="id" id="id" value="${roomList.id}" />
						<td>${roomList.roomNo}</td>
						<input type="hidden" name="room_no" id="room_no" value="${roomList.roomNo}" />
						<td>${roomList.roomType}</td>
						<input type="hidden" name="room_type" id="room_type" value="${roomList.roomType}" />
						<td>${roomList.bedType}</td>
						<input type="hidden" name="bed_type" id="bed_type" value="${roomList.bedType}" />
						<td>${roomList.roomPrice}</td>
						<input type="hidden" name="room_price" id="room_price" value="${roomList.roomPrice}" />
						<td>${roomList.hotelCate}</td>
						<input type="hidden" name="hotel_cate" id="hotel_cate" value="${roomList.hotelCate}" />
						<td>
							<button type="submit">선택</button>
						</td>
						<input type="hidden" name="t-start" id="t-start" value="${roomInfo.checkIn}" />
						<input type="hidden" name="t-end" id="t-end" value="${roomInfo.checkOut}" />
						<input type="hidden" name="ppl_ad" id="ppl_ad" value="${guestInfo.pplAd}" />
						<input type="hidden" name="ppl_ch" id="ppl_ch" value="${guestInfo.pplCh}" />
						<input type="hidden" name="ppl_bb" id="ppl_bb" value="${guestInfo.pplBb}" />
					</form>					
				</tr>
			</c:forEach>
		</c:when>
		<c:otherwise>
			<tr id="find-target">
				<td colspan="7">예약 가능한 객실이 없습니다.</td>
			</tr>
		</c:otherwise>
	</c:choose>
	</table>
</div>