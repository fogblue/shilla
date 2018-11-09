<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!doctype html>
<html>
<head>
	<%@ include file="/WEB-INF/inc/head.jsp" %>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/mypage.css">
</head>
<body>
	<%@ include file="/WEB-INF/inc/topbar.jsp" %>
	<!-- ============시작================== -->
	<div class="mypg-container main">
		<div class="sidebar">
			<div class="sidebar-cont">
				<div class="bdb">
					<h3>마이페이지</h3>
				</div>
				<div class="mypg-sidebar-menu">
					<a href="${pageContext.request.contextPath}/mypage/mypg_reservation.do" class="mypg-sidebar-open">예약 확인/취소<img src="${pageContext.request.contextPath}/assets/img/sidebar_arr.gif" class="sidebar-arrow"></a>
					<a>개인정보</a>
					<a href="${pageContext.request.contextPath}/mypage/mypg_profile_edit.do">프로필 수정</a>
					<a href="${pageContext.request.contextPath}/mypage/mypg_password_edit.do">비밀번호 변경</a>
					<a href="${pageContext.request.contextPath}/mypage/mypg_withdraw.do">회원 탈퇴 요청</a>
					<a href="${pageContext.request.contextPath}/mypage/mypg_qna.do">문의 내역</a>
				</div>
			</div>
		</div>
		<div class="mypg-contents">
			<div class="mypg-bdb2 mypg-contents-header">
				<h3>예약확인/취소</h3>
				<div class="pull-right mypg-loc"><span class="glyphicon glyphicon-home"></span>&nbsp;&nbsp;&nbsp;>&nbsp;&nbsp;&nbsp;My Page&nbsp;&nbsp;&nbsp;>&nbsp;&nbsp;&nbsp;<span class="mypg-loc-txt">예약 확인/취소</span></div>
			</div>
			<div class="mypg-contents-txt">
				<p>객실 및 패키지 예약 내역을 확인하실 수 있습니다.</p>
			</div>
			<div class="mypg-rsvt-bd">
				<div>
					<form action="${pageContext.request.contextPath}/mypage/mypg_reservation_search.do" method="get">
					<span>기간조회</span>
					<button type="button" class="btn mypg-rsvt-whole" onclick="location.href='${pageContext.request.contextPath}/mypage/mypg_reservation.do'">전체</button>
					<input type="text" id="datepickerS" name="datepickerS" /><a href="#" id="show-cal-s"><img src="${pageContext.request.contextPath}/assets/img/btnCalendar.gif" width="20" height="30"></a>
					<span> ~ </span>
					<input type="text" id="datepickerE" name="datepickerE" /><a href="#" id="show-cal-e"><img src="${pageContext.request.contextPath}/assets/img/btnCalendar.gif" width="20" height="30"></a>
					<button type="submit" class="btn mypg-rsvt-find" id="find">조회</button>
					</form>
				</div>
				<div class="mypg-contents-table">
					<h4 class="mypg-bdb">객실 / 패키지 예약</h4>
					<div>
						<p>Total&nbsp;:&nbsp;<c:choose><c:when test="${fn:length(reservBDInfo) > 0}">${fn:length(reservBDInfo)}</c:when><c:otherwise>${fn:length(reservInfo)}</c:otherwise></c:choose></p>
						<table class="mypg-rsvt-contents-table">
							<tr class="rsvt-table-title">
								<td>예약번호</td>
								<td>호텔</td>
								<td>객실/패키지</td>
								<td>체크인/체크아웃</td>
								<td>예약상태</td>
							</tr>
							<c:choose>
								<c:when test="${fn:length(reservBDInfo) > 0}">
									<c:forEach var="reserv" items="${reservBDInfo}">
										<tr>
											<td>${maxPageNo}</td>
											<td>${reserv.hotelCate}</td>
											<td><a href="${pageContext.request.contextPath}/mypage/mypg_reservation_2.do?id=${reserv.id}" style="display: inline;">${reserv.roomType}</a></td>
											<td>${reserv.checkIn}&nbsp;/&nbsp;${reserv.checkOut}</td>
											<td style="color: #ff0000;"></td>
										</tr>
										<c:set var="maxPageNo" value="${maxPageNo-1}" />
									</c:forEach>
								</c:when>
								<c:when test="${fn:length(reservInfo) > 0}">
									<c:forEach var="reserv" items="${reservInfo}">
										<tr>
											<td>${maxPageNo}</td>
											<td>${reserv.hotelCate}</td>
											<td><a href="${pageContext.request.contextPath}/mypage/mypg_reservation_2.do?id=${reserv.id}" style="display: inline;">${reserv.roomType}</a></td>
											<td>${reserv.checkIn}&nbsp;/&nbsp;${reserv.checkOut}</td>
											<td style="color: #ff0000;"></td>
										</tr>
										<c:set var="maxPageNo" value="${maxPageNo-1}" />
									</c:forEach>
								</c:when>
								<c:otherwise>
									<tr id="find-target">
										<td colspan="5">자료가 없습니다.</td>
									</tr>
								</c:otherwise>
							</c:choose>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<script type="text/javascript">
    $(function() {
        $("#datepickerS").datepicker({
            autoHide: true, // 날자 선택 후 자동 숨김 (true/false)
            format: 'yyyy-mm-dd', // 날짜 형식
            language: 'ko-KR', // 언어
            weekStart: 0, // 시작요일(0=일요일~6=토요일)
            trigger: '#show-cal-s' // 클릭 시 달력을 표시할 요소의 id
        });
    });
    $(function() {
        $("#datepickerE").datepicker({
            autoHide: true, // 날자 선택 후 자동 숨김 (true/false)
            format: 'yyyy-mm-dd', // 날짜 형식
            language: 'ko-KR', // 언어
            weekStart: 0, // 시작요일(0=일요일~6=토요일)
            trigger: '#show-cal-e' // 클릭 시 달력을 표시할 요소의 id
        });
    });
    </script>
	<!-- ==============끝================== -->
	<%@ include file="/WEB-INF/inc/footer.jsp" %>
</body>
</html>