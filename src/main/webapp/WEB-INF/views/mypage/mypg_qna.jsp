<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
			alert("로그인 후 이용 가능한 페이지입니다.");
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
					<a href="${pageContext.request.contextPath}/mypage/mypg_reservation.do">예약 확인/취소</a>
					<a>개인정보</a>
					<a href="${pageContext.request.contextPath}/mypage/mypg_profile_edit.do">프로필 수정</a>
					<a href="${pageContext.request.contextPath}/mypage/mypg_password_edit.do">비밀번호 변경</a>
					<a href="${pageContext.request.contextPath}/mypage/mypg_withdraw.do">회원 탈퇴 요청</a>
					<a href="${pageContext.request.contextPath}/mypage/mypg_qna.do" class="mypg-sidebar-open">문의 내역<img src="${pageContext.request.contextPath}/assets/img/sidebar_arr.gif" class="sidebar-arrow"></a>
				</div>
			</div>
		</div>
		<div class="mypg-contents">
			<div class="bdb mypg-contents-header">
				<h3>문의 내역</h3>
				<div class="pull-right mypg-loc"><span class="glyphicon glyphicon-home"></span>&nbsp;&nbsp;&nbsp;>&nbsp;&nbsp;&nbsp;My Page&nbsp;&nbsp;&nbsp;>&nbsp;&nbsp;&nbsp;<span class="mypg-loc-txt">문의 내역</span></div>
			</div>
			<div class="mypg-contents-txt">
				<p>회원님께서 문의하신 내역과 답변을 확인하실 수 있습니다.</p>
			</div>
			<div class="mypg-rsvt-bd">
				<div class="mypg-qna-bd-search">
					<span>기간조회</span>
					<button type="button" class="btn mypg-rsvt-whole datepicker-btnbtn" name="1week">1주</button>
					<button type="button" class="btn mypg-rsvt-whole datepicker-btnbtn" name="1month">1개월</button>
					<button type="button" class="btn mypg-rsvt-whole datepicker-btnbtn" name="3month">3개월</button>
					<button type="button" class="btn mypg-rsvt-whole datepicker-btnbtn" name="6month">6개월</button>
					<button type="button" class="btn mypg-rsvt-whole datepicker-btnbtn" name="all">전체</button>
					<input type="text" id="datepicker-s" /><a href="#" id="show-cal-s"><img src="${pageContext.request.contextPath}/assets/img/btnCalendar.gif" width="20" height="30"></a>
					<span> ~ </span>
					<input type="text" id="datepicker-e" /><a href="#" id="show-cal-e"><img src="${pageContext.request.contextPath}/assets/img/btnCalendar.gif" width="20" height="30"></a>
					<button type="button" class="btn mypg-rsvt-find" id="find">조회</button>
				</div>
				<div class="mypg-contents-table">
					<div>
						<p>Total : </p>
						<table class="mypg-rsvt-contents-table">
							<tr>
								<td>NO</td>
								<td>호텔</td>
								<td>문의유형</td>
								<td>제목</td>
								<td>문의일자</td>
								<td>답변여부</td>
							</tr>
							<tr>
								<td colspan="6" id="find-target">자료가 없습니다.</td>
							</tr>
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
			trigger: "#show-cal-s" // 클릭 시 달력을 표시할 요소의 id
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

	/* 날짜 객체 받아서 문자열로 리턴하는 함수 */
	function getDateStr(myDate){
		return (myDate.getFullYear() + '-' + (myDate.getMonth() + 1) + '-' + myDate.getDate())
	}

	/* 오늘 날짜를 문자열로 반환 */
	function today() {
		var d = new Date()
		return getDateStr(d)
	}
	
	/* 오늘로부터 1주일전 날짜 반환 */
	function lastWeek() {
		var d = new Date()
		var dayOfMonth = d.getDate()
		d.setDate(dayOfMonth - 7)
		return getDateStr(d)
	}

	/* 오늘로부터 1개월전 날짜 반환 */
	function lastMonth() {
		var d = new Date()
		var monthOfYear = d.getMonth()
		d.setMonth(monthOfYear - 1)
		return getDateStr(d)
	}
	
	/* 오늘로부터 3개월전 날짜 반환 */
	function last3Month() {
		var d = new Date()
		var monthOfYear = d.getMonth()
		d.setMonth(monthOfYear - 3)
		return getDateStr(d)
	}
	
	/* 오늘로부터 6개월전 날짜 반환 */
	function last6Month() {
		var d = new Date()
		var monthOfYear = d.getMonth()
		d.setMonth(monthOfYear - 6)
		return getDateStr(d)
	}
	
	$(".mypg-qna-bd-search .datepicker-btnbtn").click(function() {
		var rname = $(this).attr("name")
		$("#datepicker-e").val(today())
		if (rname == "1week"){
			$("#datepicker-s").val(lastWeek())
		} else if (rname == "1month") {
			$("#datepicker-s").val(lastMonth())
		} else if (rname == "3month") {
			$("#datepicker-s").val(last3Month())
		} else if (rname == "6month") {
			$("#datepicker-s").val(last6Month())
		} else if (rname == "all") {
			$("#datepicker-s").val("");
			$("#datepicker-e").val("");
		}
	})
	
	$("#find").click(function(e) {
		$("#find-target").remove();
		$.ajax({
			url: "${pageContext.request.contextPath}/mypage/mypg_qna_table.do",
			method: "get",
			data: {},
			dataType: "html",
			success: function(req) {
				$("#find-target").append(req);
			}
		});
	});
	</script>
	<!-- ==============끝================== -->
	<%@ include file="/WEB-INF/inc/footer.jsp" %>
	</c:otherwise>
</c:choose>
</body>
</html>