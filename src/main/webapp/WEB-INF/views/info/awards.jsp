<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!doctype html>
<html>
<head>
<%@ include file="/WEB-INF/inc/head.jsp"%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/info.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/awards.css" />
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
				href="${pageContext.request.contextPath}/info/awards.do" class="imenu info-open">수상이력 <img src="${pageContext.request.contextPath}/assets/img/sidebar_arr.gif" class="sidebar-arrow"></a>
		</div>
		<div class="if-contents">
			<div class="bdb">
				<h3 class="conhead">수상이력</h3>
				<div class="ind pull-right">
					<span class="glyphicon glyphicon-home"></span>&nbsp;&nbsp;&nbsp;>&nbsp;&nbsp;&nbsp;About The Shilla&nbsp;&nbsp;&nbsp;>&nbsp;&nbsp;&nbsp;
					<span class="orng">Awards</span>
				</div>
			</div>
			<div class="imgbox">
				<img src="${pageContext.request.contextPath}/assets/img/awardsMainImg.jpg" alt="awards main image" />
			</div>
			<br /><br />
			<div class="con1">
				<span class="i_awardshead">Awards</span> &nbsp;&nbsp;최고에 어울리는 전통과
				영예, 세계로부터 받은 수상경력이 그 자부심을 입증합니다.
				<table class="table">
					<tr class="onecell">
						<th class="i_awardsyr">2018.</th>
						<td class="i_awardsmth">March</td>
						<td>한국능률협회컨설팅 선정, 한국산업의 브랜드파워(K-BPI) 호텔 부문 1위 - 신라호텔</td>
					</tr>
					<tr class="onecell">
						<th scope="row" rowspan="2" class="i_awardsyr">2017.</th>
						<td class="i_awardsmth">February</td>
						<td>Forbes Travel Guide 4성 호텔 선정</td>
					</tr>
					<tr>
						<td class="i_awardsmth">February</td>
						<td>아시아 50 베스트 레스토랑 38위 - 서울신라호텔 라연</td>
					</tr>
					<tr class="onecell">
						<th scope="row" rowspan="3" class="i_awardsyr">2016.</th>
						<td class="i_awardsmth">February</td>
						<td>아시아 50 베스트 레스토랑 50위 - 서울신라호텔 라연</td>
					</tr>
					<tr>
						<td class="i_awardsmth">October</td>
						<td>TTG Awards 서울지역 최고 시티 호텔로 국내 유일 선정</td>
					</tr>
					<tr>
						<td class="i_awardsmth">November</td>
						<td>미쉐린 가이드 서울 2017 3 스타 선정 - 서울신라호텔 라연</td>
					</tr>
					<tr class="onecell">
						<th scope="row" rowspan="2" class="i_awardsyr">2015.</th>
						<td class="i_awardsmth">March</td>
						<td>아시아 50 베스트 레스토랑 38위 서울신라호텔 라연</td>
					</tr>
					<tr>
						<td class="i_awardsmth">October</td>
						<td>TTG Awards 서울지역 최고 시티 호텔로 국내 유일 선정</td>
					</tr>
					<tr class="onecell">
						<th scope="row" class="i_awardsyr">2013.</th>
						<td class="i_awardsmth">January</td>
						<td>Travel + Leisure, 세계 최고 500대 호텔 중 서울지역 최고호텔 선정</td>
					</tr>
					<tr class="onecell">
						<th scope="row" class="i_awardsyr">2012.</th>
						<td class="i_awardsmth">August</td>
						<td>Travel+Leisure, World's Best Awards, Ranked No. 16 on
							City Hotels in Asia List</td>
					</tr>
					<tr class="onecell">
						<th scope="row" class="i_awardsyr">2010.</th>
						<td class="i_awardsmth">November</td>
						<td>Institutional Investor, Best Hotel by City, Best Hotel in
							Seoul</td>
					</tr>
					<tr class="onecell">
						<th scope="row" rowspan="3" class="i_awardsyr">2009.</th>
						<td class="i_awardsmth">October</td>
						<td>서울신라호텔, 6년 연속 서울 지역 최고의 호텔 선정 자갓(ZAGAT) 2009/10 호텔 부문 최고
							평점</td>
					</tr>
					<tr>
						<td class="i_awardsmth">October</td>
						<td>The 20th Annual TTG Travel Awards 2009 서울지역 최고 시티호텔로 국내
							유일 선정</td>
					</tr>
					<tr>
						<td class="i_awardsmth">November</td>
						<td>Institutional Investor, 2009 월드 베스트 100대 호텔 선정, 서울지역 최고
							점수 획득</td>
					</tr>
					<tr class="onecell">
						<th scope="row" rowspan="4" class="i_awardsyr">2008.</th>
						<td class="i_awardsmth">January</td>
						<td>Travel + Leisure, 세계 최고 500대 호텔로 2년 연속 서울지역 유일 선정</td>
					</tr>
					<tr>
						<td class="i_awardsmth">April</td>
						<td>ZAGAT, 국내 호텔 중 최고 점수 획득</td>
					</tr>
					<tr>
						<td class="i_awardsmth">October</td>
						<td>The 19th Annual TTG Travel Awards 2008 서울지열 최고 시티호텔로 국내
							유일 선정</td>
					</tr>
					<tr>
						<td class="i_awardsmth">November</td>
						<td>Institutional Investor, 세계 100대 우수 호텔 선정</td>
					</tr>
					<tr class="onecell">
						<th scope="row" rowspan="3" class="i_awardsyr">2007.</th>
						<td class="i_awardsmth">January</td>
						<td>Asiamoney, 독자대상 설문조사에서 국내 최고 호텔 선정</td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td>Travel + Leisure, 세계 최고 500대 호텔로 서울 지역 최고 호텔 선정 <br>
							ZAGAT, 국내 호텔 중 최고 점수 획득
						</td>
					</tr>
					<tr>
						<td class="i_awardsmth">October</td>
						<td>The 19th Annual TTG Travel Awards 2008 서울지열 최고 시티호텔로 국내
							유일 선정</td>
					</tr>
					<tr class="onecell">
						<th scope="row" rowspan="4" class="i_awardsyr">2006.</th>
						<td class="i_awardsmth">April</td>
						<td>Zagat, 국내 호텔 중 최고 점수 획득</td>
					</tr>
					<tr>
						<td class="i_awardsmth">August</td>
						<td>Travel + Leisure, 톱 50호텔로 서울지역 유일 선정</td>
					</tr>
					<tr>
						<td class="i_awardsmth">November</td>
						<td>Travel + Leisure, 독자 대상 설문조사에서 베스트 비지니스 호텔로 서울지역 유일 선정</td>
					</tr>
					<tr>
						<td class="i_awardsmth">November</td>
						<td>Conde Nast Traveller, 아시아 톱 75 호텔 중 서울지역 유일 선정</td>
					</tr>
					<tr class="onecell">
						<th scope="row" rowspan="3" class="i_awardsyr">2007.</th>
						<td class="i_awardsmth">January</td>
						<td>세계 최고 500대 호텔로 서울 지역 유일 선정<br> 골드 리스트 서울 지역 유일 선정
						</td>
					</tr>
					<tr>
						<td class="i_awardsmth">April</td>
						<td>5 April, ZAGAT, 국내 호텔 중 최고 점수 획득</td>
					</tr>
				</table>
			</div>
		</div>
	</div>
	<!-- ==================================== -->
	<%@ include file="/WEB-INF/inc/footer.jsp"%>
</body>
</html>