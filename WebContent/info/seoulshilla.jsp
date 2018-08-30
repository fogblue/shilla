<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!doctype html>
<html>
<head>
<%@ include file="../inc/head.jsp"%>
<link rel="stylesheet" href="/iot5/css/info.css" />
<link rel="stylesheet" href="/iot5/css/i_seoul.css" />
</head>
<body>
	<%@ include file="../inc/topbar.jsp"%>
	<!-- ==================================== -->
	<div class="container main">
		<div class="sidebar">
			<!-- 제목 들어갈 곳 -->
			<h3 class="sidebar-header">호텔신라 소개</h3>
			<!-- 메뉴 들어갈 곳 -->
			<a href="/iot5/info/hotelinfo.jsp" class="imenu">개요</a> <a
				href="/iot5/info/seoulshilla.jsp" class="imenu">서울신라호텔</a> <a
				href="/iot5/info/hotelinfo.jsp" class="imenu">제주신라호텔</a> <a
				href="/iot5/info/hotelinfo.jsp" class="imenu">수상이력</a>
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
				<img src="/iot5/img/seoulMainImg.jpg" alt="seoul main image" />
			</div>
			<br />
			<table class="contentbox">
				<tr>
					<td class="subconhead">Urban Lifestyle Hotel</td>
					<td class="subconhead">A Leading Global Property</td>
				</tr>
				<tr>
					<td class="subcon">한국의 전통미와 현대적 감각을 겸비하고 있는 세계 속의 명문호텔 서울신라호텔은
						세계 최고의 어번(Urban) 라이프스타일 호텔로 고객들에게 최고급 Hospitality 서비스를 제공합니다.<br>
						한국을 대표하는 럭셔리 호텔로서 '일상이 최고의 순간이 되는 곳' 이라는 컨셉을 새롭게 선보이며 휴식은 물론 고급
						식문화, 예술, 뷰티, 쇼핑, 웨딩, 엔터테인먼트 등 고객의 고품격 라이프스타일을 제안하는 공간으로 거듭나고 있습니다.<br>
					</td>
					<td class="subcon">LHW의 멤버로 세계 럭셔리 호텔들과 어깨를 나란히 하고 있는 서울신라호텔은
						고객 한 분 한분을 배려하는 기품있는 서비스로 세계 각국의 수반들과 외교, 경제, 문화 등의 분야의 명사로부터 찬사를
						받고 있으며, Conde Nast Traveler, Travel &amp; Leisure, Zagat,
						Euromoney등 권위 있는 해외 매체로부터 매년 한국 최고의 호텔로 선정되고 있습니다.<br>
					</td>
				</tr>
			</table>
		</div>
	</div>
	<!-- ==================================== -->
	<%@ include file="../inc/footer.jsp"%>
</body>