<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!doctype html>
<html>
<head>
<%@ include file="../inc/head.jsp"%>
</head>
<body>
	<%@ include file="../inc/topbar.jsp"%>
	<!-- ==================================== -->
	<div class="container main">
		<div class="sidebar">
			<!-- 제목 들어갈 곳 -->
			<h3 class="sidebar-header">호텔신라 소개</h3>
			<!-- 메뉴 들어갈 곳 -->
			<ul class="list-group if-sidebar-menu">
				<li class="list-group-item inme1"><a
					href="/iot5/info/hotelinfo.jsp" class="imenu">개요</a></li>
				<li class="list-group-item inme1"><a
					href="/iot5/info/seoulshilla.jsp" class="imenu active">서울신라호텔</a></li>
				<li class="list-group-item inme1"><a
					href="/iot5/info/hotelinfo.jsp" class="imenu">제주신라호텔</a></li>
				<li class="list-group-item inme1"><a
					href="/iot5/info/hotelinfo.jsp" class="imenu">수상이력</a></li>
			</ul>
		</div>
		<div class="if-contents">
			<div class="bdb">
				<h3 class="conhead">서울신라호텔</h3>
				<div class="ind">
					<span class="glyphicon glyphicon-home"></span> > About The Shilla >
					<span class="orng">서울신라호텔</span>
				</div>
			</div>
			<div class="imgbox">
				<img src="/iot5/img/seoulMainImg.jpg" alt="seoul main image" />
			</div>
			<br />
			<div class="con1">
				
			</div>
		</div>
	</div>
	<!-- ==================================== -->
	<%@ include file="../inc/footer.jsp"%>
</body>