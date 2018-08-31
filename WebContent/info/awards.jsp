<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!doctype html>
<html>
<head>
<%@ include file="../inc/head.jsp"%>
<link rel="stylesheet" href="/iot5/css/info.css" />
</head>
<body>
	<%@ include file="../inc/topbar.jsp"%>
	<!-- ==================================== -->
	<div class="container main">
		<div class="sidebar">
			<!-- 제목 들어갈 곳 -->
			<h3 class="sidebar-header">호텔신라 소개</h3>
			<!-- 메뉴 들어갈 곳 -->
			<a href="/iot5/info/hotelinfo.jsp" class="imenu">개요</a>
			<a href="/iot5/info/seoulshilla.jsp" class="imenu">서울신라호텔</a>
			<a href="/iot5/info/jejushilla.jsp" class="imenu">제주신라호텔</a>
			<a href="/iot5/info/awards.jsp" class="imenu">수상이력</a>
		</div>
		<div class="if-contents">
			<div class="bdb">
				<h3 class="conhead">수상이력</h3>
				<div class="ind">
					<span class="glyphicon glyphicon-home"></span> > About The Shilla >
					<span class="orng">Awards</span>
				</div>
			</div>
			<div class="imgbox">
				<img src="/iot5/img/awardsMainImg.jpg" alt="awards main image" />
			</div>
			<br />
			
		</div>
	</div>
	<!-- ==================================== -->
	<%@ include file="../inc/footer.jsp"%>
</body>