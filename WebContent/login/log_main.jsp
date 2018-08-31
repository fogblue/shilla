<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!doctype html>
<html>
<head>
	<%@ include file="../inc/head.jsp" %>
	<link rel="stylesheet" type="text/css" href="../css/login.css">
	<link rel="stylesheet" type="text/css" href="../css/LogJoin.css">
	<link rel="stylesheet" type="text/css" href="../css/join.css">
</head>
<body>
	<%@ include file="../inc/topbar.jsp" %>
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
			<form class="log_form-horizontal" name="login_form" id="login_form">
			<div>
				<label><input type="radio" name="user" value="user" checked>회원</label>
				<label><input type="radio" name="user" value="unuser">비회원(예약확인)</label>
			</div>
			<div class="form-group">
				<div class="col-md-10">
					<input type="text" name="user_id" id="user_id" class="form-control log-form-control"  
					placeholder="아이디 입력">
					<br/>
					<input type="password" name="user_pw" id="user_pw" class="form-control log-form-control"   
					 placeholder="비밀번호"> 
				</div>
				<div  class="col-md-2">
					<button class="btn btn_color1 btn-lg" type="button">로그인</button>
				</div>
			</div>

			<div class="form-group col-md-12">
				<label><input type="checkbox" name="save" id="save" value="save" >
				 아이디 저장</label>
			</div>

				<div class="text-center">
					<button class="btn btn_color2 btn-md" type="button"  onclick="location.href='/iot5/login/log_join01.jsp' ">회원가입</button>
					<button id="open_modal_btn"  class="btn btn_color3 btn-md "  type="button" >아이디 찾기</button>
					<button id="open_modal_btn1" class="btn btn_color3 btn-md "  type="button" >비밀번호 찾기</button>
				</div>
				<div class="modal fade" id="myModal1">
					<div class="modal-dialog modal-md">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal"
									aria-label="Close">
									<span aria-hidden="true">&times;</span></button>
									<h4 class="modal-title">아이디 찾기</h4>
							</div>
							<div class="modal-body">
								<div class="form-group">
									<label for='user_name' class="col-md-2"><span
										class='identify'>*</span>성명(한글) </label>
									<div class="col-md-10">
										<input type="text" name="user_name" id="user_name"
											class="form-control" />
									</div>
								</div>
								<div class="form-group">
									<label for='user_name' class="col-md-2"><span
										class='identify'>*</span>이메일 </label>
									<div class="col-md-10">
										<input type="text" name="user_name" id="user_name"
											class="form-control" />
									</div>
								</div>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn_color2"
									data-dismiss="modal">확인</button>
							</div>
						</div>
					
					</div>
				</div>
				<div class="modal fade" id="myModal2">
					<div class="modal-dialog modal-md">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal"
									aria-label="Close">
									<span aria-hidden="true">&times;</span></button>
									<h4 class="modal-title">비밀번호 찾기</h4>
							</div>
							<div class="modal-body">
							<h5>회원가입 시 등록하신 이메일로 임시비밀번호를 발급해드립니다.</h5>
								<div class="form-group">
									<label for='user_name' class="col-md-2"><span
										class='identify'>*</span>아이디</label>
									<div class="col-md-10">
										<input type="text" name="user_name" id="user_name"
											class="form-control" />
									</div>
								</div>
								<div class="form-group">
									<label for='user_name' class="col-md-2"><span
										class='identify'>*</span>성명</label>
									<div class="col-md-10">
										<input type="text" name="user_name" id="user_name"
											class="form-control" />
									</div>
								</div>
								<div class="form-group">
									<label for='user_name' class="col-md-2"><span
										class='identify'>*</span>이메일</label>
									<div class="col-md-10">
										<input type="text" name="user_name" id="user_name"
											class="form-control" />
									</div>
								</div>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn_color2"
									data-dismiss="modal">확인</button>
							</div>
							
							<div class="modal-footer1">
									<button type="button" class="btn  btn_color2"
										data-dismiss="modal" >로그인</button>
										
									<button type="button" class="btn btn_color3"
										data-dismiss="modal" id="find_id">아이디 찾기</button>
							</div>

						</div>
					
					</div>
				</div>
	
		</form>
			<br/>
			<div class="notice1" >
				<p>이메일, 연락처 등의 정보가 변경되면 웹사이트에서 회원정보를 수정해주시기 바랍니다.</p>
			</div>
		</div>
	</div>
	<%@ include file="../inc/footer.jsp" %>
	
	
	<script type="text/javascript">
		$(function(){
			$("#open_modal_btn").click(function(e){
				$("#myModal1").modal('show');
			});
			$("#open_modal_btn1").click(function(e){
				$("#myModal2").modal('show');
			});
			$("#find_id").click(function(e){
				$("#myModal1").modal('show');
			});
		});
	</script>
</body>
</html>