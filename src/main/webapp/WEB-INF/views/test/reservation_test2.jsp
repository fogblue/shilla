<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<head>
<%@ include file="/WEB-INF/inc/head.jsp"%>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/rsv_reservation.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/rsv_roomselect.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/index.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/plugins/youcover/youCover.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/plugins/lightbox/css/lightbox.min.css" />
<script src="${pageContext.request.contextPath}/assets/js/regex.js"></script>
</head>
<div class="rsv_room1menu">

    <table>
    <c:choose>
        <c:when test="${fn:length(roomList) > 0}">
        
            <div class="rsv_packagetextdiv">
            <p class="rsv_packagetextdiv_text"></p>
                        <p class="rsv_packagetextdiv_text2">할인이 적용된 요금입니다.</p>
                        </div>
            <c:forEach var="roomList" items="${roomList}">
            <form method="get" action="${pageContext.request.contextPath}/test/reservation_test2.do">
                <tr>
                    <td class="rsv_roomlist2" style="width:50px; height: 50px;">${roomList.id}</td>
                    <td><input type="hidden" name="id" id="id" value="${roomList.id}" /></td>
                    <td class="rsv_roomlist2" style="width:50px; height: 50px;">${roomList.roomNo}</td>
                    <td><input type="hidden" name="room_no" id="room_no" value="${roomList.roomNo}" /></td>
                    <td class="rsv_roomlist2" style="width:100px; height: 50px;">${roomList.roomType}</td>
                    <td><input type="hidden" name="room_type" id="room_type" value="${roomList.roomType}" /></td>
                    <td class="rsv_roomlist2" style="width:200px; height: 50px;">${roomList.bedType}</td>
                    <td><input type="hidden" name="bed_type" id="bed_type" value="${roomList.bedType}" /></td>
                    <td class="rsv_roomlist2" style="width:200px; height: 50px;">${roomList.roomPrice}</td>
                    <td><input type="hidden" name="room_price" id="room_price" value="${roomList.roomPrice}" /></td>
                    <td class="rsv_roomlist2" style="width:200px; height: 50px;">${roomList.hotelCate}</td>
                    <td><input type="hidden" name="hotel_category" id="hotel_cate" value="${roomList.hotelCate}" /><td>
                    <td><a href="#" class="rsv_roommorebtn btn btn-warning" data-toggle="modal" data-target="#myModal9">객실 자세히 보기</a></td>
                    <td>
                        <button class="rsv_roomchobtn" type="submit">선택</button>
                    </td>
                </tr>
                <input type="hidden" name="t-start" id="t-start" value="${roomInfo.checkIn}" />
                <input type="hidden" name="t-end" id="t-end" value="${roomInfo.checkOut}" />
                <input type="hidden" name="ppl_ad" id="ppl_ad" value="${guestInfo.pplAd}" />
                <input type="hidden" name="ppl_ch" id="ppl_ch" value="${guestInfo.pplCh}" />
                <input type="hidden" name="ppl_bb" id="ppl_bb" value="${guestInfo.pplBb}" />
                </form>
            </c:forEach>    
        </c:when>
        <c:otherwise>
            <tr id="find-target">
                <td>예약 가능한 객실이 없습니다.</td>
            </tr>
        </c:otherwise>
    </c:choose>
        </table>
        </div>
        </div>