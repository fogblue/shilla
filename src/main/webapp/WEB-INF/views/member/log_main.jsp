<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
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
				<h1 class="log_header">로그인</h1>
			</div>

			<div class="ind1">
				<span class="glyphicon glyphicon-home"></span>&nbsp; > &nbsp;<span
					class="orng">&nbsp;로그인&nbsp;</span>
			</div>
			<br />
			<h2 class="log_header1">신라호텔에 오신 것을 환영합니다.</h2>

			<h2 class="log_header2">
				아이디와 비밀번호를 입력해 주시기 바랍니다.<br /> 신라호텔 회원이 되시면 회원만을 위한 다양한 서비스와 혜택을
				받으실 수 있습니다.
			</h2>
		</div>
		
			<div class="log_form-horizontal">
				<div id="form-group">
					<form action="${pageContext.request.contextPath}/member/login_ok.do" name="login" method="post" >
						<div class="form-group">
							<div class="col-md-10">
								<input type="text" name="user_id" id="user_id"
									class="form-control log-form-control" placeholder="아이디 입력">
								<br /> <input type="password" name="user_pw" id="user_pw"
									class="form-control log-form-control" placeholder="비밀번호">
							</div>
							<div class="col-md-2">
								<button class="btn btn_color1 btn-lg" type="submit">로그인</button>
							</div>
						</div>
					</form>

					<div class="form-group col-md-12">
						<label><input type="checkbox" name="save" id="save"
							value="save"> 아이디 저장</label>
					</div>

					<div class="text-center">
						<button class="btn btn_color2 btn-md" type="button"
							onclick="location.href='${pageContext.request.contextPath}/member/log_join01.do' ">회원가입</button>
						<button class="btn btn_color3 btn-md" type="button"
						onclick="location.href='${pageContext.request.contextPath}/member/find_id.do' ">아이디 찾기</button>
						<button class="btn btn_color3 btn-md" type="button"
						onclick="location.href='${pageContext.request.contextPath}/member/find_pw.do' ">비밀번호 찾기</button>
					</div>
				</div>

			</div>
			
			<br />
			
			<div class="notice1 log_hidden" id="notice1">
				이메일, 연락처 등의 정보가 변경되면 웹사이트에서 회원정보를 수정해주시기 바랍니다.
			</div>
	</div>

	<%@ include file="/WEB-INF/inc/footer.jsp"%>


	<script type="text/javascript">
		
	</script>
</body>
</html>