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
<!-- sweetalert 플러그인 참조 -->
<script src="../plugins/sweetalert/sweetalert2.min.js"></script>
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
			<form class="form-horizontal" name="join_form" id="join_form">
				<div class="basic_data">
					<h5 class="basic_data_title">기본 정보 입력 (*표시 필수입력사항)</h5>
					<div class="form-group">
						<label for='user_name' class="col-md-2"><span
							class='identify'>*</span>성명(한글) </label>
						<div class="col-md-10">
							<input type="text" name="user_name" id="user_name"
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
						<label for='email' class="col-md-2"><span class='identify'>*</span>이메일
						</label>
						<div class="col-md-10">
							<input type="email" name="enq_email1" id="enq_email1" /> @ <input
								type="email" id="enq_email" /> <select name="enq_elist"
								id="enq_elist">
								<option value="">--- 직접입력 ---</option>
								<option value="naver.com">naver.com</option>
								<option value="hanmail.net">hanmail.net</option>
								<option value="hotmail.com">hotmail.com</option>
								<option value="nate.com">nate.com</option>
								<option value="yahoo.co.kr">yahoo.co.kr</option>
								<option value="empas.com">empas.com</option>
								<option value="dreamwiz.com">dreamwiz.com</option>
								<option value="freechal.com">freechal.com</option>
								<option value="lycos.co.kr">lycos.co.kr</option>
								<option value="korea.com">korea.com</option>
								<option value="gmail.com">gmail.com</option>
								<option value="hanmir.com">hanmir.com</option>
								<option value="paran.com">paran.com</option>
							</select>
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
							<button id="postcodify_search_button">검색</button>
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
						<button type="submit" onclick="location.href='/iot5/login/log_join03.jsp' ">가입신청</button>
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
			/** 가입폼의 submit 이벤트 */
			jQuery.validator.setDefaults({
				onkeyup : false, // 키보드입력시 검사 안함
				onclick : false, // <input>태그 클릭시 검사 안함
				onfocusout : false, // 포커스가 빠져나올 때 검사 안함
				showErrors : function(errorMap, errorList) { // 에러 발생시 호출되는 함수 재정의
					// 에러가 있을 때만..
					if (this.numberOfInvalids()) {
						// 0번째 에러 메시지에 대한 javascript 기본 alert 함수 사용
						//alert(errorList[0].message);
						// 0번째 에러 발생 항목에 포커스 지정
						//$(errorList[0].element).focus();

						swal({
							title : "에러",
							text : errorList[0].message,
							type : "error"
						}).then(function(result) {
							// 창이 닫히는 애니메이션의 시간이 있으므로,
							// 0.1초의 딜레이 적용 후 포커스 이동
							setTimeout(function() {
								$(errorList[0].element).val('');
								$(errorList[0].element).focus();
							}, 100);
						});
					}
				}
			});

			/** 유효성 검사 추가 함수 */
			$.validator.addMethod("kor", function(value, element) {
				return this.optional(element) || /^[ㄱ-ㅎ가-힣]*$/i.test(value);
			});

			$.validator.addMethod("phone", function(value, element) {
				return this.optional(element)
						|| /^01(?:0|1|[6-9])(?:\d{3}|\d{4})\d{4}$/i.test(value)
						|| /^\d{2,3}\d{3,4}\d{4}$/i.test(value);
			});

			/** form태그에 부여한 id속성에 대한 유효성 검사 함수 호출 */
			$("#join_form").validate({
				/** 입력검사 규칙 */
				rules : {
					// [아이디] 필수 + 알파벳,숫자 조합만 허용
					user_id : {
						required : true,
						alphanumeric : true
					},
					// [비밀번호] 필수 + 글자수 길이 제한
					user_pw : {
						required : true,
						minlength : 4,
						maxlength : 20
					},
					// [비밀번호 확인] 필수 + 특정 항목과 일치 (id로 연결)
					user_pw_re : {
						required : true,
						equalTo : "#user_pw"
					},
					// [이름] 필수
					user_name : {
						required : true,
						kor : true
					},
					// [이메일] 필수 + 이메일 형식 일치 필요
					email : {
						required : true,
						email : true
					},
					// [연락처] 필수
					tel : {
						required : true,
						phone : true
					},
					// [생년월일] 필수 + 날짜 형식 일치 필요
					birthdate : {
						required : true,
						date : true
					},
					// [성별] 필수 입력,
					gender : "required",
					// [수강과목] 필수, 최소2개, 최대4개
					subject : {
						required : true,
						minlength : 2,
						maxlength : 4
					},
					// 허용할 확장자 명시
					profile_img : {
						extension : "jpg|gif|png"
					}
				},
				/** 규칙이 맞지 않을 경우의 메시지 */
				messages : {
					user_id : {
						required : "아이디를 입력하세요.",
						alphanumeric : "아이디는 영어,숫자만 입력 가능합니다."
					},
					user_pw : {
						required : "비밀번호를 입력하세요.",
						minlength : "비밀번호는 4글자 이상 입력하셔야 합니다.",
						maxlength : "비밀번호는 최대 20자까지 가능합니다."
					},
					user_pw_re : {
						required : "비밀번호 확인값을 입력하세요.",
						equalTo : "비밀번호 확인이 잘못되었습니다."
					},
					user_name : {
						required : "이름을 입력하세요.",
						kor : "이름은 한글만 입력 가능합니다."
					},
					email : {
						required : "이메일을 입력하세요.",
						email : "이메일 형식이 잘못되었습니다."
					},
					tel : {
						required : "연락처를 입력하세요.",
						phone : "연락처 형식이 잘못되었습니다."
					},
					birthdate : {
						required : "생년월일을 입력하세요.",
						date : "생년월일의 형식이 잘못되었습니다."
					},
					gender : "성별을 선택해 주세요.",
					subject : {
						required : "수강과목을 선택하세요",
						minlength : "수강과목은 최소 2개 이상 선택하셔야 합니다.",
						maxlength : "수강과목은 최대 4개 까지 선택 가능합니다."
					},
					profile_img : {
						extension : "프로필 사진은 jpg,png,gif 형식만 가능합니다."
					}
				}
			}); // end validate()
		});
	</script>
	<%@ include file="../inc/footer.jsp"%>
</body>
</html>