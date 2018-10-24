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
	<div class="container main">
		<div class="form-group log-form">
			<div class="log_bdb">
				<h1 class="log_header">회원번호 또는 아이디 찾기</h1>
			</div>

			<div class="ind1">
				<span class="glyphicon glyphicon-home"></span>&nbsp; > &nbsp;<span
					class="orng">&nbsp;회원번호 또는 아이디 찾기&nbsp;</span>
			</div>
			<br />

			<h2 class="log_header2">가입할 때 입력하셨던 성명(한글)과 이메일을 입력해 주시기 바랍니다.</h2>
		</div>

		<div class="log_form-horizontalll">
			<div id="form-group">
				<form action="${pageContext.request.contextPath}/member/find_id_ok.do"
					name="login" method="post">
					<div class="form-group">
						<label for='find_id_name_kor' class="col-md-3"><span
							class='identify'>*</span>성명(한글) </label>
						<div class="col-md-10">
							<input type="text" name="find_id_name_kor" id="find_id_name_kor"
								class="form-control" />
						</div>
					</div>
					<div class="form-group">
						<label for='find_id_email' class="col-md-3"><span
							class='identify'>*</span>이메일 </label>
						<div class="col-md-10">
							<input type="text" name="find_id_email" id="find_id_email"
								class="form-control" />
						</div>
					</div>
					<div>
						<button onclick="location.href='${pageContext.request.contextPath}/member/find_id_ok.do' "
						 class="btn btn_color1_1 btn-lg" type="submit">확인</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	

<%@ include file="/WEB-INF/inc/footer.jsp"%>




</body>
</html>