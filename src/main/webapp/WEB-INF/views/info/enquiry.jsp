<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!doctype html>
<html>
<head>
<%@ include file="/WEB-INF/inc/head.jsp"%>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/css/enquiry.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/css/info.css" />
<script src="http://cdn.ckeditor.com/4.4.7/standard/ckeditor.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/regex.js"></script>
</head>
<body>
	<%@ include file="/WEB-INF/inc/topbar.jsp"%>
	<div class="container main">
		<!-- 사이드바 시작 -->
		<div class="sidebar">
			<!-- 제목 들어갈 곳 -->
			<h3 class="sidebar-header">고객문의</h3>
			<!-- 메뉴 들어갈 곳 -->
			<a href="${pageContext.request.contextPath}/info/contactinfo.do"
				class="imenu">연락처</a> <a
				href="${pageContext.request.contextPath}/info/enquiry.do"
				class="imenu info-open">문의하기 <img src="${pageContext.request.contextPath}/assets/img/sidebar_arr.gif" class="sidebar-arrow"></a>
		</div>
		<div class="if-contents">
			<div class="bdb">
				<h3 class="conhead">문의하기</h3>
				<div class="ind pull-right">
					<span class="glyphicon glyphicon-home"></span>&nbsp;&nbsp;&nbsp;>&nbsp;&nbsp;&nbsp;문의하기&nbsp;&nbsp;&nbsp;>&nbsp;&nbsp;&nbsp;<span
						class="orng">고객문의</span>
				</div>
			</div>
			<!-- 사이드바 & 본문 상단 바 종료 -->
			<form action="${pageContext.request.contextPath}/info/write_ok.do"
				name="write_enquiry" method="post" enctype="multipart/form-data">
				<table class="table">
					<tr>
						<th scope="row" class="entabhead"><label for="ecategory"><span
								class="identify">*</span> 구분</label></th>
						<td><label> <input type="radio" class="ecategory"
								name="ecategory" id="ecategory1" value="hoteldevelop" checked>
								호텔개발
						</label>&nbsp;&nbsp;&nbsp;&nbsp; <label> <input type="radio"
								class="ecategory" name="ecategory" id="ecategory2"
								value="askbouthotel" /> 신라호텔
						</label></td>
					</tr>
					<tr style="border-top: none; border-bottom: none;">
						<th scope="row" class="entabhead"><label for="selhotel"><span
								class="identify">*</span> 호텔</label></th>
						<td><select id="hotel_cate" name="hotel_cate">
								<option value="sshihot" id="sshihot">서울신라호텔</option>
								<option value="jshihot" id="jshihot">제주신라호텔</option>
						</select>&nbsp;&nbsp;&nbsp; <span class="ecategory2 enq_hidden"><label><input
									name="qna_type" type="radio" value="의견" /> 의견</label> <label><input
									name="qna_type" type="radio" value="문의" checked /> 문의</label></span></td>
					</tr>
					<tr class="enq_hidden ecategory2">
						<th scope="row" class="entabhead"><label><span
								class="identify">*</span> 관련문의</label></th>
						<td><select name="enq_type" id="enq_type">
								<option id="enq_room" value="enq_room">객실/패키지문의</option>
								<option id="enq_dining" value="enq_dining">다이닝문의</option>
								<option id="enq_wedding" value="enq_wedding">웨딩문의</option>
								<option id="enq_party" value="enq_party">연회/회의문의</option>
								<option id="enq_web" value="enq_web">홈페이지문의</option>
						</select></td>
					</tr>
					<tbody id="enq_ajax"></tbody>
					<tr>
						<th scope="row" class="entabhead"><label for="subject"><span
								class="identify">*</span> 제목</label></th>
						<td><input type="text" name="subject" size="60" /></td>
					</tr>
					<tr>
						<th scope="row" class="entabhead"><label for="content"><span
								class="identify">*</span> 내용</label></th>
						<td><textarea name="content" rows="6" cols="80"></textarea></td>
					</tr>
					<tr>
						<th scope="row" class="entabhead"><label for="user_name_kor"><span
								class="identify">*</span> 성명</label></th>
						<td><input type="text" name="user_name_kor" size="25"
							<c:if test="${loginInfo != null}">value="${loginInfo.userNameKor}" disabled</c:if> /></td>
					</tr>
					<tr>
						<th scope="row" class="entabhead"><label for="email"><span
								class="identify">*</span> 이메일</label></th>
						<td><input type="email" name="email" size="25"
							<c:if test="${loginInfo != null}">value="${loginInfo.email}" disabled</c:if> />
					</tr>
					<tr>
						<th scope="row" class="entabhead"><label for="tel"><span
								class="identify">*</span> 휴대전화</label></th>
						<td><input type="tel" name="tel" size="25"
							<c:if test="${loginInfo != null}">value="${loginInfo.tel}" disabled</c:if> /></td>
					</tr>
					<tr>
						<th scope="row" class="entabhead"><label for="tel_home">&nbsp;&nbsp;
								자택전화</label></th>
						<td><input type="tel" name="tel_home" size="25" /></td>
					</tr>

				</table>
				<h5>필수적 개인정보 수집 및 이용에 대한 동의</h5>
				<div class="enq_agreegathering"
					style="overflow: scroll; width: 850px; height: 100px; font-size: 12px; border: 1px solid #eee">
					<p>신라호텔 고객의 문의 및 의견과 관련하여 귀사가 아래와 같이 본인의 개인정보를 수집 및 이용하는데
						동의합니다.</p>
					1. 필수적인 개인정보의 수집 ㆍ이용에 관한 사항<br /> ① 수집ㆍ이용 항목 | 성명, 이메일, 휴대전화번호, 유선
					전화번호(자택 또는 직장)<br /> ② 수집ㆍ이용 목적 | 문의에 대한 안내 및 서비스 제공<br /> ③
					보유ㆍ이용 기간 | 수집ㆍ이용 동의일로부터 5년간<br /> ※위 사항에 대한 동의를 거부할 수 있으나, 이에 대한
					동의가 없을 경우 문의에 대한 안내 및 서비스 제공과 관련된 제반 절차 진행이 불가능 할 수 있음을 알려드립니다.
				</div>
				<div class="enq_checkbox">
					<label><input type="checkbox" name="enq_agreeing"
						value="enq_agreeing">동의함</label>
				</div>
				<hr />
				<div class="enq_submit">
					<button type="submit" id="enq_submit" class="btn btn-enq-submit">등록</button>
				</div>
			</form>
		</div>
		<!-- if-content ended -->
	</div>
	<%@ include file="/WEB-INF/inc/footer.jsp"%>

	<script type="text/javascript">
		$(function() {
			$(".ecategory").change(function() {
				$(".ecategory2").toggleClass('enq_hidden');
				$("#enq_ajax").empty();
			}); // 구분에 따른 카테고리 변경

			$("#hotel_cate").change(function() {
				$("#enq_dining, #enq_wedding").toggleClass('enq_hidden');
				$("#enq_ajax").empty();
			}); // 호텔 선택지에 따른 카테고리 변경

			$("#enq_type").change(
					function() {
						var sel = $(this).find("option:selected").val();
						$("#enq_ajax").empty();
						$.get("${pageContext.request.contextPath}/info/" + sel,
								function(req) {
									$("#enq_ajax").append(req);
								}, "html"); // end $.get			
					}); // 관련문의 선택에 따른 페이지 전환

			$("#enq_submit").click(
					function() {
						if (!regex.check('input[name=enq_agreeing]',
								' 개인정보 수집 및 이용에 대한 동의는 필수사항입니다.')) {
							return false;
						}
					}); // 개인정보 수집 동의 체크
		});
	</script>
</body>
</html>