<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!doctype html>
<html>
<head>
	<%@ include file="../inc/head.jsp" %>
	<link rel="stylesheet" type="text/css" href="/iot5/css/login.css">
	<link rel="stylesheet" type="text/css" href="/iot5/css/LogJoin.css">
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
			<div class="form-group">
				<div class="text-center">
					<button class="btn btn_color2 btn-md" type="button"  onclick="location.href='/iot5/login/log_join01.jsp' ">회원가입</button>
					<button class="btn btn_color3 btn-md"  type="button" onclick="location.href='/iot5/login/log_join01.jsp' ">아이디 찾기</button>
					<button class="btn btn_color3 btn-md"  type="button" onclick="location.href='/iot5/login/log_join01.jsp' ">비밀번호 찾기</button>
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
</body>
</html>