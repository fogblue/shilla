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
					<a href="${pageContext.request.contextPath}/mypage/mypg_profile_edit.do">프로필 수정</a>
					<a href="${pageContext.request.contextPath}/mypage/mypg_password_edit.do" class="mypg-sidebar-open">비밀번호 변경<img src="${pageContext.request.contextPath}/assets/img/sidebar_arr.gif" class="sidebar-arrow"></a>
					<a href="${pageContext.request.contextPath}/mypage/mypg_withdraw.do">회원 탈퇴 요청</a>
					<a href="${pageContext.request.contextPath}/mypage/mypg_qna.do">문의 내역</a>
				</div>
			</div>
		</div>
		<div class="mypg-contents">
			<div class="mypg-bdb2 mypg-contents-header">
				<h3>비밀번호 변경</h3>
				<div class="pull-right mypg-loc"><span class="glyphicon glyphicon-home"></span>&nbsp;&nbsp;&nbsp;>&nbsp;&nbsp;&nbsp;My Page&nbsp;&nbsp;&nbsp;>&nbsp;&nbsp;&nbsp;개인정보&nbsp;&nbsp;&nbsp;>&nbsp;&nbsp;&nbsp;<span class="mypg-loc-txt">비밀번호 변경</span></div>
			</div>
			<div class="mypg-contents-txt">
				<p>고객님의 정보를 언제든지 확인, 변경하실 수 있습니다.</p>
			</div>
			<form action="${pageContext.request.contextPath}/mypage/mypg_password_edit_ok.do" method="post" id="chngPswd" name="chngPswd">
			<div class="mypg-contents-table">
				<table class="mypg-pwed-contents-table">
					<tr>
						<td><label for="now_pw">현재 비밀번호</label></td>
						<td><input type="password" name="now_pw" id="now_pw" /></td>
					</tr>
					<tr>
						<td><label for="new_pw">새 비밀번호</label></td>
						<td><input type="password" name="new_pw" id="new_pw" />
							<div class="info-modal">
								<a href="#info-modal" data-toggle="modal">비밀번호입력안내<span class="glyphicon glyphicon-question-sign"></span></a>								
							</div><span>8~20자 이내 영문/숫자 조합</span>
						</td>
					</tr>
					<tr>
						<td><label for="new_pw_re">새 비밀번호 확인</label></td>
						<td><input type="password" name="new_pw_re" id="new_pw_re" /></td>
					</tr>
				</table>
			</div>
			<div class="mypg-contents-btn2">
				<button type="submit" class="btn btn-lg mypg-pwed-change" onclick="onSubmit()">비밀번호변경</button>
				<button type="reset" class="btn btn-lg mypg-pwed-cancel">취소</button>
			</div>
			</form>
		</div>
	</div>
	<script type="text/javascript">
	function onSubmit() {
		var cp = document.chngPswd;
		
		if (cp.now_pw.value == "") {
			return false;
		} else if (cp.new_pw.value == "") {
			return false;
		} else if (cp.new_pw_re.value == "" || cp.new_pw_re.value != cp.new_pw.value) {
			return false;
		}
		
		return true;
	}
	</script>
	<!-- ==============끝================== -->
	<%@ include file="/WEB-INF/inc/footer.jsp" %>
	</c:otherwise>
</c:choose>
</body>

	<div class="modal" id="info-modal">
		<div class="modal-dialog modal-sm">
			<div class="info-modal-content">
			<button type="button" class="info-modal-close pull-right" data-dismiss="modal"><span>&times;</span></button>
				<h4>비밀번호 입력 시 아래의 사항을 참고하시어 안전한 정보 입력을 권장합니다.</h4>
				<ul>
					<li>아이디 및 아이디를 포함한 문자/숫자는 비밀번호로 사용할 수 없습니다.</li>
					<li>동일하거나 연속되는 문자 또는 숫자는 사용 불가능합니다. 예) aaa,111</li>
					<li>생일, 주민등록번호 등 타인이 알아내기 쉬운 비밀번호는 사용을 자제해 주시기 바랍니다.	</li>
					<li>비밀번호는 3~6개월에 한번씩 주기적으로 바꾸어 사용	하시는 것이 안전합니다. </li>
				</ul>
			</div>
		</div>
	</div>
</html>