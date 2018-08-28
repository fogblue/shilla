<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!doctype html>
<html>
<head>
<%@ include file="../inc/head.jsp"%>
<link rel="stylesheet" type="text/css" href="/iot5/css/enquiry.css" />
<link rel="stylesheet" type="text/css" href="/iot5/css/info.css" />
</head>
<body>
	<%@ include file="../inc/topbar.jsp"%>
	<!-- ==================================== -->
	<div class="container main">
		<!-- 사이드바 시작 -->
		<div class="sidebar">
			<!-- 제목 들어갈 곳 -->
			<h3 class="sidebar-header">고객문의</h3>
			<!-- 메뉴 들어갈 곳 -->
			<a href="/iot5/info/contactinfo.jsp" class="imenu">연락처</a> <a
				href="/iot5/info/enquiry.jsp" class="imenu">문의하기</a>
		</div>
		<div class="if-contents">
			<div class="bdb">
				<h3 class="conhead">문의하기</h3>
				<div class="ind">
					<span class="glyphicon glyphicon-home"></span> > 문의하기 > <span
						class="orng">Contact Us</span>
				</div>
			</div>
			<!-- 사이드바 & 본문 상단 바 종료 -->
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
				<!-- HTML이 추가될 자리 -->
				<tbody class="enq_target" id="enq_target"></tbody>
				<!-- ending -->
				<tr>
					<th scope="row" class="entabhead"><label for="enq_title"><span
							class="identify">*</span> 제목</label></th>
					<td><input type="text" name="enq_title" id="enq_title" /></td>
				</tr>
				<tr>
					<th scope="row" class="entabhead"><label for="enq_content"><span
							class="identify">*</span> 내용</label></th>
					<td><input type="text" name="enq_content" id="enq_content" /></td>
				</tr>
				<tr>
					<th scope="row" class="entabhead"><label for="enq_content"><span
							class="identify">*</span> 성명</label></th>
					<td><select name="mrmsdr" id="mrmsdr">
							<option value="ms">Ms.</option>
							<option value="mr">Mr.</option>
							<option value="dr">Dr.</option>
					</select> <input type="text" name="enq_uname" id="enq_uname" /></td>
				</tr>
				<tr>
					<th scope="row" class="entabhead"><label for="enq_email"><span
							class="identify">*</span> 이메일</label></th>
					<td><input type="email" name="enq_email" id="enq_email1" /> @
						<input type="email" name="enq_email" id="enq_email2" /> <select
						name="enq_elist" id="enq_elist">
							<option>--- 직접입력 ---</option>
							<option value="naver.com">naver.com</option>
							<option value="hanmail.net">hanmail.net</option>
							<option value="hotmail.com">hotmail.com</option>
							<option value="nate.com">nate.com</option>
							<option value="yahoo.co.kr">yahoo.co.kr</option>
							<option value="empas.com">empas.com</option>
							<option value="dreamwiz.com">dreamwiz.com</option>
							<option value="freechal.com">freechal.com</option>
							<option value="lycos.co.kr">lycos.co.kr</option>
							<option value="korea.com">korea.com</option>
							<option value="gmail.com">gmail.com</option>
							<option value="hanmir.com">hanmir.com</option>
							<option value="paran.com">paran.com</option>
					</select></td>
				</tr>
				<tr>
					<th scope="row" class="entabhead"><label for="enq_title"><span
							class="identify">*</span> 휴대전화</label></th>
					<td><input type="tel" name="enq_title" id="enq_title" /></td>
				</tr>
				<tr>
					<th scope="row" class="entabhead"><label for="enq_title">&nbsp;&nbsp;
							자택전화</label></th>
					<td><input type="tel" name="enq_title" id="enq_title" /></td>
				</tr>

			</table>
			<h5>필수적 개인정보 수집 및 이용에 대한 동의</h5>
			<div class="enq_agreegathering"
				style="overflow: scroll; width: 850px; height: 100px; font-size: 12px; border: 1px solid #eee">
				<p>신라호텔 고객의 문의 및 의견과 관련하여 귀사가 아래와 같이 본인의 개인정보를 수집 및 이용하는데 동의합니다.</p>
				1. 필수적인 개인정보의 수집 ㆍ이용에 관한 사항<br /> ① 수집ㆍ이용 항목 | 성명, 이메일, 휴대전화번호, 유선
				전화번호(자택 또는 직장)<br /> ② 수집ㆍ이용 목적 | 문의에 대한 안내 및 서비스 제공<br /> ③ 보유ㆍ이용
				기간 | 수집ㆍ이용 동의일로부터 5년간<br /> ※위 사항에 대한 동의를 거부할 수 있으나, 이에 대한 동의가 없을
				경우 문의에 대한 안내 및 서비스 제공과 관련된 제반 절차 진행이 불가능 할 수 있음을 알려드립니다.
			</div>
			<div class="enq_checkbox">
				<label><input type="checkbox" name="enq_agreeing"
					value="enq_agreeing">동의함</label>
			</div>
		</div>
	</div>
	<!-- ==================================== -->
	<%@ include file="../inc/footer.jsp"%>
<script id="category_item_tmpl" type="text/x-handlebars-template">
	{{#each item}}
	<option value="{{value}}">{{text}}</option>
	{{/each}}
</script>
	<script type="text/javascript">
		$(function() {
			$(".ecategory").change(function(e) {
				$("#enq_target").empty();
				if ($(this).val() == "hoteldevelop") {
					$.get("/iot5/info/ecategory1.html", function(req) {
						$("#enq_target").append(req);
					}, "html"); // end $.get
				} else {
					$("#enq_target").empty();
					$.get("/iot5/info/ecategory2.html", function(req) {
						$("#enq_target").append(req);
					}, "html"); // end $.get
				}
			}); // end #ecategory2 click function
			
			$("#enq_elist").change(function() {
				var sel = $(this).find("option:selected").val();
				$("#enq_email2").val(sel);
			});
		});
	</script>
</body>