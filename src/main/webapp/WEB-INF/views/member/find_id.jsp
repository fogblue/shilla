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

		<div class="log_form-horizontal">
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
						<button class="btn btn_color1_1 btn-lg" type="submit">확인</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	<!--아이디 찾기의 결과창 modal-->
<div class="modal fade" id="myModal1_1">
	<div class="modal-dialog modal-md">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title">회원번호 또는 아이디 찾기</h4>
			</div>
			<div class="modal-body">
				<table class="modal_table">
					<tr>
						<td class="space">${loginInfo.userNameKor}님의 회원 번호&nbsp;&nbsp;&nbsp;</td>
						<td class="users_info">&nbsp;&nbsp;&nbsp;${loginInfo.id}</td>
					</tr>
					<tr>
						<td class="space">아이디&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
						<td class="users_info">&nbsp;&nbsp;&nbsp;${loginInfo.userId}</td>
					</tr>
				</table>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn_color2" data-dismiss="modal"
					id="id_modal_ok">확인</button>
				<button type="button" class="btn btn_color2" data-dismiss="modal"
					id="modal_pw_find">비밀번호 찾기</button>
			</div>
		</div>

	</div>
</div>

<%@ include file="/WEB-INF/inc/footer.jsp"%>

<script type="text/javascript">
		$(function() {
			$("#open_modal_btn").click(function(e) {
				$("#myModal1_1").modal('show');
			});
			/* $("#open_modal_btn1").click(function(e) {
				$("#myModal2").modal('show');
			});
			$("#find_id").click(function(e) {
				$("#myModal1").modal('show');
			});
			$("#modal_id_ok").click(function(e) {
				$("#myModal1_1").modal('show');
			});
			$("#modal_pw_find").click(function(e) {
				$("#myModal2").modal('show');
			});
			$("#finded_pw").click(function(e) {
				$("#myModal2_1").modal('show');
			}); */
			/* $.validator.addMethod("kor", function(value, element) {
				return this.optional(element) || /^[ㄱ-ㅎ가-힣]*$/i.test(value);
			});

			
					$("#myModal1_vali").validate({
						rules : {
							find_id_name_kor : {
								required : true,
								kor : true
							},

							find_id_email : {
								required : true,
								email : true
							}
						},

						messages : {
							find_id_name_kor : {
								required : "이름을 입력하세요",
								kor : "한글만 입력 가능합니다."
							},

							find_id_email : {
								required : "이메일을 입력하세요",
								email : "이메일 형식이 잘못되었습니다"
							}
						}

					});
				
		
					$("#myModal2_vali").validate({
						rules : {
							find_pw_id : {
								required : true,
								alphanumeric : true
							},
							find_pw_name : {
								required : true,
								kor : true
							},
							find_pw_email : {
								required : true,
								email : true
							},
						},

						messages : {
							find_pw_id : {
								required : "아이디를 입력하세요",
								alphanumeric : "아이디는 영어, 숫자만 입력 가능합니다."
							},
							find_pw_name : {
								required : "이름을 입력하세요",
								kor : "한글만 입력 가능합니다."
							},
							find_pw_email : {
								required : "이메일을 입력하세요",
								email : "이메일 형식이 잘못되었습니다"
							}
						}

					
			});*/
		}); 
	</script>


</body>
</html>