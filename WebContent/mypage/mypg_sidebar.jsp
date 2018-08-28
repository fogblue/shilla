<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!doctype html>
<html>
<head>
	<%@ include file="../inc/head.jsp" %>
</head>
<body>
	<%@ include file="../inc/topbar.jsp" %>
	<!-- ============시작================== -->
	<div class="mypg-container main">
		<div class="sidebar">
			<div class="sidebar-cont">
				<div class="bdb">
					<h3>마이페이지</h3>
				</div>
				<div class="mypg-sidebar-menu">
					<a href="#" id="reservation_li">예약 확인/취소</a>
					<a>개인정보</a>
					<a href="#" id="profile_edit_li">프로필 수정</a>
					<a href="#" id="password_edit_li">비밀번호 변경</a>
					<a href="#" id="withdraw_li">회원 탈퇴 요청</a>
					<a href="#" id="qna_li">문의 내역</a>
				</div>
			</div>
		</div>
		<div class="mypg-contents" id="mypage_contents_box">
			<div class="bdb mypg-contents-header">
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
					<input type="text" id="datepicker" /><span id="show-cal"><img src="../img/btnCalendar.gif" width="20" height="30"></span>
					<span> ~ </span>
					<input type="text" id="datepicker" /><span id="show-cal"><img src="../img/btnCalendar.gif" width="20" height="30"></span>
					<button type="button" class="btn mypg-rsvt-find">조회</button>
				</div>
				<div class="mypg-contents-table">
					<h4 class="mypg-bdb">객실 / 패키지 예약</h4>
					<div>
						<p>Total : </p>
						<table class="mypg-rsvt-contents-table">
							<tr>
								<td>예약번호</td>
								<td>호텔</td>
								<td>객실/패키지</td>
								<td>체크인/체크아웃</td>
								<td>예약상태</td>
							</tr>
							<tr>
								<td colspan="5">자료가 없습니다.</td>
							</tr>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<script type="text/javascript">
	$(function() {
		$("#reservation_li").click(function(e) {
			$("#mypage_contents_box").empty();
			$.ajax({
				url: "../mypage/mypg_reservation.html",
				method: "get",
				data: {},
				dataType: "html",
				success: function(req) {
					$("#mypage_contents_box").append(req);
				}
			});
		});
		
		$("#profile_edit_li").click(function(e) {
			$("#mypage_contents_box").empty();
			$.ajax({
				url: "../mypage/mypg_profile_edit.html",
				method: "get",
				data: {},
				dataType: "html",
				success: function(req) {
					$("#mypage_contents_box").append(req);
				}
			});
		});
		
		$("#password_edit_li").click(function(e) {
			$("#mypage_contents_box").empty();
			$.ajax({
				url: "../mypage/mypg_password_edit.html",
				method: "get",
				data: {},
				dataType: "html",
				success: function(req) {
					$("#mypage_contents_box").append(req);
				}
			});
		});
		
		$("#withdraw_li").click(function(e) {
			$("#mypage_contents_box").empty();
			$.ajax({
				url: "../mypage/mypg_withdraw.html",
				method: "get",
				data: {},
				dataType: "html",
				success: function(req) {
					$("#mypage_contents_box").append(req);
				}
			});
		});
		
		$("#qna_li").click(function(e) {
			$("#mypage_contents_box").empty();
			$.ajax({
				url: "../mypage/mypg_qna.html",
				method: "get",
				data: {},
				dataType: "html",
				success: function(req) {
					$("#mypage_contents_box").append(req);
				}
			});
		});
	});
	</script>
	<!-- ==============끝================== -->
	<%@ include file="../inc/footer.jsp" %>
</body>
</html>