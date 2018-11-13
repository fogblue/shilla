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
			<div class="mypg-rsvt2-bd" id="print_area">
				<div class="mypg-bdb">
					<h4 class="mypg-rsvt2-title">Room / Package</h4>
				</div>
				<div class="mypg-rsvt2-txtbox">
					<p>예약 취소는 <a href="#cancel-modal" data-toggle="modal" class="mypg-rsvt2-modal-link">예약 취소/환불 규정</a>을 참고 후 진행해주시기 바랍니다.</p>
				</div>
				<div>
					<h5 class="mypg-rsvt2-title-1">예약정보</h5>
					<button type="button" class="pull-right" onclick="printArea()">인쇄하기</button>
				</div>
				<div class="mypg-contents-table">
					<table class="mypg-rsvt2-contents-table">
						<tr>
							<td style="width: 15%">예약번호</td>
							<td style="width: 35%">${reservInfo.id}</td>
							<td style="width: 15%">예약상태</td>
							<td style="width: 35%"></td>
						</tr>
						<tr>
							<td>호텔</td>
							<td>${reservInfo.hotelCate}</td>
							<td>고객명</td>
							<td style="text-transform: uppercase;">${loginInfo.userNameEng}</td>
						</tr>
						<tr>
							<td>체크인 날짜</td>
							<td>${reservInfo.checkIn}</td>
							<td>체크아웃 날짜</td>
							<td>${reservInfo.checkOut}</td>
						</tr>
						<tr>
							<td>예약 일자</td>
							<td>${reservInfo.resvDate}</td>
							<td>투숙인원</td>
							<td>성인&nbsp;:&nbsp;${reservInfo.pplAd}&nbsp;/&nbsp;어린이&nbsp;:&nbsp;${reservInfo.pplCh}&nbsp;/&nbsp;유아&nbsp;:&nbsp;${reservInfo.pplBb}</td>
						</tr>
						<tr>
							<td>객실타입</td>
							<td colspan="3">${reservInfo.roomType}</td>
						</tr>
						<tr>
							<td>객실번호</td>
							<td colspan="3">${reservInfo.roomNo}&nbsp;호</td>
						</tr>
					</table>
				</div>
				<div class="mypg-contents-table">
					<table class="mypg-rsvt2-contents-table-2">
						<tr class="text-center">
							<td style="width: 15%">${reservInfo.checkIn}</td>
							<td style="width: 45%">${reservInfo.roomType}</td>
							<td style="width: 20%">${reservInfo.roomPrice}&nbsp;원</td>
							<td style="width: 20%"><p id="crpr" style="display: inline;">${reservInfo.roomPrice}</p>&nbsp;원</td>
						</tr>
						<c:choose>
							<c:when test="${reservInfo.exbed != 0 && reservInfo.meal != 0}">
								<tr class="text-center" id="exbed">
									<td></td>
									<td>추가 침대</td>
									<td>${reservInfo.exbed}&nbsp;개</td>
									<td><p id="cexb" style="display: inline;">${reservInfo.exbed * 30000}</p>&nbsp;원</td>
								</tr>
								<tr class="text-center" id="meal">
									<td></td>
									<td>조&nbsp;&nbsp;식</td>
									<td>${reservInfo.meal}&nbsp;명</td>
									<td><p id="cmea" style="display: inline;">${reservInfo.meal * 30000}</p>&nbsp;원</td>
								</tr>
							</c:when>
							<c:when test="${reservInfo.exbed != 0}">
								<tr class="text-center" id="exbed">
									<td></td>
									<td>추가 침대</td>
									<td>${reservInfo.exbed}&nbsp;개</td>
									<td><p id="cexb" style="display: inline;">${reservInfo.exbed * 30000}</p>&nbsp;원</td>
								</tr>
							</c:when>
							<c:when test="${reservInfo.meal != 0}">
								<tr class="text-center" id="meal">
									<td></td>
									<td>조&nbsp;&nbsp;식</td>
									<td>${reservInfo.meal}&nbsp;명</td>
									<td><p id="cmea" style="display: inline;">${reservInfo.meal * 30000}</p>&nbsp;원</td>
								</tr>
							</c:when>
							<c:otherwise></c:otherwise>
						</c:choose>
						<tr class="text-right" id="tex">
							<td colspan="3">세금&amp;봉사료</td>
							<td><p id="ctex" style="display: inline;"></p>&nbsp;원</td>
						</tr>
						<tr class="text-right" id="ttp">
							<td colspan="3">요금합계&nbsp;&nbsp;&nbsp;</td>
							<td><p id="cttp" style="display: inline;"></p>&nbsp;원</td>
						</tr>
					</table>
					<p style="magin: 0; color: #7e4f15;">&#8251; 10% service charge and 11% Tax Included.<br />&#8251; 현재 미결제 상태이며, 체크인시 결제가 진행됩니다.</p>
				</div>
				<div class="mypg-contents-table">
					<h5 class="mypg-rsvt2-title-1">카드 정보</h5>
					<table class="mypg-rsvt2-contents-table-3">
						<tr>
							<td style="width: 15%">카드번호</td>
							<td colspan="3">${reservInfo.cardNo}</td>
						</tr>
						<tr>
							<td style="width: 15%">카드종류</td>
							<td style="width: 35%">${reservInfo.cardType}</td>
							<td style="width: 15%">만기일</td>
							<td style="width: 35%">${reservInfo.cardYy}년&nbsp;${reservInfo.cardMm}월</td>
						</tr>
					</table>
				</div>
				<div class="mypg-contents-table mypg-mb">
					<h5 class="mypg-rsvt2-title-1">요청사항</h5>
					<table class="mypg-rsvt2-contents-table-4">
						<tr>
							<td style="width: 15%;">남기신 말씀</td>
							<td>${reservInfo.detail}</td>
						</tr>
					</table>
				</div>
				<div class="pull-left mypg-contents-btn3">
					<button type="button" class="btn mypg-rsvt2-list" onclick="moveToList()">목록</button>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		function moveToList() {
			location.href="${pageContext.request.contextPath}/mypage/mypg_reservation.do"
		}
		
		$(function() { 
			var crpr = Number($("#crpr").text());
			var cexb = Number($("#cexb").text());
			var cmea = Number($("#cmea").text());
			var cttpa = crpr + cexb + cmea;
			var ctexa = cttpa * 0.1;
			var ctexb = cttpa * 0.11;
			$("#ctex").text(ctexa + ctexb);
			var ctex = Number($("#ctex").text());
			var cttp = $("#cttp").text(cttpa + ctex);
		})
		
		var initBody;
		function beforePrint() {
			 boxes = document.body.innerHTML;
			 document.body.innerHTML = print_area.innerHTML;
		}
		function afterPrint() { 
			 document.body.innerHTML = boxes;
		}
		function printArea() {
			 window.print();
		}
		window.onbeforeprint = beforePrint;
		window.onafterprint = afterPrint;
	</script>
	<!-- ==============끝================== -->
	<%@ include file="/WEB-INF/inc/footer.jsp" %>
</body>
<!-- 모달 -->
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
<!-- 모달 -->
</html>