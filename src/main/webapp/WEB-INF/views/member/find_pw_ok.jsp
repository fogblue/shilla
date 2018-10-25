<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html>
<head>
<%@ include file="/WEB-INF/inc/head.jsp"%>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/login.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/LogJoin.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/join.css">
<!-- validate 플러그인 참조 -->
<script src="${pageContext.request.contextPath}/assets/plugins/validate/jquery.validate.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/plugins/validate/additional-methods.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/plugins/ajax-form/jquery.form.min.js"></script>
</head>
<body>
	<%@ include file="/WEB-INF/inc/topbar.jsp"%>
	<!--비밀번호 찾기 결과 -->
	<div class="container main">
		<div class="log_form-horizontal">
			<div id="form-group log_fom">
				<div class="find_pw">
				회원님의 이메일로 <br /> 임시비밀번호를 발송해 드렸습니다. <br /> 발급받은 임시
				비밀번호로 로그인해주시기 바랍니다.
				</div>
			<div class="modal-footer">
				<button type="button" class="btn btn_color2" 
				onclick="location.href='${pageContext.request.contextPath}/member/log_main.do' ">로그인</button>
			</div>
			</div>
		</div>
	</div>
	<%@ include file="/WEB-INF/inc/footer.jsp"%>
</body>
</html>