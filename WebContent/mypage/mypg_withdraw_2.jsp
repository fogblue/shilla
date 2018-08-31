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
					<a href="/iot5/mypage/mypg_reservation.jsp">예약 확인/취소</a>
					<a>개인정보</a>
					<a href="/iot5/mypage/mypg_profile_edit.jsp">프로필 수정</a>
					<a href="/iot5/mypage/mypg_password_edit.jsp">비밀번호 변경</a>
					<a href="/iot5/mypage/mypg_withdraw.jsp" class="mypg-sidebar-open">회원 탈퇴 요청<img src="/iot5/img/sidebar_arr.gif" class="sidebar-arrow"></a>
					<a href="/iot5/mypage/mypg_qna.jsp">문의 내역</a>
				</div>
			</div>
		</div>
		<div class="mypg-contents">
			<div class="mypg-bdb2 mypg-contents-header">
				<h3>회원 탈퇴 요청</h3>
				<div class="pull-right mypg-loc"><span class="glyphicon glyphicon-home"></span>&nbsp;&nbsp;&nbsp;>&nbsp;&nbsp;&nbsp;My Page&nbsp;&nbsp;&nbsp;>&nbsp;&nbsp;&nbsp;개인정보&nbsp;&nbsp;&nbsp;>&nbsp;&nbsp;&nbsp;<span class="mypg-loc-txt">회원 탈퇴 요청</span></div>
			</div>
			<div class="mypg-contents-txt">
				<p> 탈퇴를 신청하시기 전에 아래의 유의사항을 한 번 더 확인해 주시기 바랍니다.</p>
			</div>
			<div class="mypg-wd-contents">
				<p>- 탈퇴를 신청하시면 번복이 불가능하며 보유하신 모든 포인트는 소멸됩니다.</p>
				<p>- 개인정보보호법에 따라 고객님의 호텔 이용기록, 개인정보 및 문의내역 기록도 모두 삭제됩니다.</p>
				<p>- 탈퇴 신청이 완료되면 즉시 홈페이지 로그인이 제한됩니다.</p>
			</div>
			<div class="mypg-contents-btn">
				<button type="submit" class="btn mypg-wd-apply">신청</button>
			</div>
		</div>
	</div>
	<!-- ==============끝================== -->
	<%@ include file="../inc/footer.jsp" %>
</body>
</html>