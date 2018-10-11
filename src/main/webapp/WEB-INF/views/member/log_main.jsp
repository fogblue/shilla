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
						<button id="open_modal_btn" class="btn btn_color3 btn-md" type="button">아이디 찾기</button>
						<button id="open_modal_btn1" class="btn btn_color3 btn-md" type="button">비밀번호 찾기</button>
					</div>
				</div>

			</div>
			
			<br />
			
			<div class="notice1 log_hidden" id="notice1">
				이메일, 연락처 등의 정보가 변경되면 웹사이트에서 회원정보를 수정해주시기 바랍니다.
			</div>
		
	</div>
	<!--아이디 찾기 modal1-->
<form name="myModal1_vali" id="myModal1_vali">
	<div class="modal fade" id="myModal1">
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
					<div class="form-group">
						<label for='find_user_name_kor' class="col-md-2"><span
							class='identify'>*</span>성명(한글) </label>
						<div class="col-md-10">
							<input type="text" name="find_id_name_kor" id="find_id_name_kor"
								class="form-control" />
						</div>
					</div>
					<div class="form-group">
						<label for='find_user_email' class="col-md-2"><span
							class='identify'>*</span>이메일 </label>
						<div class="col-md-10">
							<input type="text" name="find_id_email" id="find_id_email"
								class="form-control" />
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<button type="submit" class="btn btn_color2" data-dismiss="modal"
						id="modal_id_ok">확인</button>
				</div>
			</div>

		</div>
	</div>
</form>

<!--아이디 찾기 modal1의 결과창-->
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
						<td class="space">(이름)님의 회원 번호&nbsp;&nbsp;&nbsp;</td>
						<td class="users_info">&nbsp;&nbsp;&nbsp;(6자리 랜덤form DB)</td>
					</tr>
					<tr>
						<td class="space">아이디&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
						<td class="users_info">&nbsp;&nbsp;&nbsp;(사용자 아이디)</td>
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

<!--비밀번호 찾기 modal2-->
<form name="myModal2_vali" id="myModal2_vali">
	<div class="modal fade" id="myModal2">
		<div class="modal-dialog modal-md">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title">비밀번호 찾기</h4>
				</div>
				<div class="modal-body">
					<h5>회원가입 시 등록하신 이메일로 임시비밀번호를 발급해드립니다.</h5>
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
			</div>
		</div>

	</div>
</form>
<!--비밀번호 찾기 modal2의 결과창-->
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
				회원님의 이메일 (회원의 이메일 주소)로 <br /> 임시비밀번호를 발송해 드렸습니다. <br /> 발급받은 임시
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
				$("#myModal1").modal('show');
			});
			$("#open_modal_btn1").click(function(e) {
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
			});
			$.validator.addMethod("kor", function(value, element) {
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

					
			});
		});
	</script>
</body>
</html>