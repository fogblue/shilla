<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!doctype html>
<html>
<head>
	<%@ include file="../inc/head.jsp" %>
	<link rel="stylesheet" href="/iot5/css/index.css" />
</head>
<body>
	<%@ include file="../inc/topbar.jsp" %>
	<%@ include file="../inc/slider.jsp" %>
	<!-- ============시작================== -->
	<div class="container main" id="#main">
		<h1 class="page-header">스페셜 오퍼</h1>
		<h3>SPECIAL OFFERS</h3>
		<div class="main_mconts" id="main_mconts"></div>
	</div>
	<!-- ==============끝================== -->
	<%@ include file="../inc/footer.jsp" %>
	
	<!-- Script codes -->
	<script src="plugins/masonry/masonry.pkgd.min.js"></script>
    <script src="plugins/imagesloaded/imagesloaded.pkgd.min.js"></script>
    <!-- json 데이터를 정의한 외부 파일 로드하기 -->
    <script src="item.js"></script>
</body>
</html>