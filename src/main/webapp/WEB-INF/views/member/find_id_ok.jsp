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
	<!--아이디 찾기 결과 -->
	<div class="container main">
		<div class="log_form-horizontal">
			<div id="form-group log_fom">
				<table class="table log_fom">
					<tr>
						<td class="space">${member.userNameKor}님의회원
							번호&nbsp;&nbsp;&nbsp;</td>
						<td class="users_info">&nbsp;&nbsp;&nbsp;${member.id}</td>
					</tr>
					<tr>
						<td class="space">아이디&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
						<td class="users_info">&nbsp;&nbsp;&nbsp;${member.userId}</td>
					</tr>
				</table>

				<div class="footer">
					<button type="button" class="btn btn_color2_1"
					onclick="location.href='${pageContext.request.contextPath}/member/log_main.do' ">로그인</button>
					<button type="button" class="btn btn_color3_1"
						onclick="location.href='${pageContext.request.contextPath}/member/find_pw.do' "
						id="pw_find">비밀번호 찾기</button>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="/WEB-INF/inc/footer.jsp"%>
</body>
</html>