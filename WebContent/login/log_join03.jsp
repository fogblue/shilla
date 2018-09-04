<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!doctype html>
<html>
<head>
<%@ include file="../inc/head.jsp"%>
<link rel="stylesheet" type="text/css" href="/iot5/css/login.css">
<link rel="stylesheet" type="text/css" href="/iot5/css/LogJoin.css">
    <!-- validate 플러그인 참조 -->
    <script src="plugins/validate/jquery.validate.min.js"></script>
    <script src="plugins/validate/additional-methods.min.js"></script>
    <!-- sweetalert 플러그인 참조 -->
    <script src="plugins/sweetalert/sweetalert2.min.js"></script>
</head>
<body>
	<%@ include file="../inc/topbar.jsp"%>
	<div class="container main_box ">

		<div class="log_top">
			<h1 class="log_top_header">회원가입</h1>
			<div class="ind2">
				<span class="glyphicon glyphicon-home"></span>&nbsp; > &nbsp;<span
					class="orng">&nbsp;회원가입&nbsp;</span>
			</div>
		</div>

		<div class="log_box1">
			<span class="pull-left log_step3">약관동의 회원정보입력 가입완료</span>
		</div>

		<div class="log_box2">
			<h2 class="log_top_header1">감사합니다.</h2>
			<h2 class="log_header2">(이름)님께서는 신라호텔에 정상적으로 가입되셨습니다.</h2>
		</div>

		<div class="logjoin3_body ">
			<div class="finish_box">
				<table class="finish_table">
					<tr>
						<td class="space">회원 번호&nbsp;&nbsp;&nbsp;</td>
						<td class="users_info">&nbsp;&nbsp;&nbsp;(6자리 랜덤)</td>
					</tr>
					<tr>
						<td class="space">아이디&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
						<td class="users_info">&nbsp;&nbsp;&nbsp;(사용자 아이디)</td>
					</tr>
				</table>
			</div>
			<div class="notice1" >
				<p>회원번호는 가입 시 기재하신 이메일로도 발송 되었습니다.</p>
				<p>로그인 하신 후 다양한 혜택과 서비스를 경험해보시기 바랍니다.</p>
			</div>
		</div>
		<!-- log_body end -->
		<div class="log_footer">
			<div class="agree_submit">
				<button type="submit" class="btn btn_color5 btn-md"  onclick="location.href='/iot5/login/log_main.jsp' ">로그인</button>
			</div>
		</div>

	</div>
	<!-- container end -->


	<script type="text/javascript">
		
	</script>
	<%@ include file="../inc/footer.jsp"%>
</body>
</html>
