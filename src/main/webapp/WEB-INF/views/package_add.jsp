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
	<!-- ==============시작================== -->
	<div class="container main" id="main">
		<div class="sidebar">
			<!-- 제목 들어갈 곳 -->
			<h3 class="sidebar-header">관리자 페이지</h3>
			<!-- 메뉴 들어갈 곳 -->
			<a href="${pageContext.request.contextPath}/package_add.do" class="imenu info-open">패키지 추가<img src="${pageContext.request.contextPath}/assets/img/sidebar_arr.gif" class="sidebar-arrow"></a>
			<a href="${pageContext.request.contextPath}/room_add.do" class="imenu">객실 추가</a>
			<a href="${pageContext.request.contextPath}/reserv_confirm.do" class="imenu">예약 확인</a>
			<a href="${pageContext.request.contextPath}/enqanswer.do" class="imenu">문의사항 답변</a>
		</div>
		<div class="if-contents">
			<div class="bdb">
				<h3 class="conhead">패키지 추가</h3>
				<div class="ind pull-right">
					<span class="glyphicon glyphicon-home"></span>&nbsp;&nbsp;&nbsp;>&nbsp;&nbsp;&nbsp;About The Shilla&nbsp;&nbsp;&nbsp;>&nbsp;&nbsp;&nbsp; <span class="orng">Awards</span>
				</div>
			</div>
			<form class="form-horizontal" name="package_add" id="package_add" method="post" enctype="multipart/form-data" action="${pageContext.request.contextPath}/package_add_ok.do">
				<h5 class="basic_data_title">기본 정보 입력 (*표시 필수입력사항)</h5>
				<div class="form-group">
					<label for='package_name' class="col-md-2"> <span class='identify'>*</span>패키지 이름
					</label>
					<div class="col-md-10">
						<input type="text" name="package_name" class="form-control" />
					</div>
				</div>
				<div class="form-group">
					<label for='hotel_cate' class="col-md-2"> <span class='identify'>*</span>호텔 지역
					</label>
					<div class="col-md-10">
						<label><input type="radio" name="hotel_cate" value="서울신라호텔" checked />서울신라호텔</label>
						<label><input type="radio" name="hotel_cate" value="제주신라호텔" />제주신라호텔</label>
					</div>
				</div>
				<div class="form-group">
					<label for='package_price' class="col-sm-2"> <span class='identify'>*</span>패키지 가격</label>
					<div class="col-sm-10">
						<label><input type="text" name="package_price" class="form-control" /></label>
					</div>
				</div>
				<div class="form-group">
					<label for='package_content' class="col-sm-2"> <span class='identify'>*</span>패키지 내용</label>
					<div class="col-sm-10">
						<label><textarea name='package_content' class="form-control"></textarea></label>
					</div>
				</div>
				<div class="form-group">
					<label for='package_id' class="col-md-2"> <span class='identify'>*</span>패키지 사진</label>
					<div class="col-md-10">
						<input type="file" name="package_id" multiple />
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