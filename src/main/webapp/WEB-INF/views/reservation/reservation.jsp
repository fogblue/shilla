<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!doctype html>
<html>
<head>
<%@ include file="/WEB-INF/inc/head.jsp"%>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/rsv_reservation.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/rsv_roomselect.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/plugins/t-datepicker/t-datepicker.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/plugins/t-datepicker/t-datepicker-main.css">
<script src="${pageContext.request.contextPath}/assets/plugins/t-datepicker/t-datepicker.min.js"></script>
</head>
<body>
	<%@ include file="/WEB-INF/inc/topbar.jsp"%>
	<div class="container main">
		<%-- container start --%>
		<div class="rsv_step">
			<span class="rsv_stepimg">Step1. 날짜/인원/객실 선택 Step2. 옵션 선택
				Step3. 고객 정보 입력 Step4. 예약 완료 /확인</span>
		</div>
		<form method="post" action="${pageContext.request.contextPath}/reservation/reservation_ok.do">
		<div class="rsv_selectbox">
			<%-- select box start --%>
			<strong class="rsv_hotelselect_hangel">호텔선택</strong>
			<select class="rsv_hotelselect_dropdown" name="hotel_category">
				<option class="selected">서울신라호텔</option>
				<option>제주신라호텔</option>
			</select>
			<!-- Date picker 시작 -->
			<div class="t-datepicker">
				<div class="t-check-in"></div><!-- 세션저장값 -->
				<div class="t-check-out"></div><!-- 세션저장값 -->
			</div>
			<!-- Date picker 끝 -->
			<div class="rsv_personcount">										
				<div class="rsv_adult">
					<div class="rsv_pmbutton">
						<span>성인</span>
					</div>
					<input class="rsv_numbox" name="ppl_ad" id="numbox1" value="1"  style="border: none; background: #efefef;"></input><!-- 세션저장값 -->
					<div class="rsv_pmbotton2">
						<button type="button" class="rsv_plus 1234" id="plus1">+</button>
						<button type="button" class="rsv_minus 1234" id="minus1">-</button>
					</div>
				</div>			
				<div class="rsv_child">
					<div class="rsv_pmbutton">
						<span>어린이</span>
					</div>
					<input class="rsv_numbox" name="ppl_ch" id="numbox2" value="0"  style="border: none; background: #efefef;"></input><!-- 세션저장값 -->
					<div class="rsv_pmbotton2">
						<button type="button" class="rsv_plus 1234" id="plus2">+</button>
						<button type="button" class="rsv_minus 1234" id="minus2">-</button>
					</div>
				</div>			
				<div class="rsv_baby">
					<div class="rsv_pmbutton">
						<span>유아</span>
					</div>
					<input class="rsv_numbox" name="ppl_bb" id="numbox3" value="0"  style="border: none; background: #efefef;"></input><!-- 세션저장값 -->
					<div class="rsv_pmbotton2">
						<button type="button" class="rsv_plus 1234" id="plus3">+</button>
						<button type="button" class="rsv_minus 1234" id="minus3">-</button>
					</div>
				</div>	
			</div>
				<button type="submit" id="rsv_roomsearchbtn">검색</button>
		</div>
		</form>
				<table>
			<c:choose>
		        <c:when test="${fn:length(roomList) > 0}">
		        <div class="rsv_packagetextdiv">
		        	<p class="rsv_packagetextdiv_text2">할인이 적용된 요금입니다.</p>
		        </div>
		            <c:forEach var="roomList" items="${roomList}">
		            <form method="get" action="${pageContext.request.contextPath}/reservation/rsv_roomselect.do">
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
		                        <button class="rsv_roomchobtn" id="rsv_roomchobtn" type="submit">선택</button>
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
		        <c:when test="${fn:length(roomList) == 0}">
		        <div class="rsv_discriptionbox" id="rsv_contents_box2">
					<span class="rsv_discription">예약을 원하시는 호텔, 날짜, 인원을 선택 후 검색 버튼을
						눌러주세요.</span>
				</div>
				</c:when>
		        <c:otherwise>
		            <tr id="find-target">
		                <td>예약 가능한 객실이 없습니다.</td>
		            </tr>
		        </c:otherwise>
		    </c:choose>
		        </table>
	</div>

		<%-- selectbox end --%>
		
		
	
	<script type="text/javascript">
	
	
	$(function() {
		var number1 = parseInt($(this).find('#numbox1').val());
		var number2 = parseInt($(this).find('#numbox2').val());
		var number3 = parseInt($(this).find('#numbox3').val());
		var numbertotal = 0;
						
		$('.1234').click(function() {
			numbertotal = number1 + number2 + number3;
		});
					
		$('#plus1').click(function() {
			if (numbertotal == 4 || number1 == 3) {
				alert('객실 1실 당 성인과 소인 동반 시 최대 4인까지만 투숙 가능합니다.');
			} else {
				number1++;
			}
			$('#numbox1').val(number1);
		});
					
		$('#plus2').click(function() {
			if (numbertotal == 4 || number2 > 3) {
				alert('객실 1실 당 성인과 소인 동반 시 최대 4인까지만 투숙 가능합니다.');
			} else {
				number2++;
			}
			$('#numbox2').val(number2);
		});
						
		$('#plus3').click(function() {
			if (numbertotal == 4 || number3 > 3) {
				alert('객실 1실 당 성인과 소인 동반 시 최대 4인까지만 투숙 가능합니다.');
			} else {
				number3++;
			}
			$('#numbox3').val(number3);
		});
		
		$('#minus1').click(function() {
			if (number1 <= 1) {
				number1 = 1;
			} else {
				number1--;
			}
			$('#numbox1').val(number1);
		});
						
		$('#minus2').click(function() {
			if (number2 <= 0) {
				number2 = 0;
			} else {
				number2--;
			}
			$('#numbox2').val(number2);
		});
						
		$('#minus3').click(function() {
			if (number3 <= 0) {
				number3 = 0;
			} else {
				number3--;
			}
			$('#numbox3').val(number3);
		});  
	});
					
	$(function() {
		$("#rsv_roomsearchbtn").click(function(e) {
			$("#rsv_contents_box2").empty();
			$.ajax({
				url : "${pageContext.request.contextPath}/reservation/rsv_roomselect.do",
				method : "get",
				data : {},
				dataType : "html",
				success : function(req) {
					$("#rsv_contents_box2").append(req);
				}
			});
		});
	});
					
	$(document).ready(function() {
		$('.t-datepicker').tDatePicker({
			// auto close after selection
			autoClose : true,
			// animation speed in milliseconds
			durationArrowTop : 200,
			// the number of calendars
			numCalendar : 2,
			// localization
			titleCheckIn : '체크인 날짜를<br/>선택하세요.',
			titleCheckOut : '체크아웃 날짜를<br/>선택하세요.',
			titleToday : '오늘',
			titleDateRange : 'night',
			titleDateRanges : 'nights',
			titleDays : ['MON', 'TUE', 'WED', 'THU', 'FRI', 'SAT', 'SUN'],
			titleMonths : ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
			// the max length of the title
			titleMonthsLimitShow : 3,
			// replace moth names
			replaceTitleMonths : null,
			// e.g. 'dd-mm-yy'
			showDateTheme : null,
			// icon options
			iconArrowTop : true,
			iconDate : '&#x279C;',
			arrowPrev : '&#x276E;',
			arrowNext : '&#x276F;',
			// https://fontawesome.com/v4.7.0/icons/
			// iconDate: '<i class="li-calendar-empty"></i><i class="li-arrow-right"></i>',
			// arrowPrev: '<i class="fa fa-chevron-left"></i>',
			// arrowNext: '<i class="fa fa-chevron-right"></i>',
			// shows today title
			toDayShowTitle : true,
			// showss dange range title
			dateRangesShowTitle : true,
			// highlights today
			toDayHighlighted : false,
			// highlights next day
			nextDayHighlighted : false,
			// an array of days
			daysOfWeekHighlighted : [ 0, 6 ],
			// custom date format
			formatDate : 'yyyy-mm-dd',
			// dateCheckIn: '25/06/2018',  // DD/MM/YY
			// dateCheckOut: '26/06/2018', // DD/MM/YY
			dateCheckIn : null,
			dateCheckOut : null,
			startDate : null,
			endDate : null,
			// limits the number of months
			limitPrevMonth : 0,
			limitNextMonth : 11,
			// limits the number of days
			limitDateRanges : 31,
			// true -> full days || false - 1 day
			showFullDateRanges : false,
			// DATA HOLIDAYS
			// Data holidays
			fnDataEvent : null
		});
	});
	
	/* $("#rsv_roomsearchbtn").click(function(e) {
        $("#rsv_contents_box2").empty();
        $.get("${pageContext.request.contextPath}/test/reservation_test2.do", function(req) {
            $("#rsv_contents_box2").append(req);
        }, "html"); // end $.get 
    });*/
    </script>
    <%-- container end --%>
    <%@ include file="/WEB-INF/inc/footer.jsp"%>
</body>
</html>