<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!doctype html>
<html>
<head>
	<%@ include file="inc/head.jsp" %>
</head>
<body>
	<%@ include file="inc/topbar.jsp" %>
	<!-- ==================================== -->
	<div class="container main">
		<div class="sidebar col-md-3">
			<div class="bdb">
				<!-- 제목 들어갈 곳 -->
				<h1>마이페이지</h1>
			</div>
			<div>
				<!-- 메뉴 들어갈 곳 -->
			</div>
		</div>
		<div class="contents col-md-9">
			<div class="bdb contents-header">
				<h1>예약확인/취소</h1>
				<p class="pull-right">현재위치경로 들어갈 곳</p>
			</div>
			<div>
				<p>객실 및 패키지 예약 내역을 확인하실 수 있습니다.</p>
			</div>
			<div>
				<div>
					<!-- 데이터피커 쓸 곳 -->
					<a href="#" type="button" class="btn btn-warning">조회</a>
				</div>
				<div>
					
				</div>
			</div>
		</div>
	</div>
	<!-- ==================================== -->
	<%@ include file="inc/footer.jsp" %>
</body>
</html>