<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!doctype html>
<html>
<head>
<%@ include file="../inc/head.jsp"%>
<link rel="stylesheet" href="/iot5/css/index.css" />
<link rel="stylesheet" href="/iot5/plugins/youcover/youCover.css" />
</head>
<body>
	<%@ include file="../inc/topbar.jsp"%>
	<%@ include file="../inc/slider.jsp"%>
	<!-- ==============시작================== -->
	<div class="container main" id="main">
		<h1 class="page-header">스페셜 오퍼</h1>
		<h3 class="sm-header">SPECIAL OFFERS</h3>
		<div class="main_soffcon">
			<ul class="main_mconts" id="main_mconts"></ul>
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
            <li class="item">
                <div class="item-box">
                    <div class="item-content">
                        <img src="{{img}}" class="img" />
                        <h3 class="title">{{title}}</h3>
                        <p class="desc">{{desc}}</p>
                    </div>
                </div>
            </li>
        {{/item}}
    </script>
	<!-- Script codes -->
	<script src="/iot5/plugins/masonry/masonry.pkgd.min.js"></script>
	<script src="/iot5/plugins/imagesloaded/imagesloaded.pkgd.min.js"></script>
	<script src="/iot5/plugins/youcover/youCover.js"></script>
	<!-- json 데이터를 정의한 외부 파일 로드하기 -->
	<script src="/iot5/inc/item.js"></script>
	<script>
		/** json 데이터의 배열만큼 컨텐츠를 동적으로 추가하기 위한 함수 */
		function add_item() {
			var template = Handlebars.compile($("#list-item-tmpl").html());
			var html = template(data);
			var el = $(html);

			// 이미지 로딩이 완료됨을 감지함
			el.imagesLoaded(function() {
				$("#main_mconts").append(el).masonry('appended', el).masonry();
			});
		} // end function

		$(function() {
			$("#main_mconts").masonry({
				itemSelector : ".item"
			});
			add_item();
		});
	</script>
</body>
</html>