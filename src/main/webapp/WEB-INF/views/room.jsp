<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!doctype html>
<html>
<head>
<%@ include file="/WEB-INF/inc/head.jsp"%>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/assets/plugins/lightbox/css/lightbox.min.css" />
</head>
<body>
	<!-- ==============시작================== -->
	<div class="container main" id="main">
		<h1 class="page-header">갤러리</h1>
		<h3 class="sm-header">GALLERY</h3>
		<div class="main_soffcon">
			<div id="main_mconts">
				<a href="${pageContext.request.contextPath}/assets/img/main_ma1.jpg" data-lightbox="shilla-gallery" data-title="방1"><img src="${pageContext.request.contextPath }/assets/img/main_ma1.jpg" /></a>
				<a href="${pageContext.request.contextPath}/assets/img/main_ma2.jpg" data-lightbox="shilla-gallery" data-title="방2"><img src="${pageContext.request.contextPath }/assets/img/main_ma2.jpg" /></a>
				<a href="${pageContext.request.contextPath}/assets/img/main_ma3.jpg" data-lightbox="shilla-gallery" data-title="방3"><img src="${pageContext.request.contextPath }/assets/img/main_ma3.jpg" /></a>
				<a href="${pageContext.request.contextPath}/assets/img/main_ma4.jpg" data-lightbox="shilla-gallery" data-title="방4"><img src="${pageContext.request.contextPath }/assets/img/main_ma4.jpg" /></a>
				<a href="${pageContext.request.contextPath}/assets/img/main_ma5.jpg" data-lightbox="shilla-gallery" data-title="방5"><img src="${pageContext.request.contextPath }/assets/img/main_ma5.jpg" /></a>
			</div>
		</div>
		<h1 class="page-header">홍보영상</h1>
		<h3 class="sm-header">VIDEOS</h3>
		<div class="my-youtube-wrapper">
			<div class="my-youtube" data-youcover data-id='81xxCLvADlU'></div>
		</div>
	</div>
	<!-- ==============끝================== -->
	<!-- Script codes -->
	<script src="${pageContext.request.contextPath}/assets/plugins/youcover/youCover.js"></script>
	<!-- json 데이터를 정의한 외부 파일 로드하기 -->
	<script src="${pageContext.request.contextPath}/assets/plugins/lightbox/js/lightbox.js"></script>
	<script>
		lightbox.option({
			'resizeDuration' : 200,
			'wrapAround' : true,
			'max-Height' : 500,
			'fitViewport' : true
		});
	</script>
</body>
</html>