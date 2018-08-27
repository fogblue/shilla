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
					<a>예약 확인/취소</a>
					<a>개인정보</a>
					<a>프로필 수정</a>
					<a>비밀번호 변경</a>
					<a>회원 탈퇴 요청</a>
					<a>문의 내역</a>
				</div>
			</div>
		</div>
		<div class="mypg-contents">
			<div class="mypg-bdb2 mypg-contents-header">
				<h3>프로필 수정</h3>
				<div class="pull-right mypg-loc"><span class="glyphicon glyphicon-home"></span>&nbsp;&nbsp;&nbsp;>&nbsp;&nbsp;&nbsp;My Page&nbsp;&nbsp;&nbsp;>&nbsp;&nbsp;&nbsp;개인정보&nbsp;&nbsp;&nbsp;>&nbsp;&nbsp;&nbsp;<span class="mypg-loc-txt">프로필 수정</span></div>
			</div>
			<div class="mypg-contents-txtbox">
				<p> 님의 정보를 안전하게 보호하기 위해 비밀번호를 다시 한번 확인합니다.</p>
			</div>
			<div class="mypg-contents-table">
				<table class="mypg-pfed-contents-table">
					<tr>
						<td>회원 번호</td>
						<td></td>
					</tr>
					<tr>
						<td>비밀번호</td>
						<td><input type="password" /></td>
					</tr>
				</table>
			</div>
			<div class="mypg-contents-btn">
				<button type="submit" class="btn mypg-pfed-confirm">확인</button>
			</div>
		</div>
	</div>
	<!-- ==============끝================== -->
	<%@ include file="../inc/footer.jsp" %>
</body>
</html>