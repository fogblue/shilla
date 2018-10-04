<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!doctype html>
<html>
<head>
	<%@ include file="/WEB-INF/inc/head.jsp" %>
	<link rel="stylesheet" type="text/css" href="../css/login.css">
	<link rel="stylesheet" type="text/css" href="../css/LogJoin.css">
	<link rel="stylesheet" type="text/css" href="../css/join.css">
	<!-- validate 플러그인 참조 -->
<script src="../plugins/validate/jquery.validate.min.js"></script>
<script src="../plugins/validate/additional-methods.min.js"></script>
<script src="../plugins/ajax-form/jquery.form.min.js"></script>
</head>
<body style="overflow-y: hidden;">
	<%@ include file="/WEB-INF/inc/topbar.jsp" %>
	<div class="container main">
		<div class="form-group log-form">
			<div class="log_bdb">
			<h1 class="log_header">로그인</h1>
			</div>
			
			<div class="ind1"> <span class="glyphicon glyphicon-home"></span>&nbsp; > &nbsp;<span class="orng">&nbsp;로그인&nbsp;</span></div>
			<br/>
			<h2 class="log_header1">신라호텔에 오신 것을 환영합니다.</h2>
			
			<h2 class="log_header2">아이디와 비밀번호를 입력해 주시기 바랍니다.<br/>
			신라호텔 회원이 되시면 회원만을 위한 다양한 서비스와 혜택을 받으실 수 있습니다.</h2>
		</div>
		
		<div class="form-group">
			<div class="log_form-horizontal" >
				<div>
					<label><input type="radio" name="user"  id="user" class="uorunu" value="user" checked>회원</label>
					<label><input type="radio" name="user" id="unuser" class="uorunu" value="unuser">비회원(예약확인)</label>
				
				</div>
				<div class="form-group" id="form-group-box">
					
				</div>
			</div>
				
			
			<br/>
			<div class="notice1 log_hidden" id="notice1" >
				이메일, 연락처 등의 정보가 변경되면 웹사이트에서 회원정보를 수정해주시기 바랍니다.
			</div>
		</div>
	</div>
	<%@ include file="/WEB-INF/inc/footer.jsp" %>
	
	
	<script type="text/javascript">
		$(function(){
			$(".uorunu").change(function() {
				$("#notice1").toggleClass("log_hidden");
			});
			
			$("#user").change(function(e) {
				$("#form-group-box").empty();
				$.ajax({
					url: "../login/log_user.html",
					method: "get",
					data: {},
					dataType: "html",
					success: function(req) {
						$("#form-group-box").append(req);
					}
				});
			}).change();
			
			$("#unuser").change(function(e) {
				$("#form-group-box").empty();
				$.ajax({
					url: "../login/log_unuser.html",
					method: "get",
					data: {},
					dataType: "html",
					success: function(req) {
						$("#form-group-box").append(req);
					}
				});
			});
			
			$.validator.addMethod("kor", function(value, element) {
				return this.optional(element) || /^[ㄱ-ㅎ가-힣]*$/i.test(value);
			});
			
			$(document).on('submit', "#myModal1_vali", function(){
				$(this).ajaxSubmit(function(){
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
				});
			});
			$(document).on('submit', "#myModal2_vali", function(){
				$(this).ajaxSubmit(function(){
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
			});
		});
	</script>
</body>
</html>