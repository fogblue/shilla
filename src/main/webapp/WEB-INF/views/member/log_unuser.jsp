<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
			<form  action="${pageContext.request.contextPath}/member/login_ok.do" name="login" method="post" enctype="multipart/form-data">
			<div class="form-group" >
				<div class="col-md-10">
					<input type="text" name="resv_no" id="resv_no" class="form-control log-form-control"  
					placeholder="예약번호">
					<br/>
					<input type="text" name="name" id="name" class="form-control log-form-control"   
					 placeholder="이름"> 
				</div>
				<div  class="col-md-2">
					<button class="btn btn_color1 btn-lg" type="button">로그인</button>
				</div>
			</div>
			</form>
	