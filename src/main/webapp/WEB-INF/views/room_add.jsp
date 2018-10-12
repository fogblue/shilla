<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!doctype html>
<html>
<head>
<%@ include file="/WEB-INF/inc/head.jsp"%>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/assets/plugins/lightbox/css/lightbox.min.css" />
</head>
<body>
	<!-- ==============시작================== -->
	<div class="container main" id="main">
		<h1 class="page-header">갤러리</h1>
		<h3 class="sm-header">GALLERY</h3>
		<div class="main_soffcon">
			<div id="main_mconts">
				<a href="${pageContext.request.contextPath}/assets/img/main_ma1.jpg"
					data-lightbox="shilla-gallery" data-title="방1"><img
					src="${pageContext.request.contextPath }/assets/img/main_ma1.jpg" /></a>
				<a href="${pageContext.request.contextPath}/assets/img/main_ma2.jpg"
					data-lightbox="shilla-gallery" data-title="방2"><img
					src="${pageContext.request.contextPath }/assets/img/main_ma2.jpg" /></a>
				<a href="${pageContext.request.contextPath}/assets/img/main_ma3.jpg"
					data-lightbox="shilla-gallery" data-title="방3"><img
					src="${pageContext.request.contextPath }/assets/img/main_ma3.jpg" /></a>
				<a href="${pageContext.request.contextPath}/assets/img/main_ma4.jpg"
					data-lightbox="shilla-gallery" data-title="방4"><img
					src="${pageContext.request.contextPath }/assets/img/main_ma4.jpg" /></a>
				<a href="${pageContext.request.contextPath}/assets/img/main_ma5.jpg"
					data-lightbox="shilla-gallery" data-title="방5"><img
					src="${pageContext.request.contextPath }/assets/img/main_ma5.jpg" /></a>
			</div>
		</div>
		<form class="form-horizontal" name="room_add" id="room_add"
			method="post" enctype="multipart/form-data"
			action="${pageContext.request.contextPath}/room_add_ok.do">
			<h5 class="basic_data_title">기본 정보 입력 (*표시 필수입력사항)</h5>
			<div class="form-group">
				<label for='hotel_cate' class="col-md-2"><span
					class='identify'>*</span>호텔 지역 </label>
				<div class="col-md-10">
					<label><input type="radio" name="hotel_cate"
						class="form-control" value="서울신라호텔" checked />서울신라호텔</label> <label><input
						type="radio" name="hotel_cate" class="form-control" value="제주신라호텔" />제주신라호텔</label>
				</div>
			</div>
			<div class="form-group">
				<label for='room_type' class="col-md-2"><span
					class='identify'>*</span>객실 유형 </label>
				<div class="col-md-10">
					<label><input type="radio" name="room_type" id="room_type"
						class="form-control" value="Business Deluxe" checked /> Business
						Deluxe</label> <label><input type="radio" name="room_type2"
						id="room_type" class="form-control"
						value="Executive Business Deluxe" /> Executive Business Deluxe</label>
				</div>
			</div>
			<div class="form-group">
				<label for='bed_type' class="col-md-2"><span
					class='identify'>*</span>침대 유형 </label>
				<div class="col-md-3 col-md-10">
					<label><input type="radio" name="bed_type" id="bed_type"
						class="form-control" value="Twin" checked />Twin</label> <label><input
						type="radio" name="bed_type" id="bed_type2" class="form-control"
						value="Double" />Double</label>
				</div>
			</div>
			<div class="form-group">
				<label for='room_price' class="col-md-2"><span
					class='identify'>*</span>객실 가격 </label>
				<div class="col-md-10">
					<input type="text" name="room_price" id="room_price"
						class="form-control" />
				</div>
			</div>
			<div class="form-group">
				<label for='exbed' class="col-md-2"><span class='identify'>*</span>침대
					추가 가격 </label>
				<div class="col-md-10">
					<input type="text" name="exbed" id="exbed" class="form-control"
						value="30000" />
				</div>
			</div>
			<div class="form-group">
				<label for='meal' class="col-md-2"> <span class='identify'>*</span>조식
					가격
				</label>
				<div class="col-md-10">
					<input type="text" name="meal" id="meal" class="form-control"
						value="30000" />
				</div>
			</div>
			<div class="form-group">
				<label for='room_img' class="col-md-2"><span
					class='identify'>*</span>객실 사진 </label>
				<div class="col-md-10 calendar_box">
					<input type="file" name="room_img" multiple />
				</div>
			</div>
			<div class="form-group">
				<div class="text-center">
					<button type="submit" class="btn btn_color6 btn-md">등록하기</button>
				</div>
			</div>
		</form>
	</div>
	<!-- ==============끝================== -->
	<!-- json 데이터를 정의한 외부 파일 로드하기 -->
	<script
		src="${pageContext.request.contextPath}/assets/plugins/lightbox/js/lightbox.js"></script>
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