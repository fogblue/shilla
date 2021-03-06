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
					<a href="${pageContext.request.contextPath}/mypage/mypg_withdraw.do" class="mypg-sidebar-open">회원 탈퇴 요청<img src="${pageContext.request.contextPath}/assets/img/sidebar_arr.gif" class="sidebar-arrow"></a>
					<a href="${pageContext.request.contextPath}/mypage/mypg_qna.do">문의 내역</a>
				</div>
			</div>
		</div>
		<div class="mypg-contents">
			<div class="mypg-bdb2 mypg-contents-header">
				<h3>회원 탈퇴 요청</h3>
				<div class="pull-right mypg-loc"><span class="glyphicon glyphicon-home"></span>&nbsp;&nbsp;&nbsp;>&nbsp;&nbsp;&nbsp;My Page&nbsp;&nbsp;&nbsp;>&nbsp;&nbsp;&nbsp;개인정보&nbsp;&nbsp;&nbsp;>&nbsp;&nbsp;&nbsp;<span class="mypg-loc-txt">회원 탈퇴 요청</span></div>
			</div>
			<div class="mypg-contents-txt">
				<p> 탈퇴를 요청하시기 전에 아래의 유의사항을 한 번 더 확인해 주시기 바랍니다.</p>
			</div>
			<div class="mypg-wd-contents">
				<p>- 탈퇴를 요청하시면 번복이 불가능하며 보유하신 모든 포인트는 소멸됩니다.</p>
				<p>- 개인정보보호법에 따라 고객님의 호텔 이용기록, 개인정보 및 문의내역 기록도 모두 삭제됩니다.</p>
				<p>- 탈퇴가 완료되면 즉시 홈페이지 로그인이 제한됩니다.</p>
			</div>
			<div id="withdraw-msg"></div>
			<div class="mypg-contents-btn">
				<button type="submit" class="btn mypg-wd-apply" onclick="withdraw()">신청</button>
			</div>
		</div>
	</div>
	
	<script>
	function wd_msg_t() {
		$.ajax({
			url: "${pageContext.request.contextPath}/mypage/mypg_withdraw_msg.do",
			method: "get",
			data: {},
			dataType: "html",
			success: function(req) {
				$("#withdraw-msg").append(req);
			}
		});
		setTimeout(function() {
			location.href="${pageContext.request.contextPath}/mypage/mypg_withdraw_2_ok.do"
		}, 500);
	}
	
	function wd_msg_f() {
		alert("탈퇴요청이 취소되었습니다.");
	}
	
	function withdraw() {
		var wd_msg = confirm("탈퇴가 완료되면 취소가 불가능합니다. 계속 하시겠습니까?")
		if (wd_msg == true) {
			wd_msg_t();
		} else {
			wd_msg_f();
		}
	}
	</script>
	<!-- ==============끝================== -->
	<%@ include file="/WEB-INF/inc/footer.jsp" %>
</body>
</html>