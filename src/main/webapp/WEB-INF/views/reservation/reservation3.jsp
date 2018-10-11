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
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/css/rsv_reservation3.css">

</head>

<body>
	<%@ include file="/WEB-INF/inc/topbar.jsp"%>
	<div class="container main">
		<%-- container start --%>


		<div class="rsv_step">
			<span class="rsv_step3img">Step1. 날짜/인원/객실 선택 Step2. 옵션 선택
				Step3. 고객 정보 입력 Step4. 예약 완료 /확인</span>
		</div>
		<div class="rsv_cont">
			<div class="container1 col-sm-9">

				<div class="rsv2_option">
					<!-- =============================================================================================================================================================================== -->
					<div class="rsv2_optionlist">
						<h4 class="rsv2_optionlist_1">
							<strong>고객 정보 입력</strong>
						</h4>
						<h4 class="rsv2_optionlist_2">*표시 필수 입력사항</h4>
					</div>
					<!-- =============================================================================================================================================================================== -->
					<div class="rsv_customerinfobox">
						<div class="rsv_customerinfo col-sm-6">
							<p>투숙자 정보 입력</p>
							*성명(한글) <select name="jender" disabled>
								<option value="mr." selected="selected">Mr.</option>
								<option value="ms.">Ms.</option>
							</select><input type="text" disabled value="이름" name="name" /> <br /> <br />
							*성명(영문) <input type="text" disabled value="LASTNAME" name="name" />
							<input type="text" disabled value="FIRSTNAME" name="name" /> <br />
							<br /> *지역(여권기준) <select name="jender" disabled>
								<option selected="selected">South Korea</option>
							</select> <br /> <br /> *이메일 <input type="text" disabled value="E-mail"
								name="email" /> <br /> <br /> *연락처 <select name="jender"
								disabled>
								<option selected="selected">휴대전화</option>
							</select><input type="text" disabled value="010-1577-1577" name="tel" />
						</div>
						<div class="rsv_cardinfo col-sm-6">
							<p>카드 정보 입력</p>
							*카드종류 <select class="uiform" id="guestCardTypCd"
								name="guestCardTypCd" title="카드사 선택">
								<option value="">선택</option>
								<option value="AX">AMEX CARD</option>
								<option value="BC">BC CARD</option>
								<option value="CB">CITIBANK CARD</option>
								<option value="DI">DINERS CARD</option>
								<option value="HD">HYUNDAI CARD</option>
								<option value="JC">JCB CARD</option>
								<option value="KE">KEB CARD</option>
								<option value="KM">KOOKMIN CARD</option>
								<option value="LO">LOTTE CARD</option>
								<option value="MA">MASTER OVERSEAS</option>
								<option value="SH">SHINHAN CARD</option>
								<option value="SS">SAMSUNG CARD</option>
								<option value="VS">VISA OVERSEAS</option>
								<option value="UN">UNION PAY</option>
							</select> <br /> <br /> *카드번호 <input type="text" class="cardno"
								name="cardno" />-<input type="text" class="cardno"
								name="cardno" />-<input type="text" class="cardno"
								name="cardno" /> <br /> <br /> *만기일 <select name="month">
								<option value="">월</option>
								<option value="01">01</option>
								<option value="02">02</option>
								<option value="03">03</option>
								<option value="04">04</option>
								<option value="05">05</option>
								<option value="06">06</option>
								<option value="07">07</option>
								<option value="08">08</option>
								<option value="09">09</option>
								<option value="10">10</option>
								<option value="11">11</option>
								<option value="12">12</option>
							</select> <select name="year">
								<option value="">년</option>
								<option value="2028">2028</option>
								<option value="2027">2027</option>
								<option value="2026">2026</option>
								<option value="2025">2025</option>
								<option value="2024">2024</option>
								<option value="2023">2023</option>
								<option value="2022">2022</option>
								<option value="2021">2021</option>
								<option value="2020">2020</option>
								<option value="2019">2019</option>
								<option value="2018">2018</option>
							</select> <br /> <br /> <br />
							<p>
								※신용카드 정보는 고객님의 투숙에 의한 개런티 외에는 어떤 목적으로도 사용되지 않습니다.<br />온라인 예약 시
								직접 결제가 이루어지지 않으며, 최종 결제는 체크아웃 시 프런트 데스크에서 해주시기 바랍니다.
							</p>
						</div>
					</div>
					<br /> <br />
					<div class="rsv_infor">
						<p class="rsv_infortitle">취소/변경 및 노쇼(No-show) 안내</p>
						<p>숙박 예정일 1일 전 18시까지는 위약금 없이 취소 및 변경이 가능합니다.</p>
						<p>
							숙박 예정일 1일 전 18시 이후 취소/변경 및 노쇼(No-show) 발생 시,<br> -
							성수기(5월~10월, 12월 24일~31일) : 최초 1일 숙박 요금의 80%가 위약금으로 부과됩니다.<br>
							- 비수기(성수기 외 기간) :&nbsp;최초 1일 숙박 요금의 10%가 위약금으로 부과됩니다.
						</p>
					</div>

				</div>

				<!-- =============================================================================================================================================================================== -->
				<!-- 아코디언 -->



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
									인원에 대한 기본 요금(세금 및 봉사료 별도)은 성인 5만원,<br />어린이 3만원이며, 객실 타입 및 패키지
									혜택에 따라 상이합니다<br />(성인 기준: 만 13세 이상, 어린이 기준: 37개월 이상~만 12세 이하)
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
						onclick="location.href='${pageContext.request.contextPath}/reservation/reservation2.do'">&lt;SETP
						2</button>
				</div>

				<!-- ==예약신청 모달== ==예약신청 모달== ==예약신청 모달== ==예약신청 모달== ==예약신청 모달== ==예약신청 모달== ==예약신청 모달== ==예약신청 모달== ==예약신청 모달== -->
				<div class="rsv_packagewarn clearfix">
					<!-- 링크로 모달 열기 -->
					<a href="#" class="btn btn-warning rsv_rsvapplibtn"
						data-toggle="modal" data-target="#myModal2"> 예약신청 </a>
				</div>
				<!-- Modal -->
				<div class="modal fade" id="myModal2">
					<div class="modal-dialog modal-lg">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal"
									aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
								<h4 class="modal-title">예약정보</h4>
							</div>


							<div class="modal-body">

								<!-- ============== -->
								<div class="rsv_rsvinfomodal">
									<div class="rsv_rsvinfomodal_wrap">
										<!-- ==호텔,상태,체크인날짜,체크아웃날짜,객실수,등록일자,객실타입으로 구성된테이블== -->
										<!-- ==호텔,상태,체크인날짜,체크아웃날짜,객실수,등록일자,객실타입으로 구성된테이블== -->
										<table summary="호텔,상태,체크인날짜,체크아웃날짜,객실수,등록일자,객실타입으로 구성된테이블"
											class="rsv_rsvinfomodal_table tableTypeA tableInfo1">

											<colgroup>
												<col width="18% " class="col1">
												<col class="col2">
												<col width="18% " class="col5">
												<col class="col4">
											</colgroup>

											<tbody>
												<tr class="rsv_rsv3_tr">
													<th class="rsv_rsv3_thf" scope="row">호텔</th>
													<td class="rsv_rsv3_tdf">서울신라호텔</td>
													<th class="rsv_rsv3_thf" scope="row">성명(영문)</th>
													<td class="rsv_rsv3_tdf" id="guestName">LEE DONGGEON</td>
												</tr>
												<tr class="rsv_rsv3_tr">
													<th class="rsv_rsv3_th" scope="row">체크인</th>
													<td class="rsv_rsv3_td">2018.10.15</td>
													<th class="rsv_rsv3_th" scope="row">체크아웃</th>
													<td class="rsv_rsv3_td">2018.10.16</td>
												</tr>
												<tr class="rsv_rsv3_tr">
													<th class="rsv_rsv3_th" scope="row">숙박일수</th>
													<td class="rsv_rsv3_td">1박</td>
													<th class="rsv_rsv3_th" scope="row">투숙인원</th>
													<td class="rsv_rsv3_td">성인 : 1&nbsp;/ 어린이 : 0&nbsp;/
														유아 : 0</td>
												</tr>
												<tr class="rsv_rsv3_tr">
													<th class="rsv_rsv3_thl" scope="row">패키지명</th>
													<td class="rsv_rsv3_tdl">Autumn Rooftop</td>
													<th class="rsv_rsv3_thl" scope="row">객실</th>
													<td class="rsv_rsv3_tdl">Business Deluxe / Twin</td>
												</tr>
											</tbody>
											<!-- ==호텔,상태,체크인날짜,체크아웃날짜,객실수,등록일자,객실타입으로 구성된테이블== -->
											<!-- ==호텔,상태,체크인날짜,체크아웃날짜,객실수,등록일자,객실타입으로 구성된테이블== -->
										</table>
										<br />

										<table class="rsv_PriceTable"
											summary="예약번호,투숙인원,고객명,침대타입,객실요금으로 구성된 게시물 리스트 표">

											<colgroup>
												<col width="15%" class="col1">
												<col width="35%" class="col2">
												<col width="25%" class="col3">
												<col class="col4">
											</colgroup>

											<tbody>
												<!-- 박수별 객실요금 계산 -->
												<tr class="rsv_rsv3_tr2">
													<td class="rsv_rsv3_td2" rowspan="1">객실</td>
													<td class="rsv_rsv3_td2">2018.10.15</td>
													<td class="rsv_rsv3_td2">280,000&nbsp;원</td>
													<td class="rsv_rsv3_td2" id="partSum" rowspan="1">280,000&nbsp;원
														(1박)</td>
												</tr>
											</tbody>

											<tbody>
												<tr class="rsv_rsv3_tr2">
													<td class="rsv_rsv3_td2" rowspan="2">옵션</td>
													<!-- 옵션요금 계산 -->
													<td class="rsv_rsv3_td2">Daily Breakfast Buffet for
														Adult</td>
													<td class="rsv_rsv3_td2">30,000원</td>
													<td class="rsv_rsv3_td2" rowspan="2" class="price">60,000&nbsp;원</td>
												</tr>

												<tr class="rsv_rsv3_tr2">
													<td class="rsv_rsv3_td2">Daily Extra bed</td>
													<td class="rsv_rsv3_td2">30,000원</td>
													<!-- 옵션요금 합계 -->
												</tr>
											</tbody>

										</table>

										<div class="rsv_priceWrap">

											<div class="rsv_otherprice">

												<div class="rsv_otherpricep clearfix">
													<p>&nbsp;&nbsp;봉사료</p>
													<p>31,000원</p>
													<br />
												</div>
												<div class="rsv_otherpricep">
													<p>&nbsp;&nbsp;&nbsp;&nbsp;세금</p>
													<p>34,100원</p>
												</div>

											</div>

											<div class="rsv_totalprice">
												<p class="rsv_totalpricep">375,100원</p>
												<p class="rsv_totalpricep">요금합계 :&nbsp;</p>
											</div>

										</div>

										<div class="rsv_priceview">
											<div class="rsv_priceview">
												※ 10% Tax Included <br>※ 예약한 내용 확인 및 변경, 취소는 <a
													href="/membership/mypage/resv/memListResv.do">My page</a>에서
												가능합니다. <br> <strong>※ 현재 미결제 상태이며, 체크인시 결제가
													진행됩니다.</strong>
											</div>
										</div>

									</div>
								</div>
								<!-- ============== -->

								<button type="button" class="btn btn-default"
									data-dismiss="modal">이전</button>
								<button class="btn btn-md rsv_nextbtn"
									onclick="location.href='${pageContext.request.contextPath}/reservation/reservation4.do'">예약신청</button>
							</div>


						</div>

					</div>
				</div>
				<!-- ==예약신청 모달== ==예약신청 모달== ==예약신청 모달== ==예약신청 모달== ==예약신청 모달== ==예약신청 모달== ==예약신청 모달== ==예약신청 모달== ==예약신청 모달== -->



				<div></div>
			</div>

			<script src="http://code.jquery.com/jquery-3.2.1.min.js"></script>
			<script type="text/javascript">
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
			</script>
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
						<li class="rsv_rsvinfotext">호텔 : <span class="htlTxt">서울신라호텔</span></li>
					</ul>

				</div>
				<br />
				<hr />

				<div class="rsv_rsvinfotext">
					<ul class="rsv_rsvinfotextul clearfix">
						<li class="first">체크인 : <span>2018.10.01</span></li>
						<li>체크아웃 : <span>2018.10.02</span></li>
						<li>숙박일수 : <span>1박</span></li>
						<li>투숙 인원<br /> <span> 성인 : 1&nbsp; 어린이 : 0&nbsp; 유아
								: 0 </span>
						</li>
						<li>패키지명 : <span>Autumn Rooftop</span> <!-- 유의사항 모달로 구현해야함 -->
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
												- 본 상품은 성인 2인 1실 기준이며, 요금에는 세금 및 봉사료가 부과됩니다. <br /> <br />
												- 본 패키지는 어번 아일랜드(야외 수영장) 입장 혜택을 포함하지 않은 상품입니다. <br /> <br />
												- 어번 아일랜드 루프탑은 이용 시간(9월 7일 ~ 30일 18:00 ~ 22:00 / 10월 1일 ~
												21일 17:00 ~ 21:00)에 한해 입장 및 이용 가능합니다. <br /> <br /> - 더
												이그제큐티브 라운지는 투숙객 전용 공간으로, 객실 투숙 고객(만 13세 이상)에 한해 이용 가능합니다. <br />
												<br /> - 본 상품은 카드사 할인 등의 중복 할인 혜택이 적용되지 않습니다. <br /> <br />
												- 기준 인원을 초과하여 투숙 시 추가 인원에 대해서는 별도의 요금이 부과됩니다.<br />• 객실 1실
												당 성인은 최대 3인까지만 투숙 가능하며, 소인(37개월 이상~만 12세 이하)은 최대 2인까지만 동반 투숙
												가능합니다.<br />• 객실 1실 당 성인과 소인 동반 시 최대 4인까지만 투숙 가능합니다. <br />
												<br /> - Check-in은 오후 3시, Check-out은 정오까지입니다. <br /> <br />
												- 숙박 예정일 1일 전 18시까지는 위약금 없이 취소 및 변경이 가능합니다. <br /> <br />
												숙박 예정일 1일 전 18시 이후 취소/변경 및 노쇼(No-show) 발생 시, ▷성수기(5월~10월,
												12월 24일~31일)에는 최초 1일 숙박 요금의 80%, ▷비수기(성수기 외 기간)에는 최초 1일 숙박
												요금의 10%가 위약금으로 부과됩니다. <br /> <br /> - 패키지에 포함된 혜택 및 선물은 투숙
												기간 중에 한해 1회 제공되며, 중복 제공되지 않습니다. <br /> <br /> - 주류는 성인 고객에
												한해 이용 가능합니다. <br />
											</p>
										</div>
									</div>
								</div>
							</div> <!-- 유의사항 모달로 구현해야함 -->
						</li>

					</ul>
					<p>
						객실타입<span>Twin</span>
					</p>
					<hr />
				</div>

				<div class="rsv_prinfo">
					<p class="rsv_rsvinfotitle clearfix">객실/패키지</p>
					<ul>
						<li>Autumn Rooftop(DB)</li>
						<li>2018.10.15 280,000 원(DB)</li>
					</ul>
					<p>280,000원 (1박) (DB)</p>
				</div>

				<div class="rsv_primg">
					<img
						src="${pageContext.request.contextPath}/assets/img/rsv_packageimg1.jpg"
						alt="이미지1" />

					<p>Business Deluxe / Twin</p>
					<img
						src="${pageContext.request.contextPath}/assets/img/rsv_businessdeluxe.jpg"
						alt="이미지1" />
				</div>
				<hr />
				<div class="rsv_price">
					<p>봉사료 28,000 원</p>
					<p>세금 30,800 원</p>
				</div>
				<div class="rsv_totalpay">
					<p>요금합계 338,800원</p>
				</div>

			</div>
			<!-- ==예약정보== ==예약정보== ==예약정보== ==예약정보== ==예약정보== ==예약정보== ==예약정보== ==예약정보== ==예약정보== ==예약정보== -->
		</div>
	</div>
	<%-- container end --%>
	<%@ include file="/WEB-INF/inc/footer.jsp"%>
</body>

</html>




























