<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<header id="site-header">
	<div class="tcontainer clearfix">
		<div class="menu1 list-inline downrow dropdown">
			<button class="btn btn-topbar1 dropdown-toggle"
				data-toggle="dropdown">
				호텔찾기 <span class="caret"></span>
			</button>
			<ul class="dropdown-menu" role="menu">
				<li><a href="#">서울신라호텔</a></li>
				<li><a href="#">제주신라호텔</a></li>
			</ul>
		</div>
		<div class="menu1 list-inline downrow">
			<a href="${pageContext.request.contextPath}/reservation/reservation.do"	class="btn btn-topbar1">예약</a>
		</div>
		<div class="box1">

			<a href="${pageContext.request.contextPath}/"><span	class="pull-left logo">My Site</span></a>
		</div>
		<c:choose>
			<c:when test="${loginInfo == null}">
				<ul class="menu2 list-inline pull-right">
					<li class="menu-item2 br"><a
						href="${pageContext.request.contextPath}/member/log_main.do">로그인&nbsp;</a></li>
					<li class="menu-item2 br"><a href="${pageContext.request.contextPath}/member/log_join01.do">회원 가입&nbsp;</a></li>
					<li class="menu-item2"><a href="${pageContext.request.contextPath}/mypage/mypg_reservation.do">예약 확인</a></li>
				</ul>
			</c:when>
			<c:otherwise>
				<ul class="menu2 list-inline pull-right">
					<li class="menu-item2 br">${loginInfo.userNameKor}님&nbsp;</li>
					<li class="menu-item2 br"><a href="${pageContext.request.contextPath}/mypage/mypg_main.do">마이페이지&nbsp;</a></li>
					<li class="menu-item2 br"><a href="${pageContext.request.contextPath}/member/logout.do">로그아웃&nbsp;</a></li>
					<li class="menu-item2"><a href="${pageContext.request.contextPath}/mypage/mypg_reservation.do">예약 확인</a></li>
				</ul>
			</c:otherwise>
		</c:choose>
		<div>
			<ul class="menu3 list-inline pull-right downrow">

				<li class="menu-item"><a href="${pageContext.request.contextPath}/info/hotelinfo.do"><button class="btn btn-topbar">호텔신라 소개</button></a></li>
				<li class="menu-item"><a href="${pageContext.request.contextPath}/info/contactinfo.do"><button class="btn btn-topbar">고객문의</button></a></li>
				<li class="menu-item"><a href="${pageContext.request.contextPath}/room_add.do" class="btn btn-topbar">관리자페이지</a></li>
			</ul>
		</div>
	</div>
</header>