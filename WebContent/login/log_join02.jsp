<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!doctype html>
<html>
<head>
<%@ include file="../inc/head.jsp"%>
<link rel="stylesheet" type="text/css" href="/iot5/css/login.css">
<link rel="stylesheet" type="text/css" href="/iot5/css/LogJoin.css">
<link rel="stylesheet" type="text/css" href="/iot5/css/join.css">
<link rel="stylesheet" href="../plugins/datepicker/datepicker.min.css" />

<!-- validate 플러그인 참조 -->
<script src="../plugins/validate/jquery.validate.min.js"></script>
<script src="../plugins/validate/additional-methods.min.js"></script>

<!-- datepicker 플러그인 참조 -->
<script src="../plugins/datepicker/datepicker.min.js"></script>
<script src="../plugins/datepicker/i18n/datepicker.ko-KR.js"></script>
<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>
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
			<span class="pull-left log_step2">약관동의 회원정보입력 가입완료</span>
		</div>

		<div class="log_body ">
			<div class="bdbb1">
				<h4>회원 정보 입력</h4>
			</div>
			<!-- 가입폼 시작 -->
			<form class="form-horizontal" name="join_form" id="join_form"
				method="post" action="log_join03.jsp">
				<div class="basic_data">
					<h5 class="basic_data_title">기본 정보 입력 (*표시 필수입력사항)</h5>
					<div class="form-group">
						<label for='user_name' class="col-md-2"><span
							class='identify'>*</span>성명(한글) </label>
						<div class="col-md-10">
							<input type="text" name="user_name_kor" id="user_name_kor"
								class="form-control" />
						</div>
					</div>
					<div class="form-group">
						<label for='user_name_eng' class="col-md-2"><span
							class='identify'>*</span>성명(영문) </label>
						<div class="col-md-3 col-md-10">
							<input type="text" name="user_name_eng" id="user_name_eng"
								class="form-control" />
						</div>
					</div>
					<div class="form-group">
						<label for='user_id' class="col-md-2"><span
							class='identify'>*</span>아이디 </label>
						<div class="col-md-10">
							<input type="text" name="user_id" id="user_id"
								class="form-control" />
						</div>
					</div>
					<div class="form-group">
						<label for='user_pw' class="col-md-2"><span
							class='identify'>*</span>비밀번호 </label>
						<div class="col-md-10">
							<input type="password" name="user_pw" id="user_pw"
								class="form-control" />
						</div>
					</div>
					<div class="form-group">
						<label for='user_pw_re' class="col-md-2"> <span
							class='identify'>*</span>비밀번호 확인
						</label>
						<div class="col-md-10">
							<input type="password" name="user_pw_re" id="user_pw_re"
								class="form-control" />
						</div>
					</div>


					<div class="form-group">
						<label for='text' class="col-md-2"><span class='identify'>*</span>생년월일
						</label>
						<div class="col-md-10 calendar_box">
							<input type="text" id="datepicker" readonly /> <img
								id="show-cal" class="calendar_img" src="../img/calendar.png"
								height="20">
						</div>
					</div>
					<div class="form-group">
						<label for="email" class="col-md-2"><span
							class="identify">*</span>이메일</label>
						<div class="col-md-10">
							<input type="email" name="email" id="email" class="form-control">
						</div>
					</div>
					<div class="form-group">
						<label for='tel' class="col-md-2"><span class='identify'>*</span>휴대전화
						</label>
						<div class="col-md-10">
							<input type="tel" name="tel" id="tel" class="form-control" />
						</div>
					</div>
					<div class="form-group">
						<label for='tel_home' class="col-md-2">자택전화</label>
						<div class="col-md-10">
							<input type="tel" name="tel_home" id="tel_home"
								class="form-control" />
						</div>
					</div>
					<div class="form-group">
						<label for="address" class="col-md-2">주소</label>
						<div class="col-md-10">
							&nbsp;&nbsp;우편번호&nbsp;&nbsp;&nbsp;<input type="text"
								name="zipcode" class="postcodify_postcode5" value="" />
							<button type="button" id="postcodify_search_button">검색</button>
							<br /> 도로명 주소 <input type="text" name="load_addr"
								class="postcodify_address" value="" /> <br /> &nbsp;&nbsp;상세
							주소&nbsp;&nbsp;<input type="text" name="detail"
								class="postcodify_details" value="" /> <br />
						</div>
					</div>
				</div>

				<!-- basic end -->

				<div class="form-group">
					<div class="text-center">
						<button type="submit" class="btn btn_color6 btn-md">가입신청</button>
					</div>
				</div>
			</form>
		</div>
		<!-- log_body end -->

	</div>
	<!-- container end -->


	<script type="text/javascript">
		$(function() {

			$("#datepicker").datepicker({
				autoHide : true, // 날짜 선택 후 자동 숨김 (true/false)
				format : 'yyyy-mm-dd', // 날짜 형식
				language : 'ko-KR', // 언어
				weekStart : 0, // 시작요일(0=일요일~6=토요일)
				trigger : '#show-cal' // 클릭시 달력을 표시할 요소의 id
			});
			$("#postcodify_search_button").postcodifyPopUp();


			$.validator.addMethod("kor", function(value, element) {
				return this.optional(element) || /^[ㄱ-ㅎ가-힣]*$/i.test(value);
			});

			$.validator.addMethod("eng", function(value, element) {
				return this.optional(element) || /^[a-zA-Z]*$/i.test(value);
			});

			$.validator.addMethod("phone", function(value, element) {
				return this.optional(element)
						|| /^01(?:0|1|[6-9])(?:\d{3}|\d{4})\d{4}$/i.test(value)
						|| /^\d{2,3}\d{3,4}\d{4}$/i.test(value);
			});

			$("#join_form").validate({
				rules : {
					user_name_kor : {
						required : true,
						kor : true
					},
					user_name_eng : {
						required : true,
						eng : true
					},
					user_id : {
						required : true,
						alphanumeric : true
					},
					user_pw : {
						required : true,
						minlength : 4,
						maxlength : 20
					},
					user_pw_re : {
						required : true,
						equalTo : "#user_pw"
					},
					email:{required:true, email:true},
					
					tel : {
						required : true,
						phone : true
					}
					
				},
				
				messages : {
					user_name_kor : {
						required : "이름을 입력하세요",
						kor : "한글만 입력 가능합니다."
					},
					user_name_eng : {
						required : "이름을 입력하세요",
						eng : "영어만 입력 가능합니다."
					},
					user_id : {
						required : "아이디를 입력하세요",
						alphanumeric : "아이디는 영어, 숫자만 입력 가능합니다."
					},
					user_pw : {
						required : "비밀번호를 입력하세요",
						minlength : "비밀번호는 4글자 이상 입력하셔야 합니다",
						maxlength : "비밀번호는 최대 20글자까지 입력 가능합니다."
					},
					user_pw_re : {
						required : "비밀번호 확인값을 입력하세요",
						equalTo : "비밀번호확인이 잘못되었습니다."
					},

					email:{
						required:"이메일을 입력하세요",
						 email:"이메일 형식이 잘못되었습니다"
						},
					tel : {
						required : "연락처를 입력하세요",
						phone : "연락처 형식이 잘못되었습니다."
					}
				
				}

			});
		});
	</script>
	<%@ include file="../inc/footer.jsp"%>
</body>
</html>