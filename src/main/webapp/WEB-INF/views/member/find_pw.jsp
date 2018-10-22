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
				<h1 class="log_header">비밀번호 찾기</h1>
			</div>

			<div class="ind1">
				<span class="glyphicon glyphicon-home"></span>&nbsp; > &nbsp;<span
					class="orng">&nbsp;비밀번호 찾기&nbsp;</span>
			</div>
			<br />

			<h2 class="log_header2">회원가입 시 등록하신 이메일로 임시비밀번호를 발급해드립니다.</h2>
		</div>

		<div class="log_form-horizontal">
			<div id="form-group">
				<form action="${pageContext.request.contextPath}/member/find_pw_ok.do"
					name="login" method="post">
					<div class="form-group">
						<label for='user_name' class="col-md-2"><span
							class='identify'>*</span>아이디</label>
						<div class="col-md-10">
							<input type="text" name="find_pw_id" id="find_pw_id"
								class="form-control" />
						</div>
					</div>
					<div class="form-group">
						<label for='user_name' class="col-md-2"><span
							class='identify'>*</span>성명</label>
						<div class="col-md-10">
							<input type="text" name="find_pw_name" id="find_pw_name"
								class="form-control" />
						</div>
					</div>
					<div class="form-group">
						<label for='user_name' class="col-md-2"><span
							class='identify'>*</span>이메일</label>
						<div class="col-md-10">
							<input type="text" name="find_pw_email" id="find_pw_email"
								class="form-control" />
						</div>
					</div>
					<div class="modal-footer">
					<button type="submit" class="btn btn_color2" data-dismiss="modal"
						id="finded_pw">확인</button>
				</div>

				<div class="modal-footer1">
					<button type="button" class="btn  btn_color2" data-dismiss="modal">로그인</button>

					<button type="button" class="btn btn_color3" data-dismiss="modal"
						id="find_id">아이디 찾기</button>
				</div>
				</form>
			</div>
		</div>
	</div>
	<!--아이디 찾기의 결과창 modal-->
<div class="modal fade" id="myModal2_1">
	<div class="modal-dialog modal-md">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title">비밀번호 찾기</h4>
			</div>
			<div class="modal-body find_pw">
				회원님의 이메일로 <br /> 임시비밀번호를 발송해 드렸습니다. <br /> 발급받은 임시
				비밀번호로 로그인해주시기 바랍니다.
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn_color2" data-dismiss="modal"
					id="pw_modal_ok">로그인</button>
			</div>
		</div>

	</div>
</div>

<%@ include file="/WEB-INF/inc/footer.jsp"%>

<script type="text/javascript">
		$(function() {
			$("#open_modal_btn").click(function(e) {
				$("#myModal2_1").modal('show');
			});
			
		}); 
	</script>


</body>
</html>