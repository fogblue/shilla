<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!doctype html>
<html>
<head>
	<%@ include file="/WEB-INF/inc/head.jsp" %>
<link rel="stylesheet" type="text/css" href="/iot5/css/mypage.css">
</head>
<body>
	<%@ include file="/WEB-INF/inc/topbar.jsp" %>
	<!-- ============시작================== -->
	<div class="mypg-container main">
		<!-- ==============사이드바 시작=============== -->
		<div class="sidebar">
			<div class="sidebar-cont">
				<div class="bdb">
					<h3>마이페이지</h3>
				</div>
				<div class="mypg-sidebar-menu">
					<a href="/iot5/mypage/mypg_reservation.jsp" class="mypg-sidebar-open">예약 확인/취소<img src="/iot5/img/sidebar_arr.gif" class="sidebar-arrow"></a>
					<a>개인정보</a>
					<a href="/iot5/mypage/mypg_profile_edit.jsp">프로필 수정</a>
					<a href="/iot5/mypage/mypg_password_edit.jsp">비밀번호 변경</a>
					<a href="/iot5/mypage/mypg_withdraw.jsp">회원 탈퇴 요청</a>
					<a href="/iot5/mypage/mypg_qna.jsp">문의 내역</a>
				</div>
			</div>
		</div>
		<!-- ==============사이드바 끝=============== -->
		<div class="mypg-contents">
			<div class="bdb mypg-contents-header">
				<h3>예약확인/취소</h3>
				<div class="pull-right mypg-loc"><span class="glyphicon glyphicon-home"></span>&nbsp;&nbsp;&nbsp;>&nbsp;&nbsp;&nbsp;My Page&nbsp;&nbsp;&nbsp;>&nbsp;&nbsp;&nbsp;<span class="mypg-loc-txt">예약 확인/취소</span></div>
			</div>
			<div class="mypg-contents-txt">
				<p>객실 및 패키지 예약 내역을 확인하실 수 있습니다.</p>
			</div>
			<div class="mypg-rsvt-bd">
				<div class="mypg-bdb">
					<h4 class="mypg-rsvt-2-title">Room / Package</h4>
				</div>
				<div class="mypg-rsvt-2-txtbox">
					<p>예약 취소는 <a href="#info-modal" data-toggle="modal" class="mypg-rsvt-2-modal-link">예약 취소/환불 규정</a>을 참고 후 진행해주시기 바랍니다.</p>
				</div>
				<div>
					<h5 class="mypg-rsvt-2-title-1">예약정보</h5>
					<button type="button" class="pull-right">인쇄하기</button>
				</div>
				<div class="mypg-contents-table">
					<table class="mypg-rsvt-2-contents-table">
						<tr>
							<td style="width: 15%">예약번호</td>
							<td style="width: 35%"></td>
							<td style="width: 15%">예약상태</td>
							<td style="width: 35%"></td>
						</tr>
						<tr>
							<td>호텔</td>
							<td></td>
							<td>고객명</td>
							<td></td>
						</tr>
						<tr>
							<td>체크인 날짜</td>
							<td></td>
							<td>체크아웃 날짜</td>
							<td></td>
						</tr>
						<tr>
							<td>예약 일자</td>
							<td></td>
							<td>투숙인원</td>
							<td>성인&nbsp;:&nbsp; &nbsp;/&nbsp;어린이&nbsp;:&nbsp; &nbsp;/&nbsp;유아&nbsp;:&nbsp;</td>
						</tr>
						<tr>
							<td>객실타입</td>
							<td colspan="3"></td>
						</tr>
						<tr>
							<td>패키지명</td>
							<td colspan="3"></td>
						</tr>
					</table>
				</div>
			</div>
		</div>
	</div>

	<!-- ==============끝================== -->
	<%@ include file="/WEB-INF/inc/footer.jsp" %>
</body>

<div class="modal" id="info-modal">
	<div class="modal-dialog modal-sm">
		
	</div>
</div>

</html>