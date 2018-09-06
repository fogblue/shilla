<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!doctype html>
<html>
<head>
<%@ include file="../inc/head.jsp"%>
<link rel="stylesheet" href="/iot5/css/index.css" />
<link rel="stylesheet" href="/iot5/plugins/youcover/youCover.css" />
<link rel="stylesheet"
	href="/iot5/plugins/lightbox/css/lightbox.min.css" />
</head>
<body>
	<%@ include file="../inc/topbar.jsp"%>
	<%@ include file="../inc/slider.jsp"%>
	<!-- ==============시작================== -->
	<div class="container main" id="main">
		<h1 class="page-header">스페셜 오퍼</h1>
		<h3 class="sm-header">SPECIAL OFFERS</h3>
		<div class="main_soffcon">
			<div id="main_mconts">
				<a href="/iot5/img/main_ma1.jpg" data-lightbox="shilla-gallery" data-title="방1"><img src="/iot5/img/main_ma1.jpg" /></a>
				<a href="/iot5/img/main_ma2.jpg" data-lightbox="shilla-gallery" data-title="방2"><img src="/iot5/img/main_ma2.jpg" /></a>
				<a href="/iot5/img/main_ma3.jpg" data-lightbox="shilla-gallery" data-title="방3"><img src="/iot5/img/main_ma3.jpg" /></a>
				<a href="/iot5/img/main_ma4.jpg" data-lightbox="shilla-gallery" data-title="방4"><img src="/iot5/img/main_ma4.jpg" /></a>
				<a href="/iot5/img/main_ma5.jpg" data-lightbox="shilla-gallery" data-title="방5"><img src="/iot5/img/main_ma5.jpg" /></a>
			</div>
		</div>
		<h1 class="page-header">갤러리</h1>
		<h3 class="sm-header">GALLERY</h3>
		<div class="my-youtube-wrapper">
			<div class="my-youtube" data-youcover data-id='81xxCLvADlU'></div>
		</div>
	</div>
	<!-- ==============끝================== -->
	<%@ include file="../inc/footer.jsp"%>

	<!-- 동적으로 생성될 HTML의 기본 틀 -->
	<script type="text/x-handlebars-template" id="list-item-tmpl">
        {{#item}}
                <div class="item-box">
                    <div class="item-content">
                        <img src="{{img}}" class="soff_img" />
                    </div>
                </div>
        {{/item}}
    </script>
	<!-- Script codes -->
	<script src="/iot5/plugins/youcover/youCover.js"></script>
	<!-- json 데이터를 정의한 외부 파일 로드하기 -->
	<script src="/iot5/plugins/lightbox/js/lightbox.js"></script>
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