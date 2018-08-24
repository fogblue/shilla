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
			<h3 class="sidebar-header">고객문의</h3>
			<!-- 메뉴 들어갈 곳 -->
			<a href="/iot5/info/contactinfo.jsp" class="imenu">연락처</a>
			<a href="/iot5/info/seoulshilla.jsp" class="imenu">문의하기</a>
		</div>
		<div class="if-contents">
			<div class="bdb">
				<h3 class="conhead">연락처</h3>
				<div class="ind">
					<span class="glyphicon glyphicon-home"></span> > 문의하기 >
					<span class="orng">Contact Us</span>
				</div>
			</div>
			<br />
			<div class="con1">
				
			</div>
		</div>
	</div>
	<!-- ==================================== -->
	<%@ include file="../inc/footer.jsp"%>
</body>