<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!doctype html>
<html>
<head>
<%@ include file="/WEB-INF/inc/head.jsp"%>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/rsv_reservation.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/rsv_reservation2.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/rsv_reservation3.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/rsv_reservation4.css">
</head>
<body>
	<%@ include file="/WEB-INF/inc/topbar.jsp"%>
	<div class="container main">
		<%-- container start --%>
		<div class="rsv_step">
			<span class="rsv_step4img">Step1. 날짜/인원/객실 선택 Step2. 옵션 선택
				Step3. 고객 정보 입력 Step4. 예약 완료 /확인</span>
		</div>
		
		<div class="rsv_setp4cont">
			<div class="rsv_rsvComplete">
				<div class="rsv_rsvCompleteInner">
					<div class="rsv_conpleteMsg">
						<p class="completCustom">
							<strong>${loginInfo.userNameEng}</strong>
							<span style="display: inline-block; vwidth: 124px; vheight: 15px; overflow: hidden;">
								<img src="${pageContext.request.contextPath}/assets/img/rsv_thanks.gif" alt="고객님 감사합니다.">
							</span>
						</p>
						<p style="width: 1000px; height: 28px; overflow: hidden; margin-top: 30px; margin-bottom: 30px;">
							<img src="${pageContext.request.contextPath}/assets/img/rsv_rsvcomplete.gif" alt="예약이 완료되었습니다.">
						</p>
						<p style="width: 1000px; height: 60px; overflow: hidden;">
							<img src="${pageContext.request.contextPath}/assets/img/rsv_completetxt.gif"
								alt="※ 예약하신 내용이 예약 시 입력하신 이메일로 발송되었습니다.※ 예약 번호를 메모해두시면 빠르고 편리하게 예약을 확인하실 수 있습니다.">
						</p>
						<div class="rsv_rsvNum">
							예약번호<strong class="rsv_rsvNumstrong">${reservInfo.resvRoomId}</strong>
						</div>
					</div>
					<div class="rsv_rsvCompleteInfo">
						<ul>
							<li class="first">고객명<strong>${loginInfo.userNameEng}</strong></li>
							<li>연락처 <strong id="telNo">${loginInfo.tel}</strong></li>
							<li class="last">이메일<strong>${loginInfo.email}</strong></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="rsvCompletelist">
				<ul class="rsvCompleteListInner">
					<li class="rsv_4_first">
						<ul class="infoHtl">
							<li class="rsv_hotelname">호텔 <span class="rsv_compright">${reservInfo.hotelCate}</span>
							</li>
						</ul>
						<dl class="infoDesc">
							<dt class="rsv_4_dt">날짜/투숙인원</dt>
							<dd>
								<ul class="infoDescList">
									<li class="first">체크인 <span class="rsv_compright">${reservInfo.checkIn}</span></li>
									<li>체크아웃 <span class="rsv_compright">${reservInfo.checkOut}</span></li>
									<li>숙박일수<span class="rsv_compright"><span class="rsv_datediff"></span>박</span></li>
									<!-- <li>객실수<span class="rsv_compright">1</span></li> -->
									<li class="last">투숙인원 <span class="rsv_compright"> 성인 : ${reservInfo.pplAd}&nbsp; 어린이 : ${reservInfo.pplCh}&nbsp; 유아 : ${reservInfo.pplBb} </span></li>
								</ul>
							</dd>
						</dl>
					</li>
					<!-- 박수별 객실요금 계산 -->
					<li class="rsv_4_middle">
						<dl class="infoDesc">
							<dt class="rsv_4_dt">객실/패키지</dt>
							<dd>
								<ul class="infoDescList">
									<!-- <li class="first">패키지<span class="rsv_compright">Autumn Rooftop</span></li> -->
									<li>객실<span class="rsv_compright">${reservInfo.roomType}</span></li>
									<li>침대타입 <span class="rsv_compright">${reservInfo.bedType}</span></li>
									<li class="last">객실요금 <span class="rsv_compright">${reservInfo.roomPrice}원 </span></li>
								</ul>
							</dd>
						</dl>
						<dl class="infoDesc">
							<dt class="rsv_4_dt">옵션</dt>
							<dd>
								<ul class="infoDescList">
									<li class="first">Daily Breakfast Buffet for Adult(30,000원)<span class="rsv_compright">30,000원 </span></li>
									<li class="last">Daily Extra bed(30,000원)<span class="rsv_compright">30,000원 </span></li>
								</ul>
							</dd>
						</dl>
					</li>
					<li class="rsv_4_last">
						<ul class="infoDescList">
							<li class="first">봉사료<span class="rsv_compright">34,000원</span></li>
							<li class="last">세금<span class="rsv_compright">37,400원</span></li>
						</ul>
					</li>
				</ul>
				<div class="rsvCompleteTot">
					<strong>요금합계</strong> <span class="priceTotalSum"><strong>411,400</strong><span class="unitM"> 원</span></span>
				</div>
			</div>
		</div>
		
		<div class="rsv_rsvcomfwarn">
			<ul>
				<li class="rsv_rsvcomfwarnli">※ 10% service charge and 11% Tax Included.</li>
				<li>※ 예약한 내용 확인 및 변경, 취소는 My page에서 가능합니다.</li>
				<li>※ 비회원으로 예약한 경우에는, 예약번호로 예약 내용 확인, 변경, 취소가 가능합니다.</li>
				<li>※ 현재 미결제 상태이며, 체크인시 결제가 진행됩니다.</li>
			</ul>
		</div>
		<div class="rsv_rsvconfbtn">
			<button class="btn btn-lg rsv_confbtn" onclick="location.href='${pageContext.request.contextPath}/reservation/reservation.do'">확인</button>
		</div>
	</div>
	<%-- container end --%>
	<%@ include file="/WEB-INF/inc/footer.jsp"%>
	<script>
	
	$(function() { 
	var date1 = '${reservInfo.checkIn}';
	var date2 = '${reservInfo.checkOut}';

	// First we split the values to arrays date1[0] is the year, [1] the month and [2] the day
	date1 = date1.split('-');
	date2 = date2.split('-');

	// Now we convert the array to a Date object, which has several helpful methods
	date1 = new Date(date1[0], date1[1], date1[2]);
	date2 = new Date(date2[0], date2[1], date2[2]);

	// We use the getTime() method and get the unixtime (in milliseconds, but we want seconds, therefore we divide it through 1000)
	date1_unixtime = parseInt(date1.getTime() / 1000);
	date2_unixtime = parseInt(date2.getTime() / 1000);

	// This is the calculated difference in seconds
	var timeDifference = date2_unixtime - date1_unixtime;

	// in Hours
	var timeDifferenceInHours = timeDifference / 60 / 60;

	// and finaly, in days :)
	var timeDifferenceInDays = null;
	if( date1.getDate() > date2.getDate() ){
		timeDifferenceInDays = (timeDifferenceInHours  / 24) - 1;
	} else {
		timeDifferenceInDays = timeDifferenceInHours  / 24;
	}
	$(".rsv_datediff").text(timeDifferenceInDays);
	});
	</script>
</body>
</html>