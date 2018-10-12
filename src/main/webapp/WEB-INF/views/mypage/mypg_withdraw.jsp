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
		<ul class="menu2 list-inline pull-right">
			<li class="menu-item2 br"><a
				href="${pageContext.request.contextPath}/member/log_main.do">로그인&nbsp;</a></li>
			<li class="menu-item2"><a
				href="${pageContext.request.contextPath}/member/log_join01.do">회원
					가입&nbsp;</a></li>
		</ul>
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
			<div class="mypg-contents-txtbox">
				<p>${loginInfo.userNameKor}&nbsp;님의 정보를 안전하게 보호하기 위해 비밀번호를 다시 한번 확인합니다.</p>
			</div>
			<div class="mypg-contents-table">
				<table class="mypg-pfed-contents-table">
					<tr>
						<td>회원 번호</td>
						<td>${loginInfo.id}</td>
					</tr>
					<tr>
						<td>비밀번호</td>
						<td><input type="password" id="pswd_confirm" name="pswd_confirm" /></td>
					</tr>
				</table>
			</div>
			<div class="mypg-contents-btn">
				<button type="submit" class="btn mypg-pfed-confirm" onclick="onSubmit()">확인</button>
			</div>
		</div>
	</div>
	
	<script type="text/javascript">
	function onSubmit() {
		location.href='${pageContext.request.contextPath}/mypage/mypg_withdraw_ok.do'
	}
	</script>
	<!-- ==============끝================== -->
	<%@ include file="/WEB-INF/inc/footer.jsp" %>
	</c:otherwise>
</c:choose>
</body>
</html>