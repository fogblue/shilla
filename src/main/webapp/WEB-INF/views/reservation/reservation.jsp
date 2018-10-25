<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!doctype html>
<html>

<head>
<%@ include file="/WEB-INF/inc/head.jsp"%>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/rsv_reservation.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/rsv_roomselect.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/plugins/t-datepicker/t-datepicker.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/plugins/t-datepicker/t-datepicker-main.css">
<script src="${pageContext.request.contextPath}/assets/plugins/t-datepicker/t-datepicker.min.js"></script>
</head>

<body>
	<%@ include file="/WEB-INF/inc/topbar.jsp"%>
	<div class="container main">
		<%-- container start --%>

		<div class="rsv_step">
			<span class="rsv_stepimg">Step1. 날짜/인원/객실 선택 Step2. 옵션 선택
				Step3. 고객 정보 입력 Step4. 예약 완료 /확인</span>
		</div>

		<div class="rsv_selectbox">
			<%-- selectbox start --%>
			<strong class="rsv_hotelselect_hangel">호텔선택</strong> <select
				class="rsv_hotelselect_dropdown">
				<option class="selected">서울신라호텔</option>
				<option>제주신라호텔</option>
			</select>

			<div class="t-datepicker">
			  <div class="t-check-in"></div>
			  <div class="t-check-out"></div>
			</div>
<script type="text/javascript">
  $(document).ready(function(){
    $('.t-datepicker').tDatePicker({
    	// auto close after selection
    	  autoClose        : true,

    	  // animation speed in milliseconds
    	  durationArrowTop : 200,

    	  // the number of calendars
    	  numCalendar    : 2,

    	  // localization
    	  titleCheckIn   : 'Check In',
    	  titleCheckOut  : 'Check Out',
    	  titleToday     : 'Today',
    	  titleDateRange : 'night',
    	  titleDateRanges: 'nights',
    	  titleDays      : [ 'Mo', 'Tu', 'We', 'Th', 'Fr', 'Sa', 'Su' ],
    	  titleMonths    : ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'Septemper', 'October', 'November', "December"],

    	  // the max length of the title
    	  titleMonthsLimitShow : 3,

    	  // replace moth names
    	  replaceTitleMonths : null,

    	  // e.g. 'dd-mm-yy'
    	  showDateTheme   : null,

    	  // icon options
    	  iconArrowTop : true,
    	  iconDate     : '&#x279C;',
    	  arrowPrev    : '&#x276E;',
    	  arrowNext    : '&#x276F;',
    	  // https://fontawesome.com/v4.7.0/icons/
    	  // iconDate: '<i class="li-calendar-empty"></i><i class="li-arrow-right"></i>',
    	  // arrowPrev: '<i class="fa fa-chevron-left"></i>',
    	  // arrowNext: '<i class="fa fa-chevron-right"></i>',

    	  // shows today title
    	  toDayShowTitle       : true, 

    	  // showss dange range title
    	  dateRangesShowTitle  : true,

    	  // highlights today
    	  toDayHighlighted     : false,

    	  // highlights next day
    	  nextDayHighlighted   : false,

    	  // an array of days
    	  daysOfWeekHighlighted: [0,6],

    	  // custom date format
    	  formatDate      : 'yyyy-mm-dd',

    	  // dateCheckIn: '25/06/2018',  // DD/MM/YY
    	  // dateCheckOut: '26/06/2018', // DD/MM/YY
    	  dateCheckIn  : null,
    	  dateCheckOut : null,
    	  startDate    : null,
    	  endDate      : null,

    	  // limits the number of months
    	  limitPrevMonth : 0,
    	  limitNextMonth : 11,

    	  // limits the number of days
    	  limitDateRanges    : 31,

    	  // true -> full days || false - 1 day
    	  showFullDateRanges : false, 

    	  // DATA HOLIDAYS
    	  // Data holidays
    	  fnDataEvent   : null
    });
  });
</script>
		</div>

			<div class="rsv_personcount">
				<div class="rsv_adult">
					<div class="rsv_pmbutton">
						<span>성인</span>
					</div>
					<div class="rsv_numbox" id="numbox1">1</div>
					<div class="rsv_pmbotton2">
						<button type="button" class="rsv_plus 1234" id="plus1">+</button>
						<button type="button" class="rsv_minus 1234" id="minus1">-</button>
					</div>
				</div>
				<div class="rsv_child">
					<div class="rsv_pmbutton">
						<span>어린이</span>
					</div>
					<div class="rsv_numbox" id="numbox2">0</div>
					<div class="rsv_pmbotton2">
						<button type="button" class="rsv_plus 1234" id="plus2">+</button>
						<button type="button" class="rsv_minus 1234" id="minus2">-</button>
					</div>
				</div>
				<div class="rsv_baby">
					<div class="rsv_pmbutton">
						<span>유아</span>
					</div>
					<div class="rsv_numbox" id="numbox3">0</div>
					<div class="rsv_pmbotton2">
						<button type="button" class="rsv_plus 1234" id="plus3">+</button>
						<button type="button" class="rsv_minus 1234" id="minus3">-</button>
					</div>
				</div>
				<script type="text/javascript">
					$(function() {
						var number1;
						var number2;
						var number3;
						var numbertotal;
						$('.1234')
								.click(
										function() {
											numbertotal = parseInt($('#numbox1')
													.text())
													+ parseInt($('#numbox2')
															.text())
													+ parseInt($('#numbox3')
															.text());
										});
						$('#plus1')
								.click(
										function() {
											number1 = parseInt($('#numbox1')
													.text());

											if (numbertotal == 4
													|| parseInt($('#numbox1')
															.text()) == 3) {
												alert('객실 1실 당 성인과 소인 동반 시 최대 4인까지만 투숙 가능합니다.');
											} else {
												number1++;
											}
											$('#numbox1').text(number1);
										});
						$('#plus2')
								.click(
										function() {
											number2 = parseInt($('#numbox2')
													.text());
											if (numbertotal == 4
													|| parseInt($('#numbox1')
															.text()) > 3) {
												alert('객실 1실 당 성인과 소인 동반 시 최대 4인까지만 투숙 가능합니다.');
											} else {
												number2++;
											}
											$('#numbox2').text(number2);
										});
						$('#plus3')
								.click(
										function() {
											number3 = parseInt($('#numbox3')
													.text());
											if (numbertotal == 4
													|| parseInt($('#numbox1')
															.text()) > 3) {
												alert('객실 1실 당 성인과 소인 동반 시 최대 4인까지만 투숙 가능합니다.');
											} else {
												number3++;
											}
											$('#numbox3').text(number3);
										});
						$('#minus1').click(function() {
							number1 = parseInt($('#numbox1').text());
							if (number1 <= 1) {
								number1 = 1;
							} else {
								number1--;
							}
							$('#numbox1').text(number1);
						});
						$('#minus2').click(function() {
							number2 = parseInt($('#numbox2').text());
							if (number2 <= 0) {
								number2 = 0;
							} else {
								number2--;
							}
							$('#numbox2').text(number2);
						});
						$('#minus3').click(function() {
							number3 = parseInt($('#numbox3').text());
							if (number3 <= 0) {
								number3 = 0;
							} else {
								number3--;
							}
							$('#numbox3').text(number3);
						});
					});
				</script>
			</div>

			<div class="rsv_search">
				<a href="#" id="rsv_roomsearchbtn">검색</a>
			</div>

		</div>
		<%-- selectbox end --%>

		<script type="text/javascript">
			$(function() {
				$("#rsv_roomsearchbtn").click(function(e) {
					$("#rsv_contents_box2").empty();
					$.ajax({
						url : "${pageContext.request.contextPath}/reservation/rsv_roomselect.do",
						method : "get",
						data : {},
						dataType : "html",
						success : function(req) {
							$("#rsv_contents_box2").append(req);
						}
					});
				});
			});
		</script>

		<div class="rsv_discriptionbox" id="rsv_contents_box2">
			<span class="rsv_discription">예약을 원하시는 호텔, 날짜, 인원을 선택 후 검색 버튼을
				눌러주세요.</span>
		</div>

	</div>
	<%-- container end --%>
	<%@ include file="/WEB-INF/inc/footer.jsp"%>
</body>

</html>