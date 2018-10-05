<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!doctype html>
<html>
<head>
	<%@ include file="/WEB-INF/inc/head.jsp" %>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/mypage.css">
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
					<a href="${pageContext.request.contextPath}/mypage/mypg_reservation.do" class="mypg-sidebar-open">예약 확인/취소<img src="${pageContext.request.contextPath}/assets/img/sidebar_arr.gif" class="sidebar-arrow"></a>
					<a>개인정보</a>
					<a href="${pageContext.request.contextPath}/mypage/mypg_profile_edit.do">프로필 수정</a>
					<a href="${pageContext.request.contextPath}/mypage/mypg_password_edit.do">비밀번호 변경</a>
					<a href="${pageContext.request.contextPath}/mypage/mypg_withdraw.do">회원 탈퇴 요청</a>
					<a href="${pageContext.request.contextPath}/mypage/mypg_qna.do">문의 내역</a>
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
			<div class="mypg-rsvt2-bd">
				<div class="mypg-bdb">
					<h4 class="mypg-rsvt2-title">Room / Package</h4>
				</div>
				<div class="mypg-rsvt2-txtbox">
					<p>예약 취소는 <a href="#cancel-modal" data-toggle="modal" class="mypg-rsvt2-modal-link">예약 취소/환불 규정</a>을 참고 후 진행해주시기 바랍니다.</p>
				</div>
				<div>
					<h5 class="mypg-rsvt2-title-1">예약정보</h5>
					<button type="button" class="pull-right">인쇄하기</button>
				</div>
				<div class="mypg-contents-table">
					<table class="mypg-rsvt2-contents-table">
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
				<div class="mypg-contents-table">
					<table class="mypg-rsvt2-contents-table-2">
						<tr class="text-center">
							<td style="width: 15%">(날짜)</td>
							<td style="width: 45%">(내역)</td>
							<td style="width: 20%">원</td>
							<td style="width: 20%">원</td>
						</tr>
						<tr class="text-right">
							<td colspan="3">세금&amp;봉사료</td>
							<td>원</td>
						</tr>
						<tr class="text-right">
							<td colspan="3">요금합계&nbsp;&nbsp;&nbsp;</td>
							<td>원</td>
						</tr>
					</table>
					<p style="magin: 0; color: #7e4f15;">&#8251; 10% service charge and 11% Tax Included.<br />&#8251; 현재 미결제 상태이며, 체크인시 결제가 진행됩니다.</p>
				</div>
				<div class="mypg-contents-table">
					<h5 class="mypg-rsvt2-title-1">카드 정보</h5>
					<table class="mypg-rsvt2-contents-table-3">
						<tr>
							<td style="width: 15%">카드번호</td>
							<td colspan="3"></td>
						</tr>
						<tr>
							<td style="width: 15%">카드종류</td>
							<td style="width: 35%"></td>
							<td style="width: 15%">만기일</td>
							<td style="width: 35%"></td>
						</tr>
					</table>
				</div>
				<div>
					<h5 class="mypg-rsvt2-title-1">요청사항</h5>
					<table class="mypg-rsvt2-contents-table-4">
						<tr>
							<td style="width: 15%; height: 35px;">남기신 말씀</td>
							<td></td>
						</tr>
					</table>
				</div>
				<div class="pull-left mypg-contents-btn3">
					<button type="button" class="btn mypg-rsvt2-list">목록</button>
				</div>
			</div>
		</div>
	</div>

	<!-- ==============끝================== -->
	<%@ include file="/WEB-INF/inc/footer.jsp" %>
</body>

<div class="modal" id="cancel-modal">
	<div class="modal-dialog modal-sm">
		<div class="cancel-modal-content">
			<div class="cancel-modal-content-header">
				<h3>취소 정책</h3>
				<button type="button" class="cancel-modal-close pull-right" data-dismiss="modal"><span>&times;</span></button>
			</div>
			<div class="cancel-modal-content-bottom">
				<h5>취소/변경 및 노쇼(No-show) 안내</h5>
				<p>숙박 예정일 1일 전 18시까지는 위약금 없이 취소 및 변경이 가능합니다.</p>
				<ul>
					<li>숙박 예정일 1일 전 18시 이후 취소/변경 및 노쇼(No-show)발생 시,
						<ul>
							<li>- 성수기(5월~10월, 12월 24일~31일) : 최초 1일 숙박 요금의 80%가 위약금으로 부과됩니다.</li>
							<li>- 비수기(성수기 외 기간) : 최초 1일 숙박 요금의 10%가 위약금으로 부과됩니다.</li>
						</ul>
					</li>
				</ul>
			</div>
		</div>
	</div>
</div>

</html>