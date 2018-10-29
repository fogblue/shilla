<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html>
<head>
<%@ include file="/WEB-INF/inc/head.jsp"%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/info.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/awards.css" />
</head>
<body>
	<%@ include file="/WEB-INF/inc/topbar.jsp"%>
	<!-- ==============시작================== -->
	<div class="container main" id="main">
		<div class="sidebar">
			<!-- 제목 들어갈 곳 -->
			<h3 class="sidebar-header">관리자 페이지</h3>
			<!-- 메뉴 들어갈 곳 -->
			<a href="${pageContext.request.contextPath}/package_add.do" class="imenu">패키지 추가</a>
			<a href="${pageContext.request.contextPath}/room_add.do" class="imenu info-open">객실 추가<img src="${pageContext.request.contextPath}/assets/img/sidebar_arr.gif" class="sidebar-arrow"></a>
			<a href="${pageContext.request.contextPath}/reserv_confirm.do" class="imenu">예약 확인</a>
			<a href="${pageContext.request.contextPath}/enqanswer.do" class="imenu">문의사항 답변</a>
		</div>
		<div class="if-contents">
			<div class="bdb">
				<h3 class="conhead">객실 보기</h3>
				<div class="ind pull-right">
					<span class="glyphicon glyphicon-home"></span>&nbsp;&nbsp;&nbsp;>&nbsp;&nbsp;&nbsp;관리자 페이지&nbsp;&nbsp;&nbsp;>&nbsp;&nbsp;&nbsp; <span class="orng">객실 추가</span>
				</div>
			</div>
		<form class="form-horizontal" name="room_add" id="room_add" method="post" enctype="multipart/form-data" action="${pageContext.request.contextPath}/room_add_ok.do">
			<h5 class="basic_data_title">기본 정보 입력 (*표시 필수입력사항)</h5>
			<div class="form-group">
				<label for='room_no' class="col-md-2">
					<span class='identify'>*</span>방 번호
				</label>
				<div class="col-md-10">
					<input type="text" name="room_no" id="room_no" class="form-control" />
				</div>
			</div>
			<div class="form-group">
				<label for='hotel_cate' class="col-md-2">
					<span class='identify'>*</span>호텔 지역
				</label>
				<div class="col-md-10">
					<label><input type="radio" name="hotel_cate" value="서울신라호텔" checked />서울신라호텔</label>
					<label><input type="radio" name="hotel_cate" value="제주신라호텔" />제주신라호텔</label>
				</div>
			</div>
			<div class="form-group">
				<label for='room_type' class="col-sm-2">
					<span class='identify'>*</span>객실 유형
					</label>
				<div class="col-sm-10">
					<label><input type="radio" name="room_type" id="room_type1" value="Business Deluxe" checked /> Business Deluxe</label>
					<label><input type="radio" name="room_type" id="room_type2" value="Executive Business Deluxe" /> Executive Business Deluxe</label>
				</div>
			</div>
			<div class="form-group">
				<label for='bed_type' class="col-sm-2">
					<span class='identify'>*</span>침대 유형
				</label>
				<div class="col-sm-10">
					<label><input type="radio" name="bed_type" id="bed_type1" value="Twin" checked />Twin</label>
					<label><input type="radio" name="bed_type" id="bed_type2" value="Double" />Double</label>
				</div>
			</div>
			<div class="form-group">
				<label for='room_price' class="col-sm-2">
					<span class='identify'>*</span>객실 가격
				</label>
				<div class="col-sm-10">
					<input type="text" name="room_price" id="room_price" class="form-control" />
				</div>
			</div>
			<div class="form-group">
				<label for='package_id' class="col-md-2">
					<span class='identify'>*</span>패키지 ID
				</label>
				<div class="col-md-10">
					<input type="text" name="package_id" id="package_id" class="form-control" value="1" />
				</div>
			</div>
			<div class="form-group">
				<label for='meal' class="col-md-2">
					<span class='identify'>*</span>조식 가격
				</label>
				<div class="col-md-10">
					<input type="text" name="meal" id="meal" class="form-control" value="30000" />
				</div>
			</div>
			<div class="form-group">
				<label for='room_img' class="col-md-2">
					<span class='identify'>*</span>객실 사진
				</label>
				<div class="col-md-10 calendar_box">
					<input type="file" name="room_id" multiple />
				</div>
			</div>
			<div class="form-group">
				<div class="text-center">
					<button type="submit" class="btn btn_color6 btn-md">등록하기</button>
				</div>
			</div>
		</form>
		</div>
	</div>
	<!-- ==============끝================== -->
	<%@ include file="/WEB-INF/inc/footer.jsp"%>
	<!-- json 데이터를 정의한 외부 파일 로드하기 -->
	<script src="${pageContext.request.contextPath}/assets/plugins/lightbox/js/lightbox.js"></script>
	<script>
		lightbox.option({
			'resizeDuration' : 200,
			'wrapAround' : true,
			'max-Height' : 500,
			'fitViewport' : true
		});
	</script>
</body>
</html>