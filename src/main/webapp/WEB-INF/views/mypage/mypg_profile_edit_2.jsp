<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html>
<head>
	<%@ include file="/WEB-INF/inc/head.jsp" %>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/mypage.css">
</head>
<body>
<c:choose>
	<c:when test="${loginInfo == null}">
		<script type="text/javascript">
			alert("로그인 후 이용 가능한 서비스입니다.");
			location.href="${pageContext.request.contextPath}/member/log_main.do";
		</script>
	</c:when>
	<c:otherwise>
	<%@ include file="/WEB-INF/inc/topbar.jsp" %>
	<!-- ============시작================== -->
	<div class="mypg-container main">
		<div class="sidebar">
			<div class="sidebar-cont">
				<div class="bdb">
					<h3>마이페이지</h3>
				</div>
				<div class="mypg-sidebar-menu">
					<a href="${pageContext.request.contextPath}/mypage/mypg_reservation.do">예약 확인/취소</a>
					<a>개인정보</a>
					<a href="${pageContext.request.contextPath}/mypage/mypg_profile_edit.do" class="mypg-sidebar-open">프로필 수정<img src="${pageContext.request.contextPath}/assets/img/sidebar_arr.gif" class="sidebar-arrow"></a>
					<a href="${pageContext.request.contextPath}/mypage/mypg_password_edit.do">비밀번호 변경</a>
					<a href="${pageContext.request.contextPath}/mypage/mypg_withdraw.do">회원 탈퇴 요청</a>
					<a href="${pageContext.request.contextPath}/mypage/mypg_qna.do">문의 내역</a>
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
			<form action="${pageContext.request.contextPath}/mypage/mypg_profile_edit_2_ok.do" method="post" id="emailCheck" name="emailCheck">
			<div class="mypg-contents-table">
				<span>기본 정보</span>
				<table class="mypg-pfed2-contents-table">
					<tbody>
					<tr>
						<td>성명(한글)</td>
						<td>${loginInfo.userNameKor}</td>
					</tr>
					<tr>
						<td>성명(영문)</td>
						<td style="text-transform: uppercase;">${loginInfo.userNameEng}</td>
					</tr>
					<tr>
						<td>아이디</td>
						<td>${loginInfo.userId}</td>
					</tr>
					<tr>
						<td rowspan="2">이메일</td>
						<td>
							<input type="text" id="email" name="email" maxlength="150" onclick="inputEmail()" value="${loginInfo.email}" />
							<button type="button" id="emailCheckBtn" class="btn-xs mypg-pfed2-overlap" onclick="onSubmit()">이메일 중복확인</button>
							<input type="hidden" name="emailDuplication" value="emailUncheck" />
						</td>
					</tr>
					<tr>
						<td>
							<span>서비스 및 이벤트 소식이 담긴 호텔신라의 뉴스레터를 수신하겠습니까?</span>
							<input type="radio" name="agree1" id="agree1y" value="Y"
								<c:if test="${loginInfo.agree1 == 'Y' || loginInfo.agree1 == null}">checked</c:if>
							/><label for="agree1y">예</label>
							<input type="radio" name="agree1" id="agree1n" value="N"
								<c:if test="${loginInfo.agree1 == 'N'}">checked</c:if>
							/><label for="agree1n">아니오</label>
						</td>
					</tr>
					<tr>
						<td rowspan="2">휴대전화</td>
						<td>
							<input type="text" id="tel" name="tel" placeholder="&nbsp;'-' 없이 입력" maxlength="11" onclick="inputTel()" value="${loginInfo.tel}"/>
						</td>
					</tr>
					<tr>
						<td>
							<span>서비스 및 이벤트 소식이 담긴 호텔신라의 LMS를 수신하시겠습니까?</span>
							<input type="radio" name="agree2" id="agree2y" value="Y"
								<c:if test="${loginInfo.agree2 == 'Y' || loginInfo.agree2 == null}">checked</c:if>
							/><label for="agree2y">예</label>
							<input type="radio" name="agree2" id="agree2n" value="N"
								<c:if test="${loginInfo.agree2 == 'N'}">checked</c:if>
							/><label for="agree2n">아니오</label>
						</td>
					</tr>
					</tbody>
				</table>
			</div>
			<div class="mypg-contents-btn2">
				<button type="submit" class="btn btn-lg mypg-pwed-change">변경</button>
				<button type="reset" class="btn btn-lg mypg-pwed-cancel"  onclick="goToBack()">취소</button>
			</div>
			</form>
		</div>
	</div>
	
	<script>	
	function onSubmit() {
		var email = $("#email").val();
		
		var form = document.createElement("form");
		form.setAttribute("charset", "UTF-8");
		form.setAttribute("method", "Post");
		form.setAttribute("action", "${pageContext.request.contextPath}/mypage/mypg_profile_edit_2_echk.do");
		
		var hiddenField = document.createElement("input");
		hiddenField.setAttribute("type", "hidden");
		hiddenField.setAttribute("name", "email");
		hiddenField.setAttribute("id", "email");
		hiddenField.setAttribute("value", email);
		form.appendChild(hiddenField);
		
		document.body.appendChild(form);
		
		form.submit();
	}
	
	function goToBack() {
		location.href="${pageContext.request.contextPath}/mypage/mypg_profile_edit.do"
	}
	
	function inputEmail() {
		$("#email").val("");
	}
	
	function inputTel() {
		$("#tel").val("");
	}
	</script>
	<!-- ==============끝================== -->
	<%@ include file="/WEB-INF/inc/footer.jsp" %>
	</c:otherwise>
</c:choose>
</body>
</html>