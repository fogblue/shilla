<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!doctype html>
<html>
<head>
<%@ include file="/WEB-INF/inc/head.jsp"%>
<link rel="stylesheet" href="/iot5/css/info.css" />
<link rel="stylesheet" href="/iot5/css/i_seoul.css" />
</head>
<body>
	<%@ include file="/WEB-INF/inc/topbar.jsp"%>
	<!-- ==================================== -->
	<div class="container main">
		<div class="sidebar">
			<!-- 제목 들어갈 곳 -->
			<h3 class="sidebar-header">호텔신라 소개</h3>
			<!-- 메뉴 들어갈 곳 -->
			<a href="/iot5/info/hotelinfo.jsp" class="imenu">개요</a> <a
				href="/iot5/info/seoulshilla.jsp" class="imenu">서울신라호텔</a> <a
				href="/iot5/info/jejushilla.jsp" class="imenu">제주신라호텔</a> <a
				href="/iot5/info/awards.jsp" class="imenu">수상이력</a>
		</div>
		<div class="if-contents">
			<div class="bdb">
				<h3 class="conhead">제주신라호텔</h3>
				<div class="ind">
					<span class="glyphicon glyphicon-home"></span> > About The Shilla >
					<span class="orng">제주신라호텔</span>
				</div>
			</div>
			<!-- 본문 영역 -->
			<div class="imgbox">
				<img src="/iot5/img/jejuMainImg.jpg" alt="jeju main image" />
			</div>
			<br />
			<table class="contentbox">
				<tr>
					<td class="subconhead">An Exclusive Getaway</td>
					<td class="subconhead">A Leading Global Property</td>
				</tr>
				<tr>
					<td class="subcon">휴양지에서의 품격있는 리조트 호텔 문화를 정착하기 위해 연중<br>
						문화 및 엔터테인먼트 프로그램을 상설해 고객들에게 제공하고<br> 있는 제주신라호텔은 레저 전문 직원인
						G.A.O(Guest Activity<br> Organizer), 항공예약부터 여행의 풀 서비스를 제공하는
						T.P.O<br> (Travel Plan Office)등 소프트웨어 부분의 혁신과 문라이트 스위밍,<br>
						글램핑, 와이너리 투어 등 다양한 프로그램을 국내 최초로 운영하여<br> 사계절 체재형 리조트로서의 트랜드를
						이끌어 가고 있습니다.<br> 누구나 한 번쯤 꿈꾸는 품격있고 화려한 일상 탈출, 제주신라호텔<br>
						에서 경험하실 수 있습니다.<br>
					</td>
					<td class="subcon">세계자연문화유산인 제주의 아름다운 풍광을 담은 리조트로써 그<br>
						명성을 쌓아가고 있는 제주신라호텔은 '90년 개관 후부터 지금까지<br> 품격과 문화가 있는 휴식지로써 수많은
						굵직한 국제행사를 성공적으로<br> 치러온 최고의 리조트'입니다.<br> 이국적인 분위기와 최고의
						시설을 선보이며 고객에게 먼저 다가가는<br> 리조트에 특화된 서비스에 호텔에 다녀간 세계의 국가 수반을 비롯<br>
						많은 VIP들에게 크나 큰 찬사를 받아 왔습니다.<br>
					</td>
				</tr>
			</table>
			<hr />
			<div class="shillainfo">
				<img src="/iot5/img/jejuInfo.jpg" alt="The Shilla Info" />
				<ul class="list-inline ij_logo">
					<li class="ij_fb"><a
						href="https://www.facebook.com/theshillajeju" target="_blank">Facebook</a></li>
					<li class="ij_bl"><a href="https://blog.naver.com/shillajeju_"
						target="_blank">Blog</a></li>
					<li class="ij_ta"><a
						href="https://www.tripadvisor.co.kr/Hotel_Review-g297892-d301723-Reviews-The_Shilla_Jeju-Seogwipo_Jeju_Island.html"
						target="_blank">Trip Advisor</a></li>
					<li class="ij_wb"><a href="https://weibo.com/shillahotel/"
						target="_blank">Weibo</a></li>
					<li class="ij_gg"><a
						href="https://plus.google.com/116571259877956708092"
						target="_blank">Google+</a></li>
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