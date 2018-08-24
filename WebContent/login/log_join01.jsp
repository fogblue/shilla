<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!doctype html>
<html>
<head>
<%@ include file="../inc/head.jsp"%>
</head>
<body>
	<%@ include file="../inc/topbar.jsp"%>
	<div class="container main_box ">

		<div class="log_top">
			<h1 class="log_top_header">신라리워즈 가입</h1>
			<div class="ind2">
				<span class="glyphicon glyphicon-home"></span>&nbsp; > &nbsp;<span
					class="orng">&nbsp;회원가입&nbsp;</span>
			</div>
		</div>

		<div class="log_box1">
			<span class="pull-left log_step1">약관동의 회원정보입력 가입완료</span>
		</div>

		<div class="log_box2">
			<h2 class="log_top_header1">신라리워즈에 오신 것을 환영합니다.</h2>
			<h2 class="log_header2">약관 및 개인정보 수집이용사항을 확인하시고 동의여부에 체크하여주시기
				바랍니다.</h2>
		</div>

		<div class="log_body ">
			<div class="bdbb1">
				<h3>약관동의</h3>
			</div>
			
			<h3 class="log_h3">신라리워즈 이용약관에 대한 동의 (필수)</h3>
			<div class="log_text1"
				style="overflow: scroll; width: 850px; height: 150px;">
					
					<!-- Large modal -->
					<button type="button" class="btn btn-primary" data-toggle="modal" data-target=".bs-example-modal-lg">Large modal</button>
				
					<div class="modal fade bs-example-modal-md" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
					  <div class="modal-dialog modal-lg">
					    <div class="modal-content">
					      <%@ include file="../inc/log_text01.jsp"%>
					    </div>
					  </div>
					</div>
					
				
				</div>
			</div>
		</div>



	<%@ include file="../inc/footer.jsp"%>
</body>
</html>
