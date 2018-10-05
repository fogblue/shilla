<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!doctype html>
<html>
<head>
<%@ include file="/WEB-INF/inc/head.jsp"%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/info.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/i_seoul.css" />
</head>
<body>
	<%@ include file="/WEB-INF/inc/topbar.jsp"%>
	<!-- ==================================== -->
	<div class="container main">
		<div class="sidebar">
			<!-- 제목 들어갈 곳 -->
			<h3 class="sidebar-header">호텔신라 소개</h3>
			<!-- 메뉴 들어갈 곳 -->
			<a href="${pageContext.request.contextPath}/info/hotelinfo.do" class="imenu">개요</a> <a
				href="${pageContext.request.contextPath}/info/seoulshilla.do" class="imenu">서울신라호텔</a> <a
				href="${pageContext.request.contextPath}/info/jejushilla.do" class="imenu">제주신라호텔</a> <a
				href="${pageContext.request.contextPath}/info/awards.do" class="imenu">수상이력</a>
		</div>
		<div class="if-contents">
			<div class="bdb">
				<h3 class="conhead">서울신라호텔</h3>
				<div class="ind">
					<span class="glyphicon glyphicon-home"></span> > About The Shilla >
					<span class="orng">서울신라호텔</span>
				</div>
			</div>
			<!-- 본문 영역 -->
			<div class="imgbox">
				<img src="${pageContext.request.contextPath}/assets/img/seoulMainImg.jpg" alt="seoul main image" />
			</div>
			<br />
			<table class="contentbox">
				<tr>
					<td class="subconhead">Urban Lifestyle Hotel</td>
					<td class="subconhead">A Leading Global Property</td>
				</tr>
				<tr>
					<td class="subcon">한국의 전통미와 현대적 감각을 겸비하고 있는 세계 속의 명문호텔<br>
						서울신라호텔은 세계 최고의 어번(Urban) 라이프스타일 호텔로<br> 고객들에게 최고급 Hospitality
						서비스를 제공합니다.<br> 한국을 대표하는 럭셔리 호텔로서 '일상이 최고의 순간이 되는 곳'<br>
						이라는 컨셉을 새롭게 선보이며 휴식은 물론 고급 식문화, 예술,<br> 뷰티, 쇼핑, 웨딩, 엔터테인먼트 등
						고객의 고품격 라이프스타일을<br> 제안하는 공간으로 거듭나고 있습니다.<br>
					</td>
					<td class="subcon">LHW의 멤버로 세계 럭셔리 호텔들과 어깨를 나란히 하고 있는<br>
						서울신라호텔은 고객 한 분 한분을 배려하는 기품있는 서비스로<br> 세계 각국의 수반들과 외교, 경제, 문화
						등의 분야의 명사로부터<br> 찬사를 받고 있으며, Conde Nast Traveler, Travel
						&amp; Leisure,<br> Zagat, Euromoney등 권위 있는 해외 매체로부터 매년 한국<br>
						최고의 호텔로 선정되고 있습니다.<br>
					</td>
				</tr>
			</table>
			<hr />
			<div class="shillainfo">
				<img src="${pageContext.request.contextPath}/assets/img/theShillaInfo.jpg" alt="The Shilla Info" />
				<ul class="list-inline i_logo">
					<li class="i_fb"><a
						href="https://www.facebook.com/theshillahotels">Facebook</a></li>
					<li class="i_ta"><a
						href="http://www.tripadvisor.co.kr/Hotel_Review-g294197-d301253-Reviews-The_Shilla_Seoul-Seoul.html">Trip
							Advisor</a></li>
					<li class="i_wb"><a href="https://www.weibo.com/shillahotel">Weibo</a></li>
					<li class="i_gg"><a
						href="https://plus.google.com/+TheShillaHotelsResorts">Google+</a></li>
				</ul>
			</div>
			<hr />
			<div class="facetwit">
				<ul class="list-inline i_facetwit">
					<li class="i_face"><a href="#">Share on Facebook</a></li>
					<li class="i_twit"><a href="#">Share on Twitter</a></li>
				</ul>
			</div>
		</div>
	</div>
	<!-- ==================================== -->
	<%@ include file="/WEB-INF/inc/footer.jsp"%>
</body>
</html>