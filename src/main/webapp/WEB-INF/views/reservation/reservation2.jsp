<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!doctype html>
<html>
<head>
<%@ include file="/WEB-INF/inc/head.jsp"%>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/css/rsv_reservation.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/css/rsv_reservation2.css">
</head>
<body>
	<%@ include file="/WEB-INF/inc/topbar.jsp"%>
	<div class="container main">
		<%-- container start --%>
		<div class="rsv_step">
			<span class="rsv_step2img">Step1. 날짜/인원/객실 선택 Step2. 옵션 선택
				Step3. 고객 정보 입력 Step4. 예약 완료 /확인</span>
		</div>

		<div class="rsv_cont">
			<div class="container1 col-sm-9">
				<form method="get"
					action="${pageContext.request.contextPath}/reservation/reservation3.do">
					<input type="hidden" name="id" id="id" value="${reservInfo.roomId}" />
					<input type="hidden" name="room_no" id="room_no"
						value="${reservInfo.roomNo}" /> <input type="hidden"
						name="room_type" id="room_type" value="${reservInfo.roomType}" />
					<input type="hidden" name="bed_type" id="bed_type"
						value="${reservInfo.bedType}" /> <input type="hidden"
						name="room_price" id="room_price" value="${reservInfo.roomPrice}" />
					<input type="hidden" name="hotel_category" id="hotel_cate"
						value="${reservInfo.hotelCate}" /> <input type="hidden"
						name="t-start" id="t-start" value="${reservInfo.checkIn}" /> <input
						type="hidden" name="t-end" id="t-end"
						value="${reservInfo.checkOut}" /> <input type="hidden"
						name="ppl_ad" id="ppl_ad" value="${reservInfo.pplAd}" /> <input
						type="hidden" name="ppl_ch" id="ppl_ch"
						value="${reservInfo.pplCh}" /> <input type="hidden" name="ppl_bb"
						id="ppl_bb" value="${reservInfo.pplBb}" />
					<div class="rsv2_option">
						<!-- ========================================================================== -->
						<div class="rsv2_optionlist">
							<h4 class="rsv2_optionlist_1">
								<strong>옵션사항</strong>
							</h4>
							<h4 class="rsv2_optionlist_2">객실이용에 필요한 옵션사항을 선택하세요.</h4>
						</div>
						<!-- ========================================================================== -->
						<div class="rsv2_option1">
							<!-- 세션저장값 -->
							<div class="col-sm-7">
								<div class="">																	
									<select class="rsv_optchbox" id="guestCardTypCd" name="meal">
										<option value="0">선택</option>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
									</select>&nbsp;&nbsp;&nbsp;<strong>Daily Breakfast Buffet for Adult</strong>
								</div>						
							</div>
							<div class="rsv2_optext2 col-sm-3">
								<p>30,000&nbsp;원&nbsp;/&nbsp;명</p>
							</div>
						</div>

						<div class="rsv2_option2 clearfix">
							<!-- 세션저장값 -->
							<div class="col-sm-7">
								<select class="rsv_optchbox" id="exbed" name="exbed">
										<option value="0">선택</option>
										<option value="1">1</option>
								</select>&nbsp;&nbsp;&nbsp;<strong>Daily Extra bed</strong>
							</div>
							<div class="rsv2_optext2 col-sm-3">
								<p>30,000&nbsp;원&nbsp;/&nbsp;개</p>
							</div>
						</div>


						<!-- =========================================================================== -->
						<div class="rsv2_option_graybox">
							<div class="rsv2_option_graybox2">
								<h6>조식이 포함된 패키지를 예약하실 경우 추가 인원에 대한 조식만 선택해주시기 바랍니다.</h6>
								<h6>37개월 미만의 유아 동반 시 조식에 대한 요금은 무료입니다.</h6>
							</div>
						</div>
					</div>

					<!-- =============================================================================== -->
					<!-- 아코디언 -->

					<div class='collapse-item'>
						<!-- 게시글 제목영역 -->
						<h2 class='collapse-title'>
							<!-- 세션저장값 -->
							<a href="#content1">추가 요청사항</a>
						</h2>
						<!-- 게시글 내용영역 -->
						<div id="content1" class="content">
							<textarea class="rsv_opt_textarea" name="detail" id="detail"
								placeholder="공항 교통편 문의 또는 호텔 이용 시 문의하실 사항이 있으시면 입력해 주십시오. &bull; 전망은 체크인 당일 사정에 따라 달라질 수 있습니다."></textarea>
						</div>
					</div>


					<div class='collapse-item2'>
						<!-- 게시글 제목영역 -->
						<h2 class='collapse-title2'>
							<a href="#content2">유의사항</a>
						</h2>
						<!-- 게시글 내용영역 -->
						<div id="content2" class="content2">
							<div class="col-sm-6">
								<ul class="rsv_infoul">
									<li>&lsaquo;호텔 이용안내&rsaquo;</li>

									<li>&bull;성인 2인 1실 기준이며, 요금에는 세금(10%) 및 봉사료(10%)가 부과됩니다.</li>

									<li>&bull;기준 인원을 초과하여 투숙 시 추가 인원에 대해 별도의 요금이 부과됩니다.<br />추가
										인원에 대한 기본 요금(세금 및 봉사료 별도)은 성인 5만원,<br />어린이 3만원이며, 객실 타입 및
										패키지 혜택에 따라 상이합니다<br />(성인 기준: 만 13세 이상, 어린이 기준: 37개월 이상~만 12세
										이하)
									</li>

									<li>&bull;37개월 미만의 유아 동반 시 추가 인원 요금 및 조식은 무료이며,<br />유아(37개월
										미만)동반 여부는 체크인 시 프론트 데스크 직원에게<br />알려 주셔야 무료로 이용 가능합니다.
									</li>

									<li>&bull;체크인은 오후 3시, 체크아웃은 정오까지입니다.</li>

									<li>&bull;본 홈페이지 요금은 할인 적용된 요금이며, 카드사 할인 등의 중복 할인<br />혜택이
										적용되지 않습니다.
									</li>

									<li>&bull;어린이 동반 고객을 위한 영유아 용품(아기 욕조, 아기 침대, 어린이 베개<br />및
										아동용 배스로브와 슬리퍼)은 객실예약과를 통해 사전 요청 가능하며,<br />이용 상황에 따라 조기 마감될 수
										있습니다. (단, 유모차는 현장에서만 대여 가능합니다.)
									</li>

									<li>&bull;자세한 객실안내는 객실예약과(02-2230-3310)로 문의 바랍니다.</li>

								</ul>
							</div>
							<div class="col-sm-6">
								<ul class="rsv_infoul">
									<li>&lsaquo;부대시설 이용안내&rsaquo;</li>

									<li>&bull;체련장(Gym), 실내 수영장, 실내 사우나(유료시설)는 매월 3번째 수요일
										정기휴무입니다.(단, 2018년 8월 세 번째 수요일인 광복절(공휴일)은 정상 영업하며, 피트니스 정기 휴무일은
										8월 22일로 변경됩니다.)</li>

									<li>&bull;체련장은 만 16세 이상, 실내 사우나는 만 13세 이상부터 이용 가능합니다.</li>

									<li>&bull;실내 수영장은 성인 고객 전용 시설로, 만 13세 미만 고객은 주말 및 공휴일에 한해
										성인 보호자의 보호 하에 이용 가능합니다.</li>

									<li>&bull;2018년 어번 아일랜드(야외 수영장) 운영 기간 : 3월 31일 ~ 10월
										31일(2017년 11월 1일~2018년 3월 30일까지 미운영)</li>

									<li>&bull;야외 수영장인 어번 아일랜드는 유료시설로서 입장 혜택이 포함된 상품 외에는 이용 시
										입장료가 추가로 부과되며 사전 예약은 불가합니다. 쾌적하고 안전한 운영을 위해 적정 인원 초과 시 입장이 제한될
										수 있습니다.</li>

									<li>&bull;실내 및 야외 수영장의 성인풀에서는 신장 140cm 미만인 고객은 성인 보호자의 보호
										하에 구명조끼 착용 시에만 이용 가능합니다.</li>

									<li>&bull;성인풀, 키즈풀 및 자쿠지 등의 시설 이용 시 현장 라이프 가드 직원의 안내를 받으시기
										바랍니다.</li>

								</ul>
							</div>
						</div>
					</div>
					<div>
						<button class="btn btn-md rsv_prevbtn"
							onclick="location.href='${pageContext.request.contextPath}/reservation/reservation.do'">&lt;SETP
							1</button>
					</div>
					<div>
						<%-- <button class="btn btn-md rsv_nextbtn" onclick="location.href='${pageContext.request.contextPath}/reservation/reservation3.do'">회원예약</button> --%>
						<button class="rsv_nextbtn" id="rsv_nextbtn" type="submit">회원예약</button>
					</div>
				</form>

			</div>


			<!--// 아코디언 -->

			<!-- ==예약정보== ==예약정보== ==예약정보== ==예약정보== ==예약정보== ==예약정보== ==예약정보== ==예약정보== ==예약정보== ==예약정보== -->
			<div class="rsv_rsvinfobox col-sm-3">

				<div class="rsv_rsvinfo">
					<p class="rsv_rsvinfotitle">예약정보</p>
					<div class="rsv_rsvinforesetbtn">
						<button class="btn btn-sm rsv_rsvinforesetbtn"
							onclick="location.href='${pageContext.request.contextPath}/reservation/reservation.do'">예약초기화</button>
					</div>
				</div>

				<div class="rsv_rsvinfotext">
					<ul class="rsv_rsvinfotextul">
						<li class="rsv_rsvinfotext">호텔 : <span class="htlTxt">${reservInfo.hotelCate}</span></li>
					</ul>
				</div>
				<br />
				<hr />

				<div class="rsv_rsvinfotext">
					<ul class="rsv_rsvinfotextul clearfix">
						<li class="first">체크인 : <span>${reservInfo.checkIn}</span></li>
						<li>체크아웃 : <span>${reservInfo.checkOut}</span></li>
						<li>숙박일수 : <span class="rsv_datediff"></span></li>
						<li>투숙 인원<br />
						<span> 성인 : ${reservInfo.pplAd}&nbsp; 어린이 :
								${reservInfo.pplCh}&nbsp; 유아 : ${reservInfo.pplBb} </span>
						</li>
						<li>객실타입 : <span>${reservInfo.roomType}</span> <!-- 유의사항 모달로 구현해야함 -->
							<div class="rsv_packagewarn clearfix">
								<!-- 링크로 모달 열기 -->
								<a href="#" class="btn btn-warning" data-toggle="modal"
									data-target="#myModal2"> 패키지 유의사항 </a>
							</div> <!-- Modal -->
							<div class="modal fade" id="myModal2">
								<div class="modal-dialog modal-md">
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal"
												aria-label="Close">
												<span aria-hidden="true">&times;</span>
											</button>
											<h4 class="modal-title">패키지 유의사항</h4>
										</div>
										<div class="modal-body">
											<p class="rsv_useguide">
												- 본 상품은 성인 2인 1실 기준이며, 요금에는 세금 및 봉사료가 부과됩니다. <br /> <br /> -
												본 패키지는 어번 아일랜드(야외 수영장) 입장 혜택을 포함하지 않은 상품입니다. <br /> <br /> -
												어번 아일랜드 루프탑은 이용 시간(9월 7일 ~ 30일 18:00 ~ 22:00 / 10월 1일 ~ 21일
												17:00 ~ 21:00)에 한해 입장 및 이용 가능합니다. <br /> <br /> - 더 이그제큐티브
												라운지는 투숙객 전용 공간으로, 객실 투숙 고객(만 13세 이상)에 한해 이용 가능합니다. <br /> <br />
												- 본 상품은 카드사 할인 등의 중복 할인 혜택이 적용되지 않습니다. <br /> <br /> - 기준
												인원을 초과하여 투숙 시 추가 인원에 대해서는 별도의 요금이 부과됩니다.<br />• 객실 1실 당 성인은
												최대 3인까지만 투숙 가능하며, 소인(37개월 이상~만 12세 이하)은 최대 2인까지만 동반 투숙
												가능합니다.<br />• 객실 1실 당 성인과 소인 동반 시 최대 4인까지만 투숙 가능합니다. <br />
												<br /> - Check-in은 오후 3시, Check-out은 정오까지입니다. <br /> <br />
												- 숙박 예정일 1일 전 18시까지는 위약금 없이 취소 및 변경이 가능합니다. <br /> <br /> 숙박
												예정일 1일 전 18시 이후 취소/변경 및 노쇼(No-show) 발생 시, ▷성수기(5월~10월, 12월
												24일~31일)에는 최초 1일 숙박 요금의 80%, ▷비수기(성수기 외 기간)에는 최초 1일 숙박 요금의
												10%가 위약금으로 부과됩니다. <br /> <br /> - 패키지에 포함된 혜택 및 선물은 투숙 기간 중에
												한해 1회 제공되며, 중복 제공되지 않습니다. <br /> <br /> - 주류는 성인 고객에 한해 이용
												가능합니다. <br />
											</p>
										</div>
									</div>
								</div>
							</div> <!-- 유의사항 모달로 구현해야함 -->


						</li>
					</ul>
					<p>
						침대타입<span>${reservInfo.bedType}</span>
					</p>
					<hr />
				</div>

				<div class="rsv_prinfo">
					<p class="rsv_rsvinfotitle clearfix">객실</p>
					<ul>
						<li>${reservInfo.roomType}&nbsp;(${reservInfo.roomNo}호)</li>
						<li>체크인 날짜 : ${reservInfo.checkIn}&nbsp;
							${reservInfo.roomPrice}원</li>
					</ul>
					<p>${reservInfo.roomPrice}원
						(<span class="rsv_datediff"></span>박)
					</p>

					<div class="rsv_optiontxt">Daily Breakfast Buffet for Adult
						30,000원 추가침대 30,000원</div>

				</div>




				<%-- <div class="rsv_primg">
				<img src="${pageContext.request.contextPath}/assets/img/rsv_packageimg1.jpg" alt="이미지1" />
				
				<p>Business Deluxe / Twin</p>
				<img src="${pageContext.request.contextPath}/assets/img/rsv_businessdeluxe.jpg" alt="이미지1" />
				</div> --%>
				<hr />
				<div class="rsv_price">
					<p>봉사료 28,000 원</p>
					<p>세금 30,800 원</p>
				</div>
				<div class="rsv_totalpay">
					<p>요금합계 338,800원</p>
				</div>

				<input type="hidden" name="room_id" id="room_id"
					value="${roomList.id}" /> <input type="hidden" name="room_no"
					id="room_no" value="${roomList.roomNo}" /> <input type="hidden"
					name="room_type" id="room_type" value="${roomList.roomType}" /> <input
					type="hidden" name="bed_type" id="bed_type"
					value="${roomList.bedType}" /> <input type="hidden"
					name="room_price" id="room_price" value="${roomList.roomPrice}" />
				<input type="hidden" name="hotel_cate" id="hotel_cate"
					value="${roomList.hotelCate}" />
			</div>
			<!-- ==예약정보== ==예약정보== ==예약정보== ==예약정보== ==예약정보== ==예약정보== ==예약정보== ==예약정보== ==예약정보== ==예약정보== -->


		</div>

	</div>

	<script src="http://code.jquery.com/jquery-3.2.1.min.js"></script>
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
	

		$(function() {
			/** 게시글의 제목을 클릭한 경우 호출되는 이벤트 정의 */
			$(".collapse-title a").click(function(e) {
				// 링크의 기본 동작(페이지 이동) 방지
				e.preventDefault();

				// 클릭한 요소의 href 속성을 가져온다 --> 내용영역의 id
				var target = $(this).attr('href');
				// 가져온 내용영역의 id를 화면에 표시한다.
				$(target).slideToggle(100);

			});
		});

		$(function() {
			/** 게시글의 제목을 클릭한 경우 호출되는 이벤트 정의 */
			$(".collapse-title2 a").click(function(e) {
				// 링크의 기본 동작(페이지 이동) 방지
				e.preventDefault();

				// 클릭한 요소의 href 속성을 가져온다 --> 내용영역의 id
				var target = $(this).attr('href');
				// 가져온 내용영역의 id를 화면에 표시한다.
				$(target).slideToggle(100);

			});
		});
		
		$(function() {
			$(".rsv_optchbox").checked(function(e) {
				$(".rsv_optiontxt").empty();
			});
		});
		
	</script>

	<%-- container end --%>
	<%@ include file="/WEB-INF/inc/footer.jsp"%>
</body>
</html>