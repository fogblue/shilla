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
<c:choose>
	<c:when test="${loginInfo == null}">
		<script type="text/javascript">
			alert("로그인 후 이용 가능한 서비스입니다.");
			location.href="${pageContext.request.contextPath}/member/log_main.do";
		</script>
	</c:when>
	<c:otherwise>
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
					<span>기간조회</span>
					<button type="button" class="btn mypg-rsvt-whole">전체</button>
					<input type="text" id="datepicker-s" /><a href="#" id="show-cal-s"><img src="${pageContext.request.contextPath}/assets/img/btnCalendar.gif" width="20" height="30"></a>
					<span> ~ </span>
					<input type="text" id="datepicker-e" /><a href="#" id="show-cal-e"><img src="${pageContext.request.contextPath}/assets/img/btnCalendar.gif" width="20" height="30"></a>
					<button type="button" class="btn mypg-rsvt-find" id="find">조회</button>
				</div>
				<div class="mypg-contents-table">
					<h4 class="mypg-bdb">객실 / 패키지 예약</h4>
					<div>
						<p>Total : </p>
						<table class="mypg-rsvt-contents-table">
							<tr class="rsvt-table-title">
								<td>예약번호</td>
								<td>호텔</td>
								<td>객실/패키지</td>
								<td>체크인/체크아웃</td>
								<td>예약상태</td>
							</tr>
							<!-- <tbody id="find-result">
								<tr id="find-target">
									<td colspan="5">자료가 없습니다.</td>
								</tr>
							</tbody> -->
							<c:choose>
								<c:when test="${fn:length(reservInfo) > 0}">
									<c:forEach var="reserv" items="${reservInfo}">
										<tr>
											<td>${maxPageNo}</td>
											<td>${reserv.hotelCate}</td>
											<td><a href="${pageContext.request.contextPath}/mypage/mypg_reservation_2.do?id=${reserv.id}" style="display: inline;">${reserv.roomType}</a></td>
											<td>${reserv.checkIn}</td>
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
        $("#datepicker-s").datepicker({
            autoHide: true, // 날자 선택 후 자동 숨김 (true/false)
            format: 'yyyy-mm-dd', // 날짜 형식
            language: 'ko-KR', // 언어
            weekStart: 0, // 시작요일(0=일요일~6=토요일)
            trigger: '#show-cal-s' // 클릭 시 달력을 표시할 요소의 id
        });
    });
    $(function() {
        $("#datepicker-e").datepicker({
            autoHide: true, // 날자 선택 후 자동 숨김 (true/false)
            format: 'yyyy-mm-dd', // 날짜 형식
            language: 'ko-KR', // 언어
            weekStart: 0, // 시작요일(0=일요일~6=토요일)
            trigger: '#show-cal-e' // 클릭 시 달력을 표시할 요소의 id
        });
    });
   /*  $("#find").click(function(e) {
		$("#find-result").empty();
		$("#find-target").remove();
		$.ajax({
			url: "${pageContext.request.contextPath}/mypage/mypg_reservation_table.do",
			method: "get",
			data: {},
			dataType: "html",
			success: function(req) {
				$("#find-result").append(req);
			}
		});
	}); */
    </script>
	<!-- ==============끝================== -->
	<%@ include file="/WEB-INF/inc/footer.jsp" %>
	</c:otherwise>
</c:choose>
</body>
</html>