<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!doctype html>
<html>
<head>
<%@ include file="/WEB-INF/inc/head.jsp"%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/info.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/enquiry.css" />
</head>
<body>
	<%@ include file="/WEB-INF/inc/topbar.jsp"%>
	<!-- ==================================== -->
	<div class="container main">
		<div class="sidebar">
			<!-- 제목 들어갈 곳 -->
			<h3 class="sidebar-header">고객문의</h3>
			<!-- 메뉴 들어갈 곳 -->
			<a href="${pageContext.request.contextPath}/info/contactinfo.do" class="imenu info-open">연락처 <img src="${pageContext.request.contextPath}/assets/img/sidebar_arr.gif" class="sidebar-arrow"></a>
			<a href="${pageContext.request.contextPath}/info/enquiry.do" class="imenu">문의하기</a>
		</div>
		<div class="if-contents">
			<div class="bdb">
				<h3 class="conhead">연락처</h3>
				<div class="ind pull-right">
					<span class="glyphicon glyphicon-home"></span>&nbsp;&nbsp;&nbsp;>&nbsp;&nbsp;&nbsp;문의하기&nbsp;&nbsp;&nbsp;>&nbsp;&nbsp;&nbsp;
					<span class="orng">Contact Us</span>
				</div>
			</div>
			<strong class="belowheader">호텔 별 고객상담 안내</strong>
			<br />
			<div class="con1">
			<h5>THE SHILLA</h5>
				<table class="table">
						<tr>
							<th scope="row" rowspan="3" class="ctabhead">서울신라호텔</th>
							<td>대표전화</td>
							<td>02-33-3131</td>
						</tr>
						<tr>
							<td>객실예약</td>
							<td>02-2230-3310</td>
						</tr>
						<tr>
							<td colspan="2" class="busihour">평일(월~금요일) 08:00~20:00, 토요일 10:00~17:00, 일요일 10:00~16:00, 공휴일 09:00~17:00</td>
						</tr>
						<tr>
							<th scope="row" rowspan="3" class="ctabhead">제주신라호텔</th>
							<td>대표전화</td>
							<td>064-735-5114</td>
						</tr>
						<tr>
							<td>객실예약</td>
							<td>(대표) 1588-1142</td>
						</tr>
						<tr>
							<td colspan="2" class="busihour">평일(월~금요일) 08:00~19:00, 토요일 08:00~18:00, 일요일 09:00~16:00, 공휴일 09:00~16:00</td>
						</tr>
				</table>
			</div>
		</div>
	</div>
	<!-- ==================================== -->
	<%@ include file="/WEB-INF/inc/footer.jsp"%>
</body>