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
					<a href="${pageContext.request.contextPath}/mypage/mypg_reservation.do">예약 확인/취소</a>
					<a>개인정보</a>
					<a href="${pageContext.request.contextPath}/mypage/mypg_profile_edit.do">프로필 수정</a>
					<a href="${pageContext.request.contextPath}/mypage/mypg_password_edit.do">비밀번호 변경</a>
					<a href="${pageContext.request.contextPath}/mypage/mypg_withdraw.do">회원 탈퇴 요청</a>
					<a href="${pageContext.request.contextPath}/mypage/mypg_qna.do">문의 내역</a>
				</div>
			</div>
		</div>
		<div class="mypg-contents">
			<div class="bdb mypg-contents-header">
				<h3>마이페이지</h3>
				<div class="pull-right mypg-loc"><span class="glyphicon glyphicon-home"></span>&nbsp;&nbsp;&nbsp;>&nbsp;&nbsp;&nbsp;My Page&nbsp;&nbsp;&nbsp;>&nbsp;&nbsp;&nbsp;<span class="mypg-loc-txt">마이페이지</span></div>
			</div>
			<div class="mypg-contents-txt">
				<p><span class="mypg-mp-name">${loginInfo.userNameEng}&nbsp;님</span>의 회원번호에 대한 안내입니다.</p>
			</div>
			<div class="mypg-mp-bd">
				<span>회원 번호</span>&nbsp;&nbsp;&nbsp;&nbsp;<span class="member-id">${loginInfo.id}</span>
			</div>
		</div>
	</div>
	<!-- ==============끝================== -->
	<%@ include file="/WEB-INF/inc/footer.jsp" %>
	</c:otherwise>
</c:choose>
</body>
</html>