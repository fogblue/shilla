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
			<h3 class="sidebar-header">호텔신라 소개</h3>
			<!-- 메뉴 들어갈 곳 -->
			<ul class="list-group if-sidebar-menu">
				<li class="list-group-item inme1"><a
					href="/iot5/info/hotelinfo.jsp" class="imenu">개요</a></li>
				<li class="list-group-item inme1"><a
					href="/iot5/info/seoulshilla.jsp" class="imenu">서울신라호텔</a></li>
				<li class="list-group-item inme1"><a
					href="/iot5/info/hotelinfo.jsp" class="imenu">제주신라호텔</a></li>
				<li class="list-group-item inme1"><a
					href="/iot5/info/hotelinfo.jsp" class="imenu">수상이력</a></li>
			</ul>
		</div>
		<div class="if-contents">
			<div class="bdb">
				<h3 class="conhead">개요</h3>
				<div class="ind">
					<span class="glyphicon glyphicon-home"></span> > About The Shilla >
					<span class="orng">Overview</span>
				</div>
			</div>
			<div class="imgbox">
				<img src="/iot5/img/brandMainImg.jpg" alt="exmimg" />
			</div>
			<br />
			<div class="con1">
				<h3>Samsung Group Affiliate</h3>
				<p>호텔신라는 수많은 국빈의 방문과 국제행사를 치러내며‘삼성 그룹을 대표하는 얼굴’,
					‘한국을 대표하는 호텔’로서 자부심과 책임감을 가지고 우리나라 서비스 산업의 견인차 역할을 해오고 있습니다.</p>
				<p>호텔신라는 천년 역사와 함께 가장 찬란한 문화예술의 꽃을 피웠던 신라 왕조의 이름에서 유래하였으며, 삼성그룹
					故 이병철 초대 회장의 뜻에 따라 1979년 3월 개관하였습니다.</p>
					<br />
				<h3>The Best Hospitality Company</h3>
				<p>
					호텔신라는‘최고의 호스피탈리티 기업’을 목표로 오랜 세월동안 품위와 전통을 유지하며 고객들의 마음을 사로잡아 왔습니다.<br />
					LHW 가입을 통해 세계 최고의 럭셔리 호텔들과 어깨를 나란히 하는가 하면 전통이라는 지붕 위에 모더니즘적 디자인 요소를
					가미, 삶에 여유와 품격을 한층 높여 주는 프리미엄 라이프 스타 일 공간으로 변화를 거듭해 왔습니다.<br />
					호텔신라는 앞으로도 끊임없는 창조적 혁신과 도전을 바탕으로 차별화된 최상의 가치를 선사하는 글로벌 호스피탈리티 명문
					기업으로 성장할 것을 약속드립니다.
				</p>
				<br />
				<h3>Vision</h3>
				<p>
					Premium Lifestyle Leading Company<br /> 최고의 품격과 신뢰를 바탕으로 고객이 꿈꾸는
					라이프스타일을 제공하는 글로벌 선도기업
				</p>
				<br />
					<h3>Mission</h3>
					<p>우리는 최고의 라이프스타일 전문가로서 더 많은 인류에게 품격과 자부심을 경험케 한다.</p>
					<br />
				<table>
					<tr class="missionbox">
						<td class="artibox">
							<h4>신라인으로서 미션</h4>
							<hr class="artiboxhr" />
							우리는 Premium Lifestyle을<br> 선도하는 신라인으로서<br> 각각의 분야에서<br>
							최고의 전문가로 성장한다.
						</td>
					</tr>
					<tr class="missionbox">
						<td class="artibox">
							<h4>고객에 대한 미션</h4>
							<hr class="artiboxhr" />
							우리는 더 많은 고객이<br> 다양한 생활영역에서<br> 신라만의 품격과<br> 자부심을
							경험케 한다.
						</td>
					</tr>
					<tr class="missionbox">
						<td class="artibox">
							<h4>사회에 대한 미션</h4>
							<hr class="artiboxhr" />
							우리는 지속적인 혁신과<br> 성장을 통해 인류가<br> 더 나은 삶을 누릴 수 있도록<br>
							기여한다.
						</td>
					</tr>
				</table>
				<br />
				<div class="pridebox">
					<h3>Core Value Pride Of The Shilla</h3>
					<ul>
						<li>모든 사업에 최고를 지향합니다</li>
						<li>모든 업무에서 혁신을 추구합니다</li>
						<li>모든 고객에게 정성을 다합니다</li>
						<li>모든 신라인은 서로를 존중합니다</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<!-- ==================================== -->
	<%@ include file="../inc/footer.jsp"%>
</body>