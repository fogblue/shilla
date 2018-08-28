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
<link rel="stylesheet" href="plugins/datepicker/datepicker.min.css" />
<!-- validate 플러그인 참조 -->
<script src="plugins/validate/jquery.validate.min.js"></script>
<script src="plugins/validate/additional-methods.min.js"></script>
<!-- sweetalert 플러그인 참조 -->
<script src="plugins/sweetalert/sweetalert2.min.js"></script>
<script src="plugins/datepicker/datepicker.min.js"></script>
<script src="plugins/datepicker/i18n/datepicker.ko-KR.js"></script>
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
				<h4>회원정보 입력</h4>
			</div>
			<!-- 가입폼 시작 -->
			<form class="form-horizontal" name="join_form" id="join_form">
				<div class="basic_data">
					<h6 class="basic_data_title">기본 입력 (*표시 필수입력사항)</h6>
					<div class="form-group">
						<label for='user_name' class="col-md-2"><span
							class='identify'>*</span>성명(한글) </label>
						<div class="col-md-3">
							<input type="text" name="user_name" id="user_name"
								class="form-control" />
						</div>
					</div>
					<div class="form-group">
						<label for='user_name' class="col-md-2"><span
							class='identify'>*</span>성명(영문) </label>
						<div class="col-md-3 col-md-3">
							<input type="text" name="user_name" id="user_name"
								class="form-control" />
						</div>
					</div>
					<div class="form-group">
						<label for='text' class="col-md-2"><span class='identify'>*</span>생년월일
						</label>
						<div class="col-md-10">
							<input type="text" id="datepicker" readonly /> <a href="#"
								id="show-cal"><img src="../img/calendar.png" height="20"></a>
						</div>
					</div>
					<div class="form-group">
						<label for='email' class="col-md-2"><span class='identify'>*</span>이메일
						</label>
						<div class="col-md-10">
							<input type="email" maxlength="30">@ <select
								name="email_2">
								<option>naver.com</option>
								<option>daum.net</option>
								<option>gmail.com</option>
								<option>nate.com</option>
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
						<label for='tel' class="col-md-2">자택전화</label>
						<div class="col-md-10">
							<input type="tel" name="tel" id="tel" class="form-control" />
						</div>
					</div>
				</div>
				<!-- basic end -->

				<div class="site_data">
					<h6 class="site_data_title">웹사이트 비밀번호 입력</h6>
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
						<label for='user_pw' class="col-md-2"> <span
							class='identify'>*</span>비밀번호 확인
						</label>
						<div class="col-md-10">
							<input type="password" name="user_pw_re" id="user_pw_re"
								class="form-control" />
						</div>
					</div>
				</div>
				<!-- site_data end -->


				<div class="form-group">
					<div class="text-center">
						<button type="submit">가입신청</button>
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
	            autoHide: true,         // 날짜 선택 후 자동 숨김 (true/false)
	            format: 'yyyy-mm-dd',   // 날짜 형식
	            language: 'ko-KR',      // 언어
	            weekStart: 0,           // 시작요일(0=일요일~6=토요일)
	            trigger: '#show-cal'    // 클릭시 달력을 표시할 요소의 id
	        });
	   
		
		$(function() {
			/** 가입폼의 submit 이벤트 */
			$("#join_form").submit(
					function(e) {
						// 기본동작 수행 방식
						e.preventDefault();

						/** 아이디 검사 */
						if (!regex.value('#user_id', '아이디를 입력하세요.')) {
							return false;
						}
						if (!regex.eng_num('#user_id',
								'아이디는 영어와 숫자 조합만 입력 가능합니다.')) {
							return false;
						}
						if (!regex.min_length('#user_id', 4,
								'아이디는 최소 4자 이상 입력 가능합니다.')) {
							return false;
						}
						if (!regex.max_length('#user_id', 20,
								'아이디는 최대 20자 까지만 입력 가능합니다.')) {
							return false;
						}

						/** 비밀번호 검사 */
						if (!regex.value('#user_pw', '비밀번호를 입력하세요.')) {
							return false;
						}
						if (!regex.min_length('#user_pw', 4,
								'비밀번호는 최소 4자 이상 입력 가능합니다.')) {
							return false;
						}
						if (!regex.max_length('#user_pw', 20,
								'비밀번호는 최대 20자 까지만 입력 가능합니다.')) {
							return false;
						}
						if (!regex.compare_to('#user_pw', '#user_pw_re',
								'비밀번호 확인이 잘못되었습니다.')) {
							return false;
						}

						/** 이름 검사 */
						if (!regex.value('#user_name', '이름을 입력하세요.')) {
							return false;
						}
						if (!regex.kor('#user_name', '이름은 한글만 입력 가능합니다.')) {
							return false;
						}
						if (!regex.min_length('#user_name', 2,
								'이름은 최소 2자 이상 입력 가능합니다.')) {
							return false;
						}
						if (!regex.max_length('#user_name', 20,
								'이름은 최대 20자 까지만 입력 가능합니다.')) {
							return false;
						}

						/** 이메일 검사 */
						if (!regex.value('#email', '이메일을 입력하세요.')) {
							return false;
						}
						if (!regex.email('#email', '이메일 주소가 잘못되었습니다.')) {
							return false;
						}

						/** 연락처 검사 */
						if (!regex.value('#tel', '연락처를 입력하세요.')) {
							return false;
						}
						if (!regex.phone('#tel', '연락처가 잘못되었습니다.')) {
							return false;
						}

						/** 성별검사 */
						if (!regex.check('input[name=gender]', '성별을 선택하세요.')) {
							return false;
						}
						if (!regex.check('input[name=subject]', '과목을 선택하세요.')) {
							return false;
						}

						/** 과목 검사 */
						if (!regex.check_min('input[name=subject]', 2,
								'과목은 2개 이상 선택하셔야 합니다.')) {
							return false;
						}
						if (!regex.check_max('input[name=subject]', 3,
								'과목은 최대 3개까지 선택 가능합니다.')) {
							return false;
						}

						// 처리 완료
						alert("입력형식 검사 완료!!!");
					});
		});
		 });
	</script>
	<%@ include file="../inc/footer.jsp"%>
</body>
</html>