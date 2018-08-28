<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!doctype html>
<html>
<head>
<%@ include file="../inc/head.jsp"%>
<link rel="stylesheet" type="text/css" href="/iot5/css/login.css">
<link rel="stylesheet" type="text/css" href="/iot5/css/LogJoin.css">
    <!-- validate 플러그인 참조 -->
    <script src="plugins/validate/jquery.validate.min.js"></script>
    <script src="plugins/validate/additional-methods.min.js"></script>
    <!-- sweetalert 플러그인 참조 -->
    <script src="plugins/sweetalert/sweetalert2.min.js"></script>
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
			<span class="pull-left log_step1">약관동의 회원정보입력 가입완료</span>
		</div>

		<div class="log_box2">
			<h2 class="log_top_header1">신라호텔에 오신 것을 환영합니다.</h2>
			<h2 class="log_header2">약관 및 개인정보 수집이용사항을 확인하시고 동의여부에 체크하여주시기
				바랍니다.</h2>
		</div>

		<div class="log_body ">
		<form class="form-horizontal" name="join_form" id="join_form">
			<div class="bdbb1">
				<h3>약관동의</h3>
			</div>
			<div class="agree_box">
				<h3 class="log_h3">
					<strong>신라리워즈 이용약관에 대한 동의 (필수)</strong>
				</h3>

				<!-- Button trigger modal -->
				<button type="button" class="btn btn-primary btn-md view_all"
					data-toggle="modal" data-target="#myModal">전체보기</button>

				<!-- Modal -->
				<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
					aria-labelledby="myModalLabel" aria-hidden="true">
					<div class="modal-dialog modal-lg">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal"
									aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
								<h4 class="modal-title" id="myModalLabel">신라리워즈 이용약관에 관한 동의</h4>
							</div>
							<div class="modal-body">
								<%@ include file="../inc/log_text01.jsp"%>
							</div>
						</div>
					</div>
				</div>
				<div class="log_text1"
					style="overflow: scroll; width: 850px; height: 150px;">
					<%@ include file="../inc/log_text01.jsp"%>
				</div>

				
				<div class="agree_checkbox">
					<label>
						<input type="checkbox" name="subject" value="agree" class="agree" id="agree1">동의함
					</label> 
				</div>

			</div>
			<!-- agree_box1 end -->

			<div class="agree_box">
				<h3 class="log_h3">
					<strong>개인정보 수집, 이용에 대한 동의 (필수)</strong>
				</h3>

				<!-- Button trigger modal -->
				<button type="button" class="btn btn-primary btn-md view_all"
					data-toggle="modal" data-target="#myModal">전체보기</button>

				<!-- Modal -->
				<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
					aria-labelledby="myModalLabel" aria-hidden="true">
					<div class="modal-dialog modal-lg">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal"
									aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
								<h4 class="modal-title" id="myModalLabel">개인정보 수집, 이용에 대한
									동의</h4>
							</div>
							<div class="modal-body">
								<%@ include file="../inc/log_text02.jsp"%>
							</div>
						</div>
					</div>
				</div>
				<div class="log_text1"
					style="overflow: scroll; width: 850px; height: 150px;">
					<%@ include file="../inc/log_text02.jsp"%>
				</div>

				<div class="agree_checkbox">
					<label>
						<input type="checkbox" name="subject" value="agree" class="agree" id="agree2">동의함
					</label> 
				</div>

			</div>
			<!-- agree_box2 end -->

			<div class="agree_box">
				<h3 class="log_h3">
					<strong>개인정보 제3자 제공에 대한 동의 (필수)</strong>
				</h3>

				<!-- Button trigger modal -->
				<button type="button" class="btn btn-primary btn-md view_all"
					data-toggle="modal" data-target="#myModal">전체보기</button>

				<!-- Modal -->
				<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
					aria-labelledby="myModalLabel" aria-hidden="true">
					<div class="modal-dialog modal-lg">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal"
									aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
								<h4 class="modal-title" id="myModalLabel">개인정보 제3자 제공에 대한
									동의</h4>
							</div>
							<div class="modal-body">
								<%@ include file="../inc/log_text03.jsp"%>
							</div>
						</div>
					</div>
				</div>
				<div class="log_text1"
					style="overflow: scroll; width: 850px; height: 150px;">
					<%@ include file="../inc/log_text03.jsp"%>
				</div>
				
	
				<div class="agree_checkbox">
					<label>
						<input type="checkbox" name="subject" value="agree"class="agree" id="agree3">동의함
					</label> 
				</div>

			</div>
			<!-- agree_box3 end -->

			<div class="agree_box">
				<h3 class="log_h3">
					<strong>개인정보 마케팅 활용 동의 (선택)</strong>
				</h3>

				<!-- Button trigger modal -->
				<button type="button" class="btn btn-primary btn-md view_all"
					data-toggle="modal" data-target="#myModal">전체보기</button>

				<!-- Modal -->
				<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
					aria-labelledby="myModalLabel" aria-hidden="true">
					<div class="modal-dialog modal-lg">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal"
									aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
								<h4 class="modal-title" id="myModalLabel">개인정보 마케팅 활용 동의</h4>
							</div>
							<div class="modal-body">
								<%@ include file="../inc/log_text04.jsp"%>
							</div>
						</div>
					</div>
				</div>
				<div class="log_text1"
					style="overflow: scroll; width: 850px; height: 150px;">
					<%@ include file="../inc/log_text04.jsp"%>
				</div>

				<div class="agree_checkbox">
					<label>
						<input type="checkbox" name="agree4" value="agree" class="agree" id="agree4">동의함
					</label> 
				</div>

			</div>
			<!-- agree_box4 end -->

			<div class="agree_box">
				<h3 class="log_h3">
					<strong>고객정보 국외이전 동의 (선택)</strong>
				</h3>

				<!-- Button trigger modal -->
				<button type="button" class="btn btn-primary btn-md view_all"
					data-toggle="modal" data-target="#myModal">전체보기</button>

				<!-- Modal -->
				<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
					aria-labelledby="myModalLabel" aria-hidden="true">
					<div class="modal-dialog modal-lg">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal"
									aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
								<h4 class="modal-title" id="myModalLabel">고객정보 국외이전 동의</h4>
							</div>
							<div class="modal-body">
								<%@ include file="../inc/log_text05.jsp"%>
							</div>
						</div>
					</div>
				</div>
				<div class="log_text1"
					style="overflow: scroll; width: 850px; height: 150px;">
					<%@ include file="../inc/log_text05.jsp"%>
				</div>
	
				<div class="agree_checkbox">
					<label>
						<input type="checkbox" name="agree5" value="agree" class="agree" id="agree5">동의함
					</label> 
				</div>

			</div>
			<!-- agree_box5 end -->
			<div class="agree_checkbox">
				<label><input type="checkbox" id="all_check">&nbsp;신라
					호텔 가입 약관 전체동의 </label>

				<p>전체동의는 선택사항 (동의 내용을 확인한 후 개별 동의 가능)이며 전체동의 버튼을 체크하면 선택적 수집동의도
					동시 진행됩니다.</p>

			</div>
			</form>
		</div>
		<!-- log_body end -->
		<div class="log_footer">
			<div class="agree_submit">
				<button type="button" class="btn btn_color4 btn-md" >취소</button>
				<button type="submit" class="btn btn_color4 btn-md">다음</button>
			</div>
		</div>

	</div>
	<!-- container end -->


	<script type="text/javascript">
		
		
		 $(function() {

	            /** 플러그인의 기본 설정 옵션 추가 */
	            jQuery.validator.setDefaults({
	                onkeyup:false,          // 키보드입력시 검사 안함
	                onclick:false,          // <input>태그 클릭시 검사 안함
	                onfocusout:false,       // 포커스가 빠져나올 때 검사 안함
	                showErrors:function(errorMap, errorList){ // 에러 발생시 호출되는 함수 재정의
	                    // 에러가 있을 때만..
	                    if(this.numberOfInvalids()) {
	                        // 0번째 에러 메시지에 대한 javascript 기본 alert 함수 사용
	                        //alert(errorList[0].message);
	                        // 0번째 에러 발생 항목에 포커스 지정
	                        //$(errorList[0].element).focus();
	                        
	                        swal({
	                            title: "에러", 
	                            text: errorList[0].message, 
	                            type: "error"
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
	    
	          
	            /** form태그에 부여한 id속성에 대한 유효성 검사 함수 호출 */
	            $("#join_form").validate({
	                /** 입력검사 규칙 */
	                rules: {
	                   
	                    subject: { required: true, minlength: 3},
	                    // 허용할 확장자 명시
	                   
	                },
	                /** 규칙이 맞지 않을 경우의 메시지 */
	                messages: {
	                    
	                    subject: {
	                    	required: "동의하세요",
	                    	minlength: "수강과목은 최소 2개 이상 선택하셔야 합니다.",
	                    	maxlength: "수강과목은 최대 4개 까지 선택 가능합니다."
	                    }
	                   
	                }
	            }); // end validate()
	        });
	</script>
	<%@ include file="../inc/footer.jsp"%>
</body>
</html>
