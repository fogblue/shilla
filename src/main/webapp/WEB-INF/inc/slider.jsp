<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<link rel="stylesheet" type="text/css" href="/iot5/plugins/superslides/stylesheets/superslides.css">
<script src="/iot5/plugins/superslides/jquery.easing.1.3.js"></script>
<script src="/iot5/plugins/superslides/jquery.superslides.min.js"></script>

<!-- 슬라이드의 부모(높이와 넓이를 구성한다) -->
<div id="slide-container">
	<div id="slides">
		<ul class="slides-container">
			<!-- 슬라이드 1 -->
			<li>
				<div class="slide-contents">
					<div class="slide-contents-cell"></div>
				</div> <img src="img/R0000000P5J9_KR.jpg" />
			</li>
			<!-- 슬라이드 2 -->
			<li>
				<div class="slide-contents">
					<div class="slide-contents-cell"></div>
				</div> <img src="img/R0000000P5J1_KR.jpg" />
			</li>
			<!-- 슬라이드 3 -->
			<li>
				<div class="slide-contents">
					<div class="slide-contents-cell"></div>
				</div> <img src="img/R0000000P5VD_KR.jpg" />
			</li>
		</ul>
	</div>
</div>

<script>
	$(function() {
		/** `#slides`요소에 대해 플러그인 적용 */
		$('#slides').superslides({
			inherit_width_from : '#slide-container', // 슬라이드의 넓이를 구성할 부모 요소
			inherit_height_from : '#slide-container', // 슬라이드의 높이를 구성할 부모 요소
			play : 4000, // 재생시간 (1/1000초 단위). 미지정시 자동재생 안됨.
			animation : 'slide', // 애니메이션 옵션(fade/slide) (미적용시 슬라이드)
			pagination : false
		});
	});
</script>