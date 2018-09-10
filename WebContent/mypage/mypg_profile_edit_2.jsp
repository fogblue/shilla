<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!doctype html>
<html>
<head>
	<%@ include file="../inc/head.jsp" %>
<link rel="stylesheet" type="text/css" href="/iot5/css/mypage.css">
</head>
<body>
	<%@ include file="../inc/topbar.jsp" %>
	<!-- ============시작================== -->
	<div class="mypg-container main">
		<div class="sidebar">
			<div class="sidebar-cont">
				<div class="bdb">
					<h3>마이페이지</h3>
				</div>
				<div class="mypg-sidebar-menu">
					<a href="/iot5/mypage/mypg_reservation.jsp">예약 확인/취소</a>
					<a>개인정보</a>
					<a href="/iot5/mypage/mypg_profile_edit.jsp" class="mypg-sidebar-open">프로필 수정<img src="/iot5/img/sidebar_arr.gif" class="sidebar-arrow"></a>
					<a href="/iot5/mypage/mypg_password_edit.jsp">비밀번호 변경</a>
					<a href="/iot5/mypage/mypg_withdraw.jsp">회원 탈퇴 요청</a>
					<a href="/iot5/mypage/mypg_qna.jsp">문의 내역</a>
				</div>
			</div>
		</div>
		<div class="mypg-contents">
			<div class="mypg-bdb2 mypg-contents-header">
				<h3>프로필 수정</h3>
				<div class="pull-right mypg-loc"><span class="glyphicon glyphicon-home"></span>&nbsp;&nbsp;&nbsp;>&nbsp;&nbsp;&nbsp;My Page&nbsp;&nbsp;&nbsp;>&nbsp;&nbsp;&nbsp;개인정보&nbsp;&nbsp;&nbsp;>&nbsp;&nbsp;&nbsp;<span class="mypg-loc-txt">프로필 수정</span></div>
			</div>
			<div class="mypg-contents-txt">
				<p>고객님의 정보를 언제든지 확인, 변경하실 수 있습니다.</p>
			</div>
			<div class="mypg-contents-table">
				<span>기본 정보</span>
				<table class="mypg-pfed2-contents-table">
					<tr>
						<td>성명(한글)</td>
						<td></td>
					</tr>
					<tr>
						<td>성명(영문)</td>
						<td></td>
					</tr>
					<tr>
						<td>아이디</td>
						<td></td>
					</tr>
					<tr>
						<td rowspan="2">이메일</td>
						<td>
							<input type="text" />
							<span>@</span>
							<input type="text" id="selected_email" />
							<select name="email_select" id="email_select">
								<option value="">직접입력</option>
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
							<button class="btn-xs mypg-pfed2-overlap">이메일 중복확인</button>
						</td>
					</tr>
					<tr>
						<td>
							<span>서비스 및 이벤트 소식이 담긴 호텔신라의 뉴스레터를 수신하겠습니까?</span>
							<input type="radio" name="agree1" id="agree1y" checked /><label for="agree1y">예</label>
							<input type="radio" name="agree1" id="agree1n" /><label for="agree1n">아니오</label>
						</td>
					</tr>
					<tr>
						<td rowspan="2">휴대전화</td>
						<td>
							<input type="text" />
						</td>
					</tr>
					<tr>
						<td>
							<span>서비스 및 이벤트 소식이 담긴 호텔신라의 LMS를 수신하시겠습니까?</span>
							<input type="radio" name="agree2" id="agree2y" checked /><label for="agree2y">예</label>
							<input type="radio" name="agree2" id="agree2n" /><label for="agree2n">아니오</label>
						</td>
					</tr>
				</table>
			</div>
			<div class="mypg-contents-btn2">
				<button type="submit" class="btn btn-lg mypg-pwed-change">변경</button>
				<button type="reset" class="btn btn-lg mypg-pwed-cancel"  onclick = "location.href = '/iot5/mypage/mypg_profile_edit.jsp'">취소</button>
			</div>
		</div>
	</div>
	
	<script>	
	$(function() {
		$("#email_select").change(function(){
			var sel = $(this).find("option:selected").val();
			$("#selected_email").val(sel);
		});
	});
	</script>
	<!-- ==============끝================== -->
	<%@ include file="../inc/footer.jsp" %>
</body>
</html>