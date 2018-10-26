<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!doctype html>
<html>
<head>
<%@ include file="/WEB-INF/inc/head.jsp"%>
<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/index.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/plugins/lightbox/css/lightbox.min.css" />
</head>
<body>
	<%@ include file="/WEB-INF/inc/topbar.jsp"%>
	<!-- ==============시작================== -->
	<div class="container main" id="main">
		<h1 class="page-header">갤러리</h1>
		<h3 class="sm-header">GALLERY</h3>
		<div class="main_soffcon">
			<div id="main_mconts">
				<a href="${pageContext.request.contextPath}/assets/img/main_ma1.jpg" data-lightbox="room-gallery" data-title="방1"><img src="${pageContext.request.contextPath }/assets/img/main_ma1.jpg" /></a>
				<a href="${pageContext.request.contextPath}/assets/img/main_ma2.jpg" data-lightbox="room-gallery" data-title="방2"><img src="${pageContext.request.contextPath }/assets/img/main_ma2.jpg" /></a>
				<a href="${pageContext.request.contextPath}/assets/img/main_ma3.jpg" data-lightbox="room-gallery" data-title="방3"><img src="${pageContext.request.contextPath }/assets/img/main_ma3.jpg" /></a>
				<a href="${pageContext.request.contextPath}/assets/img/main_ma4.jpg" data-lightbox="room-gallery" data-title="방4"><img src="${pageContext.request.contextPath }/assets/img/main_ma4.jpg" /></a>
				<a href="${pageContext.request.contextPath}/assets/img/main_ma5.jpg" data-lightbox="room-gallery" data-title="방5"><img src="${pageContext.request.contextPath }/assets/img/main_ma5.jpg" /></a>
			</div>
		</div>
		<form class="form-horizontal" name="room_add" id="room_add" method="post" enctype="multipart/form-data" action="${pageContext.request.contextPath}/room_add_ok.do">
			<h5 class="basic_data_title">기본 정보 입력 (*표시 필수입력사항)</h5>
			<div class="form-group">
				<label for='package_name' class="col-md-2">
					<span class='identify'>*</span>패키지 이름
				</label>
				<div class="col-md-10">
					<input type="text" name="package_name" class="form-control" />
				</div>
			</div>
			<div class="form-group">
				<label for='hotel_cate' class="col-md-2">
					<span class='identify'>*</span>호텔 지역
				</label>
				<div class="col-md-10">
					<label><input type="radio" name="hotel_cate" class="form-control" value="서울신라호텔" checked />서울신라호텔</label>
					<label><input type="radio" name="hotel_cate" class="form-control" value="제주신라호텔" />제주신라호텔</label>
				</div>
			</div>
			<div class="form-group">
				<label for='package_price' class="col-sm-2">
					<span class='identify'>*</span>패키지 가격
					</label>
				<div class="col-sm-10">
					<label><input type="text" name="package_price" class="form-control" /></label>
				</div>
			</div>
			<div class="form-group">
				<label for='package_content' class="col-sm-2">
					<span class='identify'>*</span>패키지 내용
				</label>
				<div class="col-sm-10">
					<label><textarea name='package_content' class="form-control"></label>
				</div>
			</div>
			<div class="form-group">
				<label for='package_img' class="col-md-2">
					<span class='identify'>*</span>패키지 사진
				</label>
				<div class="col-md-10">
					<input type="file" name="package_img" multiple />
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