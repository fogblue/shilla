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
		<ul class="main_mconts" id="main_mconts"></ul>
	</div>
	<!-- ==============끝================== -->
	<%@ include file="../inc/footer.jsp" %>
	 
	 <!-- 동적으로 생성될 HTML의 기본 틀 -->
    <script type="text/x-handlebars-template" id="list-item-tmpl">
        {{#item}}
            <li class="item">
                    <div class="item-content">
                        <img src="{{img}}" class="img" />
                    </div>
            </li>
        {{/item}}
    </script>
	<!-- Script codes -->
	<script src="plugins/masonry/masonry.pkgd.min.js"></script>
    <script src="plugins/imagesloaded/imagesloaded.pkgd.min.js"></script>
    <!-- json 데이터를 정의한 외부 파일 로드하기 -->
    <script src="item.js"></script>
    <script>
        /** json 데이터의 배열만큼 컨텐츠를 동적으로 추가하기 위한 함수 */
        function add_item() {
            // 미리 준비한 HTML틀을 읽어온다.
            var template = Handlebars.compile($("#list-item-tmpl").html());
            var html = template(data);
            // 동적으로 생성된 결과를 jQuery객체로 변환한다.
            var el = $(html);

            // 이미지 로딩이 완료됨을 감지함
            el.imagesLoaded(function() {
                // 박스 요소 동적 추가
                $("#grid").append(el).masonry('appended', el).masonry();
            });
        } // end function
        
        $(function() {
        	$("#grid").masonry({
        		itemSelector: ".item"
        	});
        });
        </script>
</body>
</html>