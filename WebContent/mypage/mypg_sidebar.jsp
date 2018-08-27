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
	<div class="container mypg-container main">
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
		<div class="mypg-contents" id="mypage_contents_box"></div>
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