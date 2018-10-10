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
			<span class="rsv_step3img">Step1. 날짜/인원/객실 선택 Step2. 옵션 선택
				Step3. 고객 정보 입력 Step4. 예약 완료 /확인</span>
		</div>
		<div class="rsv_cont">
			<div class="container1 col-sm-9">
<div class="rsvOption">
    <div class="rsvTit">고객 정보 입력<span class="desc"><em class="ast">*</em>표시 필수 입력사항</span></div>
    <div class="customInfo">
        <ul>
            <li id="inputArea" class="first">
                <p class="customInfoTit">투숙자 정보 입력</p>
                <dl>
                    <dt><em class="ast">*</em>성명(한글)</dt>
                    <dd>
                        <div class="optionList">
                            <div class="selector" id="uniform-guestTitlCd" style="width: 71px;"><span style="width: 46px; user-select: none;">Mr.</span><select class="uiform" id="guestTitlCd" name="guestTitlCd" disabled="">
                                    <option value="">선택</option>
                                    <option value="Miss.">Ms.</option>
                                    <option value="Mr." selected="">Mr.</option>
                                    <option value="Dr.">Dr.</option>
                                </select></div>
                            <input type="text" class="text textResv uiform" title="국문명 입력" id="guestNm" name="guestNm" style="width: 197px;" value="이동건" maxlength="30" autocomplete="off" disabled="">
                        </div>
                    </dd>
                </dl>
                <dl>
                    <dt><em class="ast">*</em>성명(영문)</dt>
                    <dd>
                        <input type="text" class="text textResv uiform guideText guide" id="guestEnFnm" name="guestEnFnm" style="width: 140px; margin-right: 5px; text-transform: uppercase;" onkeyup="this.value=this.value.replace(/[^a-z]/gi,'');" value="DONGGEON" readonly="readonly" maxlength="30" autocomplete="off" title="영문명(성) 입력" disabled="">
                        <input type="text" class="text textResv uiform guideText guide" id="guestEnLnm" name="guestEnLnm" style="width: 112px; text-transform: uppercase;" value="LEE" readonly="readonly" maxlength="30" onkeyup="this.value=this.value.replace(/[^a-z]/gi,'');" title="영문명(이름) 입력" autocomplete="off" disabled="">
                    </dd>
                </dl>
                
                    <dt><em class="ast">*</em> 이메일 </dt>
                    <dd>
                        <input type="text" id="guestEmail" name="guestEmail" class="text textResv uiform" style="width: 280px;" value="tmxpftm915@naver.com" title="이메일 입력" autocomplete="off" disabled="">
                    </dd>
                </dl>
                <dl>
                    <dt><em class="ast">*</em> 연락처</dt>
                    <dd>
                        <div class="optionList">
                            <div class="selector" id="uniform-guestPhTypCd" style="width: 95px;"><span style="width: 70px; user-select: none;">휴대전화 </span><select class="uiform" name="guestPhTypCd" id="guestPhTypCd" title="휴대폰 국번 선택" disabled="">
                                    <option value="M">휴대전화 </option>
                                    <option value="P">자택</option>
                                </select></div>
                            <input type="text" class="text textResv uiform" id="phno1" name="phno1" value="01094148450" maxlength="13" onkeyup="this.value=this.value.replace(/[^\d\ ]/g, '');" autocomplete="off" style="width:170px;" title="전화번호 끝번호 입력" disabled="">
                        </div>
                    </dd>
                </dl>
            </li>
            <li class="last">
                <p class="customInfoTit">카드 정보 입력</p>
                <dl>
                    <dt><em class="ast">*</em> 카드종류</dt>
                    <dd>
                        <div class="optionList">
                            <div class="selector" id="uniform-guestCardTypCd" style="width: 167px;"><span style="width: 142px; user-select: none;">선택</span><select class="uiform" id="guestCardTypCd" name="guestCardTypCd" title="카드사 선택">
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
                                </select></div>
                        </div>
                    </dd>
                </dl>
                <dl>
                    <dt><em class="ast">*</em> 카드번호</dt>
                    <dd class="cardList">
                        <input type="text" id="cardNo1" class="text textResv uiform card" maxlength="4" onkeyup="this.value=this.value.replace(/[^\d\ ]/g, '');" title="카드번호 입력" autocomplete="off"><span>-</span>
                        <input type="password" id="cardNo2" class="text textResv uiform card password" maxlength="4" onkeyup="this.value=this.value.replace(/[^\d\ ]/g, '');" title="카드번호 입력" autocomplete="off"><span>-</span>
                        <input type="password" id="cardNo3" class="text textResv uiform card password" maxlength="4" onkeyup="this.value=this.value.replace(/[^\d\ ]/g, '');" title="카드번호 입력" autocomplete="off"><span>-</span>
                        <input type="password" id="cardNo4" class="text textResv uiform card password" maxlength="4" onkeyup="this.value=this.value.replace(/[^\d\ ]/g, '');" title="카드번호 입력" autocomplete="off">
                    </dd>
                </dl>
                <dl>
                    <dt><em class="ast">*</em> 만기일</dt>
                    <dd>
                        <div class="optionList">
                            <div class="selector" id="uniform-cardExprMonth" style="width: 61px;"><span style="width: 36px; user-select: none;">월</span><select id="cardExprMonth" name="cardExprMonth" class="endDayMonth uiform" title="월 선택">
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
                                </select></div>
                            <div class="selector" id="uniform-cardExprYear" style="width: 74px;"><span style="width: 49px; user-select: none;">년</span><select id="cardExprYear" name="cardExprYear" class="endDayYear uiform" title="년 선택">
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
                                </select></div>
                        </div>
                    </dd>
                </dl>
                <div class="customInfoDesc"><span>※</span>
                    신용카드 정보는 고객님의 투숙에 의한 개런티 외에는 어떤 목적으로도 사용되지 않습니다. <em>온라인 예약 시 직접 결제가 이루어지지 않으며,</em><br>최종 결제는 체크아웃 시 프런트 데스크에서 해주시기 바랍니다.
                </div>
            </li>
        </ul>
    </div>
    <div class="pointArea noShow">
        <p><strong>신라리워즈 포인트 사용 안내</strong></p>
        <p>
            현재 보유하신 포인트는
            <span class="myPoint">0</span>
            P 입니다. 포인트 사용을 원하시면 결제하실 때 프론트 데스크로 요청해 주시기 바랍니다.
        </p>
    </div>
    <div class="noShow">
        <p class="tit"><b>취소/변경 및 노쇼(No-show) 안내</b></p>
        <div class="useIntro">
            <p>숙박 예정일 1일 전 18시까지는 위약금 없이 취소 및 변경이 가능합니다.</p>
            <p>숙박 예정일 1일 전 18시 이후 취소/변경 및 노쇼(No-show) 발생 시,<br>
                - 성수기(5월~10월, 12월 24일~31일) : 최초 1일 숙박 요금의 80%가 위약금으로 부과됩니다.<br>
                - 비수기(성수기 외 기간) :&nbsp;최초 1일 숙박 요금의 10%가 위약금으로 부과됩니다.</p>
        </div>
    </div>
    <div class="addRequest on">
        <div class="addTit">
            <label for="wran">유의사항</label><span class="icoArrow">보기</span>
        </div>
        <div class="reqContent">
            <div class="col2">
                <ul>
                    <li class="first">
                        <ul class="addDesc">
                            <li class="first"><b>&lt;호텔 이용안내&gt;</b></li>
                            <li>성인 2인 1실 기준이며, 요금에는 세금(10%) 및 봉사료(10%)가 부과됩니다.</li>
                            <li>기준 인원을 초과하여 투숙 시 추가 인원에 대해 별도의 요금이 부과됩니다.<br>
                                추가 인원에 대한 기본 요금(세금 및 봉사료 별도)은 성인 5만원,<br>
                                어린이 3만원이며, 객실 타입 및 패키지 혜택에 따라 상이합니다.<br> (성인 기준: 만 13세 이상, 어린이 기준: 37개월 이상~만 12세 이하)</li>
                            <li>37개월 미만의 유아 동반 시 추가 인원 요금 및 조식은 무료이며, <br>
                                유아(37개월 미만)동반 여부는 체크인 시 프론트 데스크 직원에게<br>알려 주셔야 무료로 이용 가능합니다.</li>
                            <li>체크인은 오후 3시, 체크아웃은 정오까지입니다.</li>
                            <li>본 홈페이지 요금은 할인 적용된 요금이며, 카드사 할인 등의 중복 할인<br> 혜택이 적용되지 않습니다.</li>
                            <li>어린이 동반 고객을 위한 영유아 용품(아기 욕조, 아기 침대, 어린이 베개<br>
                                및 아동용 배스로브와 슬리퍼)은&nbsp;객실예약과를&nbsp;통해 사전&nbsp;요청 가능하며,<br>
                                이용 상황에 따라 조기 마감될 수 있습니다.<br> (단, 유모차는 현장에서만 대여 가능합니다.)</li>
                            <li class="last">자세한 객실안내는 객실예약과(02-2230-3310)로 문의 바랍니다.</li>
                        </ul>
                    </li>
                    <li class="last">
                        <ul class="addDesc">
                            <li class="first"> <b>&lt;부대시설 이용안내&gt;</b></li>
                            <li>체련장(Gym), 실내 수영장, 실내 사우나(유료시설)는 매월 3번째 수요일<br>
                                정기휴무입니다.(단, 2018년 8월 세 번째 수요일인 광복절(공휴일)은<br> 정상 영업하며, 피트니스 정기 휴무일은 8월 22일로 변경됩니다.)</li>
                            <li>체련장은 만 16세 이상, 실내 사우나는 만 13세 이상부터 이용 가능합니다.</li>
                            <li>실내 수영장은 성인 고객 전용 시설로, 만 13세 미만 고객은 주말 및<br> 공휴일에 한해 성인 보호자의 보호 하에 이용 가능합니다.</li>
                            <li>2018년 어번 아일랜드(야외 수영장) 운영 기간 :<br> 3월 31일 ~ 10월 31일(2017년 11월 1일~2018년 3월 30일까지 미운영)</li>
                            <li>야외 수영장인 어번 아일랜드는 유료시설로서 입장 혜택이 포함된<br>
                                상품 외에는 이용 시 입장료가 추가로 부과되며 사전 예약은 불가합니다.<br> 쾌적하고 안전한 운영을 위해 적정 인원 초과 시 입장이 제한될 수 있습니다.</li>
                            <li>실내 및 야외 수영장의 성인풀에서는 신장 140cm 미만인 고객은<br> 성인 보호자의 보호 하에 구명조끼 착용 시에만 이용 가능합니다.</li>
                            <li class="last">성인풀, 키즈풀 및 자쿠지 등의 시설 이용 시 현장 라이프 가드 직원의<br> 안내를 받으시기 바랍니다.</li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <div class="ctnReserve3">
        <div class="btnListMem btnList clearfix">
            <a class="btnSelStep2 fl" href="#none" onclick="goStep2Smry();"><span>Step 2</span></a>
            <a class="btnReserveSend fr" href="#none" onclick="saveResvBefore();">신청</a>
        </div>
    </div>
</div>
				<!-- <div class="rsv2_option">
					===============================================================================================================================================================================
					<div class="rsv2_optionlist">
						<h4 class="rsv2_optionlist_1">
							<strong>옵션사항</strong>
						</h4>
						<h4 class="rsv2_optionlist_2">객실이용에 필요한 옵션사항을 선택하세요.</h4>
					</div>
					===============================================================================================================================================================================
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

					===============================================================================================================================================================================
					<div class="rsv2_option_graybox">
						<div class="rsv2_option_graybox2">
							<h6>조식이 포함된 패키지를 예약하실 경우 추가 인원에 대한 조식만 선택해주시기 바랍니다.</h6>
							<h6>37개월 미만의 유아 동반 시 조식에 대한 요금은 무료입니다.</h6>
						</div>
					</div>
				</div>

				===============================================================================================================================================================================
				아코디언

				<div class='collapse-item'>
					게시글 제목영역
					<h2 class='collapse-title'>
						<a href="#content1">추가 요청사항</a>
					</h2>
					게시글 내용영역
					<div id="content1" class="content">
						<textarea class="rsv_opt_textarea">공항 교통편 문의 또는 호텔 이용 시 문의하실 사항이 있으시면 입력해 주십시오.</textarea>
						<p>&bull; 전망은 체크인 당일 사정에 따라 달라질 수 있습니다.</p>
					</div>
				</div> -->

				<div class='collapse-item2'>
					<!-- 게시글 제목영역 -->
					<h2 class='collapse-title2'>
						<a href="#content2">유의사항</a>
					</h2>
					<!-- 게시글 내용영역 -->
					<div id="content2" class="content2">
						<div class="reqContent">
								<div class="col2">
									<ul> 
<li class="first"> 
<ul class="addDesc"> 
<li class="first"><b>&lt;호텔 이용안내&gt;</b></li> 
<li>성인 2인 1실 기준이며, 요금에는 세금(10%) 및 봉사료(10%)가 부과됩니다.</li> 
<li>기준 인원을 초과하여 투숙 시 추가 인원에 대해 별도의 요금이 부과됩니다.<br>
 추가 인원에 대한 기본 요금(세금 및 봉사료 별도)은 성인 5만원,<br>
 어린이 3만원이며, 객실 타입 및 패키지 혜택에 따라 상이합니다.<br> (성인 기준: 만 13세 이상, 어린이 기준: 37개월 이상~만 12세 이하)</li> 
<li>37개월 미만의 유아 동반 시 추가 인원 요금 및 조식은 무료이며, <br>
 유아(37개월 미만)동반 여부는 체크인 시 프론트 데스크 직원에게<br>알려 주셔야 무료로 이용 가능합니다.</li> 
<li>체크인은 오후 3시, 체크아웃은 정오까지입니다.</li> 
<li>본 홈페이지 요금은 할인 적용된 요금이며, 카드사 할인 등의 중복 할인<br> 혜택이 적용되지 않습니다.</li> 
<li>어린이 동반 고객을 위한 영유아 용품(아기 욕조, 아기 침대, 어린이 베개<br>
 및 아동용 배스로브와 슬리퍼)은&nbsp;객실예약과를&nbsp;통해 사전&nbsp;요청 가능하며,<br>
 이용 상황에 따라 조기 마감될 수 있습니다.<br> (단, 유모차는 현장에서만 대여 가능합니다.)</li> 
<li class="last">자세한 객실안내는 객실예약과(02-2230-3310)로 문의 바랍니다.</li>  
</ul> </li> 
<li class="last"> 
<ul class="addDesc"> 
<li class="first"> <b>&lt;부대시설 이용안내&gt;</b></li> 
<li>체련장(Gym), 실내 수영장, 실내 사우나(유료시설)는 매월 3번째 수요일<br>
 정기휴무입니다.(단, 2018년 8월 세 번째 수요일인 광복절(공휴일)은<br> 정상 영업하며, 피트니스 정기 휴무일은 8월 22일로 변경됩니다.)</li> 
<li>체련장은 만 16세 이상, 실내 사우나는 만 13세 이상부터 이용 가능합니다.</li> 
<li>실내 수영장은 성인 고객 전용 시설로, 만 13세 미만 고객은 주말 및<br> 공휴일에 한해 성인 보호자의 보호 하에 이용 가능합니다.</li> 
<li>2018년 어번 아일랜드(야외 수영장) 운영 기간 :<br> 3월 31일 ~ 10월 31일(2017년 11월 1일~2018년 3월 30일까지 미운영)</li> 
<li>야외 수영장인 어번 아일랜드는 유료시설로서 입장 혜택이 포함된<br>
 상품 외에는 이용 시 입장료가 추가로 부과되며 사전 예약은 불가합니다.<br> 쾌적하고 안전한 운영을 위해 적정 인원 초과 시 입장이 제한될 수 있습니다.</li> 
<li>실내 및 야외 수영장의 성인풀에서는 신장 140cm 미만인 고객은<br> 성인 보호자의 보호 하에 구명조끼 착용 시에만 이용 가능합니다.</li> 
<li class="last">성인풀, 키즈풀 및 자쿠지 등의 시설 이용 시 현장 라이프 가드 직원의<br> 안내를 받으시기 바랍니다.</li> 
</ul></li> 
</ul>

								</div>
							</div>
					</div>
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