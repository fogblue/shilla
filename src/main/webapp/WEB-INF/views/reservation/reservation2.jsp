<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!doctype html>
<html>


<head>
<%@ include file="/WEB-INF/inc/head.jsp"%>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/reservation.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/rsv_room.css">
<style>
.rsv_cont {
	margin-top: 30px;
}

<!--
===============================================================================================================================================================================
--> /* 아코디언 */
/* 기본 여백 제거 */
* {
	padding: 0;
	margin: 0;
}

/* 전체 박스 크기 및 정렬 */
/* .collapse {
	width: 850px;
	margin: auto;
} */
.collapse-item {
	padding: 0px;
	margin: 0px;
}

.collapse-item2 {
	padding: 0px;
	margin: 0px;
}
/* 제목 영역의 배경색상과 태두리 */
.collapse-title {
	/* width : 850px; */
	background: #white;
	border: 1px solid #d5d5d5;
}

.collapse-title2 {
	/* width : 850px; */
	background: #white;
	border: 1px solid #d5d5d5;
}

/* 제목영역의 링크에 대한 크기, 글자모양 */
.collapse-title a {
	display: block;
	width: auto;
	padding: 10px;
	color: #222;
	font-size: 14px;
	text-decoration: none
}

.collapse-title2 a {
	display: block;
	width: auto;
	padding: 10px;
	color: #222;
	font-size: 14px;
	text-decoration: none
}

/* 내용영역의 여백, 글자크기, 태두리, 숨김 */
.content {
	padding: 0px 15px;
	font-size: 12px;
	border-left: 1px solid #d5d5d5;
	border-right: 1px solid #d5d5d5;
	display: none;
}

.content2 {
	height: 650px;
	padding: 0px 15px;
	font-size: 12px;
	border-left: 1px solid #d5d5d5;
	border-right: 1px solid #d5d5d5;
	display: none;
}

/* 마지막 내용 박스의 테두리 보정 */
.content:last-child {
	border-bottom: 1px solid #d5d5d5;
}

.content2:last-child {
	border-bottom: 1px solid #d5d5d5;
}

.rsv_opt_textarea {
	width: 850px;
	height: 62px;
}

.
/* //아코디언 */
<!--
===============================================================================================================================================================================
--> /* 상단 */
.rsv2_option {
	/* width : 850px; */
	height: auto;
}

.rsv2_optionlist {
	/* width : 850px; */
	height: 50px;
	background-color: #f4eee3;
}

.rsv2_optionlist_1 {
	margin-top: 15px;
	margin-left: 20px;
	text-align: left;
	width: 300px;
	float: left;
}

.rsv2_optionlist_2 {
	margin-top: 17px;
	margin-right: 20px;
	text-align: right;
	width: 400px;
	float: right;
	color: #727272;
	font-size: 13px;
}

/* //상단 */
.rsv2_option1 {
	height: 50px;
	border-bottom: 1px solid #f1f1f1;
	padding-top: 15px;
}

.rsv2_option2 {
	height: 50px;
	border-bottom: 1px solid #f1f1f1;
	padding-top: 15px;
}

.rsv_cont {
	width: 1200px;
	height: 500px;
}

.rsv_optchbox {
	line-height: 10px;
	float: left;
}

.rsv2_optext1 {
	margin-left: 10px;
	float: left;
	width: 250px;
}

.rsv2_optext2 {
	float: right;
}

.clearfix:after {
	content: '';
	display: block;
	floot: none;
	clear: both;
}

.rsv2_option_graybox2 {
	padding:10px;
	background-color: #f1f1f1;
}
</style>


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

				<div class="rsv2_option">
					<!-- =============================================================================================================================================================================== -->
					<div class="rsv2_optionlist">
						<h4 class="rsv2_optionlist_1">
							<strong>옵션사항</strong>
						</h4>
						<h4 class="rsv2_optionlist_2">객실이용에 필요한 옵션사항을 선택하세요.</h4>
					</div>
					<!-- =============================================================================================================================================================================== -->
					<div class="rsv2_option1">
						<div class="col-sm-7">
							<input type="checkbox" class="rsv_optchbox" /> <label
								class="rsv2_optext1">Daily Breakfast Buffet for Adult</label>
						</div>
						<div class="rsv2_optext2 col-sm-3">
							<label>30,000원</label>
						</div>
					</div>

					<div class="rsv2_option2 clearfix">
						<div class="col-sm-7">
							<input type="checkbox" class="rsv_optchbox" /> <label
								class="rsv2_optext1">Daily Extra bed</label>
						</div>
						<div class="rsv2_optext2 col-sm-3">
							<label>30,000원</label>
						</div>
					</div>

					<!-- =============================================================================================================================================================================== -->
					<div class="rsv2_option_graybox">
						<div class="rsv2_option_graybox2">
							<h6>조식이 포함된 패키지를 예약하실 경우 추가 인원에 대한 조식만 선택해주시기 바랍니다.</h6>
							<h6>37개월 미만의 유아 동반 시 조식에 대한 요금은 무료입니다.</h6>
						</div>
					</div>
				</div>

				<!-- =============================================================================================================================================================================== -->
				<!-- 아코디언 -->

				<div class='collapse-item'>
					<!-- 게시글 제목영역 -->
					<h2 class='collapse-title'>
						<a href="#content1">추가 요청사항</a>
					</h2>
					<!-- 게시글 내용영역 -->
					<div id="content1" class="content">
						<textarea class="rsv_opt_textarea">공항 교통편 문의 또는 호텔 이용 시 문의하실 사항이 있으시면 입력해 주십시오.</textarea>
						<p>&bull; 전망은 체크인 당일 사정에 따라 달라질 수 있습니다.</p>
					</div>
				</div>

				<div class='collapse-item2'>
					<!-- 게시글 제목영역 -->
					<h2 class='collapse-title2'>
						<a href="#content2">유의사항</a>
					</h2>
					<!-- 게시글 내용영역 -->
					<div id="content2" class="content2">
						<div class="col-sm-5">
							<ul>
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
						<div class="col-sm-5">
							<ul>
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
					<button class="btn btn-md rsv_prevbtn" onclick="location.href='${pageContext.request.contextPath}/reservation/reservation.do'">&lt;SETP 1</button>
				</div>
				<div>
					<button class="btn btn-md rsv_nextbtn" onclick="location.href='${pageContext.request.contextPath}/reservation/reservation3.do'">회원예약</button>
				</div>
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


			<!-- =============================================================================================================================================================================== -->
			<div class="container2 col-sm-3">
				<div class="rsvInfo">
					<p class="rsvInfoTit">예약정보</p>
					<div class="rsvInfoList">
						<ul>
							<li class="first last">호텔<span class="htlTxt">서울신라호텔</span></li>
						</ul>
					</div>
					<div class="rsvInfoList">
						<ul>
							<li class="first">체크인<span>2018.10.01</span></li>
							<li>체크아웃<span>2018.10.02</span></li>
							<li>숙박일수<span>1박</span></li>
							<li>투숙 인원 <span> 성인 : 1&nbsp; 어린이 : 0&nbsp; 유아 : 0 </span>
							</li>
							<li>패키지명<span>Autumn Rooftop</span>
								<div class="btnPackWarn">
									<a href="#none"
										onclick="openFavorUseGuide('12017','4813', 'S');"><span>패키지
											유의사항</span></a>
								</div>
								<div id="packageWarnPopup" style="display: none;">
									<div class="reserveConbg" style="z-index: 999;"></div>
									팝업 내용
								</div>
							</li>
							<li class="last">객실타입<span>Twin</span></li>
						</ul>
					</div>
					<p class="rsvSubTit">객실/패키지</p>
					<!-- 박수별 객실요금 계산 -->
					<input type="hidden" id="dummyAmt" value="280000"
						autocomplete="off">
					<div class="packagesList">
						<dl>
							<!-- 패키지 정보 -->
							<dt>Autumn Rooftop</dt>
							<dd>
								<ul>
									<li class="first last">2018.10.01<span>
											280,000&nbsp;원</span></li>
								</ul>
								<span class="allPrice">280,000&nbsp;원 (1박)</span>
							</dd>
							<dd>
								<img
									src="http://www.shilla.net/images/upload/spofrpack/180903/FILE5ca8672f6a5be27.jpg"
									alt="Rooftop" style="width: 220px; height: 102px;">
							</dd>
							<!-- 객실 정보 -->
							<dt>Business Deluxe / Twin</dt>
							<dd class="last">
								<img alt="객실 이미지"
									src="http://www.shilla.net/images/contents/accmo/ACCMO_INDEX/R00000002C68_KR.jpg"
									style="width: 220px; height: 102px;">
							</dd>
						</dl>
					</div>
					<div>
						<div style="display: none;" id="optArea">
							<p class="rsvSubTit">옵션</p>
							<div class="rsvInfoList">
								<ul id="optInfo"></ul>
							</div>
						</div>
						<div class="rsvInfoList last">
							<ul>
								<li id="serviceArea" class="first">봉사료<span>28,000&nbsp;원</span></li>
								<li id="taxArea" class="last">세금<span>30,800&nbsp;원</span></li>
							</ul>
						</div>
						<div class="totalPrice" id="totalAmtArea">
							<p>
								<span class="total">요금합계</span> <span class="priceTxt"><em>338,800</em><strong>&nbsp;원</strong></span>
							</p>
						</div>
					</div>
					<a href="#none" class="icoRefresh" onclick="resetResv('2','A');">예약초기화</a>
				</div>
			</div>
			<!-- =============================================================================================================================================================================== -->
		</div>
	</div>
	<%-- container end --%>
	<%@ include file="/WEB-INF/inc/footer.jsp"%>
</body>

</html>