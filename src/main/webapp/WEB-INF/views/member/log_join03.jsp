<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html>
<head>
<%@ include file="/WEB-INF/inc/head.jsp"%>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/login.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/LogJoin.css">
    <!-- validate 플러그인 참조 -->
    <script src="${pageContext.request.contextPath}/assets/plugins/validate/jquery.validate.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/plugins/validate/additional-methods.min.js"></script>

</head>
<body>
	<%@ include file="/WEB-INF/inc/topbar.jsp"%>
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
			<h2 class="log_header2">${loginInfo.userNameKor}님께서는 신라호텔에 정상적으로 가입되셨습니다.</h2>
		</div>

		<div class="logjoin3_body ">
			<div class="finish_box">
				<table class="finish_table">
					<tr>
						<td class="space">회원 번호&nbsp;&nbsp;&nbsp;</td>
						<td class="users_info">&nbsp;&nbsp;&nbsp;${loginInfo.id}</td>
					</tr>
					<tr>
						<td class="space">아이디&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
						<td class="users_info">&nbsp;&nbsp;&nbsp;${loginInfo.userId}</td>
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
				<button type="submit" class="btn btn_color5 btn-md"  onclick="location.href='${pageContext.request.contextPath}/member/log_main.do' ">로그인</button>
			</div>
		</div>

	</div>
	<!-- container end -->


	<script type="text/javascript">
		
	</script>
	<%@ include file="/WEB-INF/inc/footer.jsp"%>
</body>
</html>
