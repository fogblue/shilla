<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!doctype html>
<html>
<head>
<%@ include file="../inc/head.jsp"%>
<link rel="stylesheet" type="text/css" href="/iot5/css/enquiry.css" />
<link rel="stylesheet" type="text/css" href="/iot5/css/info.css" />
<!-- Ajax Helper -->
<script src="/iot5/plugins/ajax/ajax_helper.js"></script>
<link rel="stylesheet" type="text/css" href="/iot5/plugins/ajax/ajax_helper.css" />
<!-- Handlebars -->
<script src="/iot5/plugins/handlebars/handlebars-v4.0.5.js"></script>
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
					<td><label> <input type="radio" name="ecategory"
							id="ecategory1" value="hoteldevelop" checked> 호텔개발
					</label>&nbsp;&nbsp;&nbsp;&nbsp; <label> <input type="radio"
							name="ecategory" id="ecategory2" value="askbouthotel" /> 신라호텔
					</label></td>
				</tr>
				<!-- HTML이 추가될 자리 -->
				<tbody class="enq_target" id="enq_target"></tbody>
				<!-- ending -->
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
				<label><input type="checkbox" name="enq_agreeing" value="enq_agreeing">동의함</label>
			</div>
		</div>
	</div>
	<!-- ==================================== -->
	<%@ include file="../inc/footer.jsp"%>
	
	<script type="text/javascript">
		$(function() {
			$("#ecategory1").change(function(e) {
				$("#enq_target").empty();
				$.get("/iot5/info/ecategory1.html", function(req) {
						$("#enq_target").append(req);
					}, "html"); // end $.get
				}); // end #ecategory2 click function
			$("#ecategory2").change(function(e) {
				$("#enq_target").empty();
				$.get("/iot5/info/ecategory2.html", function(req) {
						$("#enq_target").append(req);
					}, "html"); // end $.get
				}); // end #ecategory2 click function
			}); 
	</script>
</body>