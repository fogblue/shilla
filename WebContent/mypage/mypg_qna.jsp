<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!doctype html>
<html>
<head>
	<%@ include file="../inc/head.jsp" %>
</head>
<body>
	<%@ include file="../inc/topbar.jsp" %>
	<!-- ============시작================== -->
	<div class="container mypg-container main">
		<div class="sidebar">
			<div class="sidebar-cont">
				<div class="bdb">
					<h3>마이페이지</h3>
				</div>
				<div class="mypg-sidebar-menu">
					<a>예약 확인/취소</a>
					<a>개인정보</a>
					<a>프로필 수정</a>
					<a>비밀번호 변경</a>
					<a>회원 탈퇴 요청</a>
					<a>문의 내역</a>
				</div>
			</div>
		</div>
		<div class="mypg-contents">
			<div class="bdb mypg-contents-header">
				<h3>예약확인/취소</h3>
				<div class="pull-right mypg-loc"><span class="glyphicon glyphicon-home"></span>&nbsp;&nbsp;&nbsp;>&nbsp;&nbsp;&nbsp;My Page&nbsp;&nbsp;&nbsp;>&nbsp;&nbsp;&nbsp;<span class="mypg-loc-txt">문의 내역</span></div>
			</div>
			<div class="mypg-contents-txt">
				<p>회원님께서 문의하신 내역과 답변을 확인하실 수 있습니다.</p>
			</div>
			<div class="mypg-rsvt-bd">
				<div class="mypg-qna-bd-search">
					<span>기간조회</span>
					<button type="button" class="btn mypg-rsvt-whole">1주</button>
					<button type="button" class="btn mypg-rsvt-whole">1개월</button>
					<button type="button" class="btn mypg-rsvt-whole">3개월</button>
					<button type="button" class="btn mypg-rsvt-whole">6개월</button>
					<button type="button" class="btn mypg-rsvt-whole">전체</button>
					<input type="text" id="datepicker" /><span id="show-cal"><img src="../img/btnCalendar.gif" width="20" height="30"></span>
					<span> ~ </span>
					<input type="text" id="datepicker" /><span id="show-cal"><img src="../img/btnCalendar.gif" width="20" height="30"></span>
					<button type="button" class="btn mypg-rsvt-find">조회</button>
				</div>
				<div class="mypg-contents-table">
					<div>
						<p>Total : </p>
						<table class="mypg-rsvt-contents-table">
							<tr>
								<td>NO</td>
								<td>호텔</td>
								<td>문의유형</td>
								<td>제목</td>
								<td>문의일자</td>
								<td>답변여부</td>
							</tr>
							<tr>
								<td colspan="6">자료가 없습니다.</td>
							</tr>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- ==============끝================== -->
	<%@ include file="../inc/footer.jsp" %>
</body>
</html>