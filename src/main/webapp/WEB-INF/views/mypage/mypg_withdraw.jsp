<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!doctype html>
<html>
<head>
	<%@ include file="../inc/head.jsp" %>
<link rel="stylesheet" type="text/css" href="/iot5/css/mypage.css">
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
						<td><input type="password" id="pswd_confirm" /></td>
					</tr>
				</table>
			</div>
			<div class="mypg-contents-btn">
				<button type="submit" class="btn mypg-pfed-confirm" onclick=doSubmit()>확인</button>
			</div>
		</div>
	</div>
	
	<script type="text/javascript">
	function doSubmit() {
		var p_pswd = 1234;
		var i_pswd = $("#pswd_confirm").val();
		if (i_pswd == p_pswd) {
			location.href='/iot5/mypage/mypg_withdraw_2.jsp'
		} else if (i_pswd == "") {
			alert("비밀번호는 필수입력항목입니다.");
		} else {
			alert("비밀번호가 일치하지 않습니다.");
		}
	}
	</script>
	<!-- ==============끝================== -->
	<%@ include file="../inc/footer.jsp" %>
</body>
</html>