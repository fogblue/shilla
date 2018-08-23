<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!doctype html>
<html>
<head>
	<%@ include file="../inc/head.jsp" %>
</head>
<body>
	<%@ include file="../inc/topbar.jsp" %>
	<!-- ============시작================== -->
	<div class="container mcontainer main">
		<div class="sidebar col-md-3">
			<div class="bdb">
				<!-- 제목 들어갈 곳 -->
				<h2>마이페이지</h2>
			</div>
			<div>
				<!-- 메뉴 들어갈 곳 -->
				
			</div>
		</div>
		<div class="contents col-md-9">
			<div class="bdb contents-header">
				<h2>예약확인/취소</h2>
				<p class="pull-right">현재위치경로 들어갈 곳</p>
			</div>
			<div>
				<p>객실 및 패키지 예약 내역을 확인하실 수 있습니다.</p>
			</div>
			<div class="bd">
				<div>
					기간조회
					<a href="#" type="button" class="btn btn-default">전체</a>
					<!-- 데이트피커 쓸 곳 -->
					<a href="#" type="button" class="btn btn-warning">조회</a>
				</div>
				<div>
					<h4 class="bdb2">객실 / 패키지 예약</h4>
					<div>
						<p>Total : </p>
						<table class="contents-table">
							<tr>
								<td>예약번호</td>
								<td>호텔</td>
								<td>객실/패키지</td>
								<td>체크인/체크아웃</td>
								<td>예약상태</td>
							</tr>
							<tr>
								<td colspan="5">자료가 없습니다.</td>
							</tr>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- ==============끝================== -->
	<%@ include file="../inc/footer.jsp" %>
</body>
</html>