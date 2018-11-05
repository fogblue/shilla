<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<head>
<%@ include file="/WEB-INF/inc/head.jsp"%>
<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/index.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/plugins/youcover/youCover.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/plugins/lightbox/css/lightbox.min.css" />
<script src="${pageContext.request.contextPath}/assets/js/regex.js"></script>
</head>
<div class="container2">
	<div>
		<!-- 탭 버튼 구성 -->
		<ul class="nav nav-tabs" id="mytab">
			<li class="active"><a href="#page1" data-toggle="tab">전체(${fn:length(RoomList)})</a></li>
			<li><a href="#page2" data-toggle="tab">패키지(3)</a></li>
			<li><a href="#page3" data-toggle="tab">객실(2)</a></li>
		</ul>
		<!-- 탭 페이지 구성(전체, 패키지, 객실) -->
		<div class="tab-content">
		<!-- 전체 탭 시작 -- 전체 탭 시작 -- 전체 탭 시작 -- 전체 탭 시작 -- 전체 탭 시작 -- 전체 탭 시작 -- 전체 탭 시작 -- 전체 탭 시작 -- 전체 탭 시작 -- 전체 탭 시작 -->
		<!--  -->
		<table>
			<tbody>
				<c:choose>
					<c:when test="${fn:length(RoomList) > 0}">
						<c:forEach var="room" items="${RoomList}">
							<tr>
								<td>${room.id}</td>
								<td>${room.roomNo}</td>
								<td>${room.roomType}</td>
								<td><a href="${pageContext.request.contextPath}/mypage/mypg_qna_2.do?id=${room.id}" style="display: inline;">${room.bedType}</a></td>
								<td>${room.roomPrice}</td>
								<td></td>
							</tr>							
						</c:forEach>
					</c:when>
					<c:otherwise>
						<tr id="find-target">
							<td colspan="6">자료가 없습니다.</td>
						</tr>
					</c:otherwise>
				</c:choose>
			</tbody>
		</table>
		<button type="button" onclick="location.href='${pageContext.request.contextPath}/reservation/rsv_roominsert.do'">객실입력</button>
		<!--  -->
			<div role="tabpanel" class="tab-pane fade active in" id="page1">
				<form class="rsv_form" name="rsv_formpage1" id="rsv_formpage1" method="get" action="${pageContext.request.contextPath}/reservation/reservation2.do">
					<div class="rsv_packagetextdiv">
						<p class="rsv_packagetextdiv_text">패키지</p>
						<p class="rsv_packagetextdiv_text2">할인이 적용된 요금입니다.</p>
					</div>
					<!-- rsv_roomlistbox start -->
					<div class="rsv_roomlistbox">
						<div class="rlbox ">
							<div class="rsv_thumb clearfix">
								<img src="${pageContext.request.contextPath}/assets/img/rsv_packageimg1.jpg" alt="이미지1" />
							</div>
							<div class="rsv_text">
								<ul>
									<li class="rsv_text_1">Autumn Rooftop</li>
									<li class="rsv_text_2">어번 아일랜드 루프탑 입장 혜택(성인 2인)</li>
									<li class="rsv_text_2">체련장(Gym), 실내 수영장 혜택</li>
								</ul>
							</div>
						</div>
						<div class="rsv_text2">
							<ul class="rsv_text2_0">
								<li class="rsv_text2_1">280,000~</li>
								<li class="rsv_text2_2">원/1박</li>
							</ul>
							<div class="rsv_useguidebox">
								<!-- 링크로 모달 열기 -->
								<a href="#" class="btn btn-warning" data-toggle="modal"
									data-target="#myModal1">혜택 및 이용안내 + </a>
							</div>
							<!-- Modal -->
							<div class="modal fade" id="myModal1">
								<div class="modal-dialog modal-md">
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal"
												aria-label="Close">
												<span aria-hidden="true">&times;</span>
											</button>
											<h4 class="modal-title">혜택 및 이용안내</h4>
										</div>
										<div class="modal-body">
											<img
												src="${pageContext.request.contextPath}/assets/img/rsv_autumnrooftop.jpg"
												alt="이미지1" /> <br /> <br />
											<p>석양을 눈에 담으며 즐기는 시원한 맥주와 풍성한 메뉴</p>
											<br />
											<p>2018-09-07 ~ 2018-10-21</p>
											<br />
											<p>
												혜택 : 어번 아일랜드 루프탑 입장 혜택(성인 2인)<br />
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												체련장(Gym), 실내 수영장 혜택 <br /> <br />
											<div class="rsv_useguide">
												<p class="rsv_useguide">
													- 1본 상품은 성인 2인 1실 기준이며, 요금에는 세금 및 봉사료가 부과됩니다. <br /> <br />
													- 본 패키지는 어번 아일랜드(야외 수영장) 입장 혜택을 포함하지 않은 상품입니다. <br /> <br />
													- 어번 아일랜드 루프탑은 이용 시간(9월 7일 ~ 30일 18:00 ~ 22:00 / 10월 1일 ~
													21일 17:00 ~ 21:00)에 한해 입장 및 이용 가능합니다. <br /> <br /> - 더
													이그제큐티브 라운지는 투숙객 전용 공간으로, 객실 투숙 고객(만 13세 이상)에 한해 이용 가능합니다. <br />
													<br /> - 본 상품은 카드사 할인 등의 중복 할인 혜택이 적용되지 않습니다. <br /> <br />
													- 기준 인원을 초과하여 투숙 시 추가 인원에 대해서는 별도의 요금이 부과됩니다.<br />• 객실 1실
													당 성인은 최대 3인까지만 투숙 가능하며, 소인(37개월 이상~만 12세 이하)은 최대 2인까지만 동반
													투숙 가능합니다.<br />• 객실 1실 당 성인과 소인 동반 시 최대 4인까지만 투숙 가능합니다. <br />
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
								</div>
							</div>
						</div>
						<div class="rev_bedselect clearfix" id="rsv_roomarc2">
							<div class="rsv_collapse">
								<!-- 게시글 하나 단위 -->
								<div class='rsv_collapse-item'>
									<!-- 게시글 제목영역 -->
									<div class='rsv_collapse-title'>[Standard] Business
										Deluxe</div>
									<!-- 게시글 내용영역 -->
									<div id="rsv_content1" class="rsv_content">
										<div class="rsv_content1-1-1">Double</div>
										<div class="rsv_content1-1-2">
											280,000 원~ <input type="radio" name="subject1" />
										</div>
										<br /> <br />
										<hr />
										<br />
										<div class="rsv_content1-2-1">Twin</div>
										<div class="rsv_content1-2-2">
											280,000 원~ <input type="radio" name="subject1" />
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- 리스트 1개 끝 -->
					<!-- 리스트2 시작 -->
					<div class="rsv_roomlistbox">
						<div class="rsv_thumb clearfix">
							<img
								src="${pageContext.request.contextPath}/assets/img/rsv_packageimg2.jpg"
								alt="이미지1" />
						</div>
						<div class="rsv_text">
							<ul>
								<li class="rsv_text_1">[서울신라호텔] Rewards Urban Rooftop</li>
								<li class="rsv_text_2">어번 아일랜드(야외 수영장) All Day 입장 혜택(2인)</li>
								<li class="rsv_text_2">어번 아일랜드 루프탑 입장 혜택(2인)</li>
								<li class="rsv_text_2">마리아주 플레이트(1개) 및 와인(2잔)</li>
								<li class="rsv_text_2">리워즈 1만 포인트 제공(1박 당)</li>
								<li class="rsv_text_2">체련장(Gym), 실내 수영장 혜택(2인)</li>
							</ul>
						</div>
						<div class="rsv_text2">
							<ul class="rsv_text2_0">
								<li class="rsv_text2_1">290,000~</li>
								<li class="rsv_text2_2">원/1박</li>
							</ul>
							<div class="rsv_useguidebox">
								<!-- 링크로 모달 열기 -->
								<a href="#" class="btn btn-warning" data-toggle="modal"
									data-target="#myModal2">혜택 및 이용안내 + </a>
							</div>
							<!-- Modal -->
							<div class="modal fade" id="myModal2">
								<div class="modal-dialog modal-md">
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal"
												aria-label="Close">
												<span aria-hidden="true">&times;</span>
											</button>
											<h4 class="modal-title">혜택 및 이용안내</h4>
										</div>
										<div class="modal-body">
											<div class="rsv_modal2img">
												<img
													src="${pageContext.request.contextPath}/assets/img/rsv_rewardsurbanrooftop.jpg"
													alt="이미지1" />
											</div>
											<br /> <br />
											<p>어번 아일랜드에서의 여유로운 수영과 루프탑에서 즐기는 풍성한 메뉴로 가을 밤의 정취를 만끽해
												보세요.</p>
											<br />
											<p>기간 : 2018년 9월 7일 ~ 10월 21일</p>
											<p>* 제외 기간: 9월 14일, 18일, 22일 ~ 25일 * 본 상품은 Shilla S 멤버십
												또는 카드사 할인, 모바일 앱 할인 쿠폰 등의 중복 할인 혜택이 적용되지 않습니다.</p>
											<br />
											<p>
												신라리워즈 회원에게 드리는 특별한 혜택 : 리워즈 1만 포인트 제공 (1박 당)<br />
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												체련장(Gym), 실내 수영장 혜택 <br /> <br />
											<div class="rsv_useguide">
												<p class="rsv_useguide">
													- 2본qq 상품은 성인 2인 1실 기준이며, 요금에는 세금 및 봉사료가 부과됩니다. <br /> <br />
													- 본 패키지는 어번 아일랜드(야외 수영장) 입장 혜택을 포함하지 않은 상품입니다. <br /> <br />
													- 어번 아일랜드 루프탑은 이용 시간(9월 7일 ~ 30일 18:00 ~ 22:00 / 10월 1일 ~
													21일 17:00 ~ 21:00)에 한해 입장 및 이용 가능합니다. <br /> <br /> - 더
													이그제큐티브 라운지는 투숙객 전용 공간으로, 객실 투숙 고객(만 13세 이상)에 한해 이용 가능합니다. <br />
													<br /> - 본 상품은 카드사 할인 등의 중복 할인 혜택이 적용되지 않습니다. <br /> <br />
													- 기준 인원을 초과하여 투숙 시 추가 인원에 대해서는 별도의 요금이 부과됩니다.<br />• 객실 1실
													당 성인은 최대 3인까지만 투숙 가능하며, 소인(37개월 이상~만 12세 이하)은 최대 2인까지만 동반
													투숙 가능합니다.<br />• 객실 1실 당 성인과 소인 동반 시 최대 4인까지만 투숙 가능합니다. <br />
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
								</div>
							</div>
						</div>
						<div class="rev_bedselect" id="rsv_roomarc2">
							<div class="rsv_collapse">
								<!-- 게시글 하나 단위 -->
								<div class='rsv_collapse-item'>
									<!-- 게시글 제목영역 -->
									<div class='rsv_collapse-title'>[Standard] Business
										Deluxe</div>
									<!-- 게시글 내용영역 -->
									<div id="rsv_content1" class="rsv_content">

										<div class="rsv_content1-1-1">Double</div>
										<div class="rsv_content1-1-2">
											290,000 원~ <input type="radio" name="subject1" />
										</div>
										<br /> <br />
										<hr />
										<br />
										<div class="rsv_content1-2-1">Twin</div>
										<div class="rsv_content1-2-2">
											290,000 원~ <input type="radio" name="subject1" />
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- 리스트 2끝 -->
					<!-- 리스트3 시작 -->
					<div class="rsv_roomlistbox2 clearfix">
						<div class="rsv_thumb clearfix">
							<img
								src="${pageContext.request.contextPath}/assets/img/rsv_packageimg3.jpg"
								alt="이미지1" />
						</div>
						<div class="rsv_text">
							<ul>
								<li class="rsv_text_1">[기념일] Celebration Moment</li>
								<li class="rsv_text_2">뵈브 클리코(Veuve Clicquot) 샴페인 하프 보틀 1병
									(객실 내 세팅)</li>
								<li class="rsv_text_2">패스트리 부티크 케이크(1개)</li>
								<li class="rsv_text_2">체련장(Gym), 실내 수영장 혜택(2인)</li>
								<li class="rsv_text_2">어번 아일랜드(야외 수영장) All Day 입장 혜택 2인 (7월
									1일~8월 31일 제외)</li>
								<li class="rsv_text_2">*어번 아일랜드(야외 수영장) 운영 기간 : 3월 31일~10월
									31일</li>
							</ul>
						</div>
						<div class="rsv_text2">
							<ul class="rsv_text2_0">
								<li class="rsv_text2_1">420,000~</li>
								<li class="rsv_text2_2">원/1박</li>
							</ul>
							<div class="rsv_useguidebox">
								<!-- 링크로 모달 열기 -->
								<a href="#" class="btn btn-warning" data-toggle="modal"
									data-target="#myModal3">혜택 및 이용안내 + </a>
							</div>
							<!-- Modal -->
							<div class="modal fade" id="myModal3">
								<div class="modal-dialog modal-md">
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal"
												aria-label="Close">
												<span aria-hidden="true">&times;</span>
											</button>
											<h4 class="modal-title">혜택 및 이용안내</h4>
										</div>
										<div class="modal-body">
											<div class="rsv_modal2img">
												<img
													src="${pageContext.request.contextPath}/assets/img/rsv_rewardsurbanrooftop.jpg"
													alt="이미지1" />
											</div>
											<br /> <br />
											<p>
												꿈 같은 기념일을 선사할 서울신라호텔에서의 하루.<br />황금빛 샴페인과 케이크로 오래도록 기억될 둘만의
												추억을 만들어보세요.
											</p>
											<br />
											<p>기간 : 2018년 1월 1일 ~ 2018년 12월 28일</p>
											<p>
												* 제외 일자 : 5월 5일~6일, 19일~21일 / 9월 22일~25일 / 12월 22일~24일<br />
												* 본 패키지는 어번 아일랜드(야외 수영장) 운영 기간에 따라 부대시설 이용 혜택이 상이하오니 예약 시
												확인해주시기 바랍니다.<br /> * 본 패키지는 7월 1일~8월 31일 기간 중 어번 아일랜드(야외
												수영장) 입장 혜택을 포함하지 않은 상품입니다.<br /> * 스위트룸 객실 타입은 전화 예약만 가능합니다.<br />
											</p>
											<p>
												남산과 도심 전경이 그림처럼 펼쳐지는 공간에서 하루 4번 제공되는 다이닝 서비스와 함께하는 특별한 경험<br />
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												* 더 이그제큐티브 라운지는 투숙객 전용 비즈니스 공간으로, 라운지 혜택이 포함된 상품을 이용하시는 객실
												투숙객(만 13세 이상)에 한해 이용 가능합니다.<br /> <br />
											<div class="rsv_useguide">
												<p class="rsv_useguide">
													- 3본 상품은 성인 2인 1실 기준이며, 요금에는 세금 및 봉사료가 부과됩니다. <br /> <br />
													- 본 패키지는 어번 아일랜드(야외 수영장) 입장 혜택을 포함하지 않은 상품입니다. <br /> <br />
													- 어번 아일랜드 루프탑은 이용 시간(9월 7일 ~ 30일 18:00 ~ 22:00 / 10월 1일 ~
													21일 17:00 ~ 21:00)에 한해 입장 및 이용 가능합니다. <br /> <br /> - 더
													이그제큐티브 라운지는 투숙객 전용 공간으로, 객실 투숙 고객(만 13세 이상)에 한해 이용 가능합니다. <br />
													<br /> - 본 상품은 카드사 할인 등의 중복 할인 혜택이 적용되지 않습니다. <br /> <br />
													- 기준 인원을 초과하여 투숙 시 추가 인원에 대해서는 별도의 요금이 부과됩니다.<br />• 객실 1실
													당 성인은 최대 3인까지만 투숙 가능하며, 소인(37개월 이상~만 12세 이하)은 최대 2인까지만 동반
													투숙 가능합니다.<br />• 객실 1실 당 성인과 소인 동반 시 최대 4인까지만 투숙 가능합니다. <br />
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
								</div>
							</div>
						</div>
						<div class="rev_bedselect" id="rsv_roomarc2">
							<div class="rsv_collapse">
								<!-- 게시글 하나 단위 -->
								<div class='rsv_collapse-item'>
									<!-- 게시글 제목영역 -->
									<div class='rsv_collapse-title'>[Standard] Business
										Deluxe</div>
									<!-- 게시글 내용영역 -->
									<div id="rsv_content1" class="rsv_content">

										<div class="rsv_content1-1-1">Double</div>
										<div class="rsv_content1-1-2">
											420,000 원~ <input type="radio" name="subject1" />
										</div>
										<br /> <br />
										<hr />
										<br />
										<div class="rsv_content1-2-1">Twin</div>
										<div class="rsv_content1-2-2">
											420,000 원~ <input type="radio" name="subject1" />
										</div>
									</div>
									<div class='rsv_collapse-title'>[Executive] Executive
										Business Deluxe</div>
									<!-- 게시글 내용영역 -->
									<div id="rsv_content1" class="rsv_content">

										<div class="rsv_content1-1-1">Tiwn</div>
										<div class="rsv_content1-1-2">
											520,000 원~ <input type="radio" name="subject1" />
										</div>
										<br /> <br />
										<hr />
										<br />
										<div class="rsv_content1-2-1">Double</div>
										<div class="rsv_content1-2-2">
											520,000 원~ <input type="radio" name="subject1" />
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- 리스트 3끝 -->
					<!-- 객실 시작 -->
					<div class="rsv_packagetextdiv">
						<p class="rsv_packagetextdiv_text">객실</p>
						<p class="rsv_packagetextdiv_text2">할인이 적용된 요금입니다.</p>
					</div>
					<!-- rsv_roomlistbox start -->
					<div class="rsv_roomlistbox">
						<div class="rlbox ">
							<div class="rsv_thumb clearfix">
								<img
									src="${pageContext.request.contextPath}/assets/img/rsv_businessdeluxe.jpg"
									alt="이미지1" />
							</div>
							<div class="rsv_text">
								<ul>
									<li class="rsv_text_1">Business Deluxe</li>
									<li class="rsv_text_2">객실크기 : 43㎡</li>
									<li class="rsv_text_2">침대타입 : 더블(킹 사이즈), 트윈</li>
								</ul>
							</div>
						</div>
						<div class="rsv_text2">
							<ul class="rsv_text2_0">
								<li class="rsv_text2_1">280,000~</li>
								<li class="rsv_text2_2">원/1박</li>
							</ul>
							<div class="rsv_useguidebox">
								<!-- 링크로 모달 열기 -->
								<a href="#" class="btn btn-warning" data-toggle="modal"
									data-target="#myModal4">객쉴 자세히 보기 + </a>
							</div>
							<!-- Modal -->
							<div class="modal fade" id="myModal4">
								<div class="modal-dialog modal-md">
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal"
												aria-label="Close">
												<span aria-hidden="true">&times;</span>
											</button>
											<h4 class="modal-title">객쉴 자세히 보기</h4>
										</div>
										<div class="modal-body">
											<!-- ==============시작================== -->
											<h1 class="page-header">갤러리</h1>
											<h3 class="sm-header">GALLERY</h3>
											<div class="main_soffcon">
												<div id="main_mconts">
													<a
														href="${pageContext.request.contextPath}/assets/img/main_ma1.jpg"
														data-lightbox="shilla-gallery" data-title="방1"><img
														src="${pageContext.request.contextPath }/assets/img/main_ma1.jpg" /></a>
													<a
														href="${pageContext.request.contextPath}/assets/img/main_ma2.jpg"
														data-lightbox="shilla-gallery" data-title="방2"><img
														src="${pageContext.request.contextPath }/assets/img/main_ma2.jpg" /></a>
													<a
														href="${pageContext.request.contextPath}/assets/img/main_ma3.jpg"
														data-lightbox="shilla-gallery" data-title="방3"><img
														src="${pageContext.request.contextPath }/assets/img/main_ma3.jpg" /></a>
													<a
														href="${pageContext.request.contextPath}/assets/img/main_ma4.jpg"
														data-lightbox="shilla-gallery" data-title="방4"><img
														src="${pageContext.request.contextPath }/assets/img/main_ma4.jpg" /></a>
													<a
														href="${pageContext.request.contextPath}/assets/img/main_ma5.jpg"
														data-lightbox="shilla-gallery" data-title="방5"><img
														src="${pageContext.request.contextPath }/assets/img/main_ma5.jpg" /></a>
												</div>
											</div>
											<!-- ==============끝================== -->
											<%@ include file="/WEB-INF/inc/footer.jsp"%>
											<!-- Script codes -->
											<script
												src="${pageContext.request.contextPath}/assets/plugins/youcover/youCover.js"></script>
											<!-- json 데이터를 정의한 외부 파일 로드하기 -->
											<script
												src="${pageContext.request.contextPath}/assets/plugins/lightbox/js/lightbox.js"></script>
											<script>
												lightbox.option({
													'resizeDuration' : 200,
													'wrapAround' : true,
													'max-Height' : 500,
													'fitViewport' : true
												});
											</script>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="rev_bedselect clearfix" id="rsv_roomarc2">
							<div class="rsv_collapse">
								<!-- 게시글 하나 단위 -->
								<div class='rsv_collapse-item'>
									<!-- 게시글 제목영역 -->

									<!-- 게시글 내용영역 -->
									<div id="rsv_content1" class="rsv_content rsv_content1_2">

										<div class="rsv_content1-1-1">Twin</div>
										<div class="rsv_content1-1-2">
											280,000 원~ <input type="radio" name="subject1" />
										</div>
										<br /> <br />
										<hr />
										<br />
										<div class="rsv_content1-2-1">Double</div>
										<div class="rsv_content1-2-2">
											280,000 원~ <input type="radio" name="subject1" />
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- 리스트 1개 끝 -->
					<!-- 리스트2 시작 -->
					<div class="rsv_roomlistbox">
						<div class="rsv_thumb clearfix">
							<img
								src="${pageContext.request.contextPath}/assets/img/rsv_executivebusinessdeluxe.jpg"
								alt="이미지1" />
						</div>
						<div class="rsv_text">
							<ul>
								<li class="rsv_text_1">Executive Business Deluxe</li>
								<li class="rsv_text_2">객실크기 : 43㎡</li>
								<li class="rsv_text_2">침대타입 : 더블(킹 사이즈), 트윈</li>
							</ul>
						</div>
						<div class="rsv_text2">
							<ul class="rsv_text2_0">
								<li class="rsv_text2_1">420,000~</li>
								<li class="rsv_text2_2">원/1박</li>
							</ul>
							<div class="rsv_useguidebox">
								<!-- 링크로 모달 열기 -->
								<a href="#" class="btn btn-warning" data-toggle="modal"
									data-target="#myModal5">객실 자세히 보기 + </a>
							</div>
							<!-- Modal -->
							<div class="modal fade" id="myModal5">
								<div class="modal-dialog modal-md">
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal"
												aria-label="Close">
												<span aria-hidden="true">&times;</span>
											</button>
											<h4 class="modal-title">객실 자세히 보기</h4>
										</div>
										<div class="modal-body">
											<div class="rsv_modal2img">
												<img
													src="${pageContext.request.contextPath}/assets/img/rsv_rewardsurbanrooftop.jpg"
													alt="이미지1" />
											</div>
											<br /> <br />
											<p>어1번 아일랜드에서의 여유로운 수영과 루프탑에서 즐기는 풍성한 메뉴로 가을 밤의 정취를 만끽해
												보세요.</p>
											<br />
											<p>기간 : 2018년 9월 7일 ~ 10월 21일</p>
											<p>* 제외 기간: 9월 14일, 18일, 22일 ~ 25일 * 본 상품은 Shilla S 멤버십
												또는 카드사 할인, 모바일 앱 할인 쿠폰 등의 중복 할인 혜택이 적용되지 않습니다.</p>
											<br />
											<p>
												신라리워즈 회원에게 드리는 특별한 혜택 : 리워즈 1만 포인트 제공 (1박 당)<br />
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												체련장(Gym), 실내 수영장 혜택 <br /> <br />
											<div class="rsv_useguide">
												<p class="rsv_useguide">
													- 5본 상품은 성인 2인 1실 기준이며, 요금에는 세금 및 봉사료가 부과됩니다. <br /> <br />
													- 본 패키지는 어번 아일랜드(야외 수영장) 입장 혜택을 포함하지 않은 상품입니다. <br /> <br />
													- 어번 아일랜드 루프탑은 이용 시간(9월 7일 ~ 30일 18:00 ~ 22:00 / 10월 1일 ~
													21일 17:00 ~ 21:00)에 한해 입장 및 이용 가능합니다. <br /> <br /> - 더
													이그제큐티브 라운지는 투숙객 전용 공간으로, 객실 투숙 고객(만 13세 이상)에 한해 이용 가능합니다. <br />
													<br /> - 본 상품은 카드사 할인 등의 중복 할인 혜택이 적용되지 않습니다. <br /> <br />
													- 기준 인원을 초과하여 투숙 시 추가 인원에 대해서는 별도의 요금이 부과됩니다.<br />• 객실 1실
													당 성인은 최대 3인까지만 투숙 가능하며, 소인(37개월 이상~만 12세 이하)은 최대 2인까지만 동반
													투숙 가능합니다.<br />• 객실 1실 당 성인과 소인 동반 시 최대 4인까지만 투숙 가능합니다. <br />
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
								</div>
							</div>
						</div>
						<div class="rev_bedselect" id="rsv_roomarc2">
							<div class="rsv_collapse">
								<!-- 게시글 하나 단위 -->
								<div class='rsv_collapse-item'>
									<!-- 게시글 제목영역 -->
									<!-- 게시글 내용영역 -->
									<div id="rsv_content1" class="rsv_content rsv_content1_2">
										<div class="rsv_content1-1-1">Double</div>
										<div class="rsv_content1-1-2">
											420,000 원~ <input type="radio" name="subject1" />
										</div>
										<br /> <br />
										<hr />
										<br />
										<div class="rsv_content1-2-1">Twin</div>
										<div class="rsv_content1-2-2">
											420,000 원~ <input type="radio" name="subject1" />
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- 리스트 2끝 -->
					<button class="btn btn-lg rsv_selectbtn" id="rsv_selectbtn"
						type="submit">예약하기</button>
				</form>
			</div>
			<!-- 전체 탭 끝 -- 전체 탭 끝 -- 전체 탭 끝 -- 전체 탭 끝 -- 전체 탭 끝 -- 전체 탭 끝 -- 전체 탭 끝 -- 전체 탭 끝 -- 전체 탭 끝 -- 전체 탭 끝 -- 전체 탭 끝 -- 전체 탭 끝 -->
			<!-- 패키지 탭 시작 -- 패키지 탭 시작 -- 패키지 탭 시작 -- 패키지 탭 시작 -- 패키지 탭 시작 -- 패키지 탭 시작 -- 패키지 탭 시작 -- 패키지 탭 시작 -- 패키지 탭 시작 -- 패키지 탭 시작 -->
			<div role="tabpanel" class="tab-pane fade" id="page2">
				<form class="rsv_form" name="rsv_formpage2" id="rsv_formpage2"
					method="get"
					action="${pageContext.request.contextPath}/reservation/reservation2.do">
					<div class="rsv_packagetextdiv">
						<p class="rsv_packagetextdiv_text">패키지</p>
						<p class="rsv_packagetextdiv_text2">할인이 적용된 요금입니다.</p>
					</div>
					<div class="rsv_roomlistbox">
						<div class="rlbox ">
							<div class="rsv_thumb clearfix">
								<img
									src="${pageContext.request.contextPath}/assets/img/rsv_packageimg1.jpg"
									alt="이미지1" />
							</div>
							<div class="rsv_text">
								<ul>
									<li class="rsv_text_1">Autumn Rooftop</li>
									<li class="rsv_text_2">어번 아일랜드 루프탑 입장 혜택(성인 2인)</li>
									<li class="rsv_text_2">체련장(Gym), 실내 수영장 혜택</li>
								</ul>
							</div>
						</div>
						<div class="rsv_text2">
							<ul class="rsv_text2_0">
								<li class="rsv_text2_1">280,000~</li>
								<li class="rsv_text2_2">원/1박</li>
							</ul>
							<div class="rsv_useguidebox">
								<!-- 링크로 모달 열기 -->
								<a href="#" class="btn btn-warning" data-toggle="modal"
									data-target="#myModal6">혜택 및 이용안내 + </a>
							</div>
							<!-- Modal -->
							<div class="modal fade" id="myModal6">
								<div class="modal-dialog modal-md">
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal"
												aria-label="Close">
												<span aria-hidden="true">&times;</span>
											</button>
											<h4 class="modal-title">혜택 및 이용안내</h4>
										</div>
										<div class="modal-body">
											<img
												src="${pageContext.request.contextPath}/assets/img/rsv_autumnrooftop.jpg"
												alt="이미지1" /> <br /> <br />
											<p>석양을 눈에 담으며 즐기는 시원한 맥주와 풍성한 메뉴</p>
											<br />
											<p>2018-09-07 ~ 2018-10-21</p>
											<br />
											<p>
												혜택 : 어번 아일랜드 루프탑 입장 혜택(성인 2인)<br />
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												체련장(Gym), 실내 수영장 혜택 <br /> <br />
											<div class="rsv_useguide">
												<p class="rsv_useguide">
													- 6본 상품은 성인 2인 1실 기준이며, 요금에는 세금 및 봉사료가 부과됩니다. <br /> <br />
													- 본 패키지는 어번 아일랜드(야외 수영장) 입장 혜택을 포함하지 않은 상품입니다. <br /> <br />
													- 어번 아일랜드 루프탑은 이용 시간(9월 7일 ~ 30일 18:00 ~ 22:00 / 10월 1일 ~
													21일 17:00 ~ 21:00)에 한해 입장 및 이용 가능합니다. <br /> <br /> - 더
													이그제큐티브 라운지는 투숙객 전용 공간으로, 객실 투숙 고객(만 13세 이상)에 한해 이용 가능합니다. <br />
													<br /> - 본 상품은 카드사 할인 등의 중복 할인 혜택이 적용되지 않습니다. <br /> <br />
													- 기준 인원을 초과하여 투숙 시 추가 인원에 대해서는 별도의 요금이 부과됩니다.<br />• 객실 1실
													당 성인은 최대 3인까지만 투숙 가능하며, 소인(37개월 이상~만 12세 이하)은 최대 2인까지만 동반
													투숙 가능합니다.<br />• 객실 1실 당 성인과 소인 동반 시 최대 4인까지만 투숙 가능합니다. <br />
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
								</div>
							</div>
						</div>
						<div class="rev_bedselect clearfix" id="rsv_roomarc2">
							<div class="rsv_collapse">
								<!-- 게시글 하나 단위 -->
								<div class='rsv_collapse-item'>
									<!-- 게시글 제목영역 -->
									<div class='rsv_collapse-title'>[Standard] Business
										Deluxe</div>
									<!-- 게시글 내용영역 -->
									<div id="rsv_content1" class="rsv_content">

										<div class="rsv_content1-1-1">Double</div>
										<div class="rsv_content1-1-2">
											280,000 원~ <input type="radio" name="subject2" />
										</div>
										<br /> <br />
										<hr />
										<br />
										<div class="rsv_content1-2-1">Twin</div>
										<div class="rsv_content1-2-2">
											280,000 원~ <input type="radio" name="subject2" />
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- 리스트 1개 끝 -->
					<!-- 리스트3 시작 -->
					<div class="rsv_roomlistbox">
						<div class="rsv_thumb clearfix">
							<img
								src="${pageContext.request.contextPath}/assets/img/rsv_packageimg2.jpg"
								alt="이미지1" />
						</div>
						<div class="rsv_text">
							<ul>
								<li class="rsv_text_1">[서울신라호텔] Rewards Urban Rooftop</li>
								<li class="rsv_text_2">어번 아일랜드(야외 수영장) All Day 입장 혜택(2인)</li>
								<li class="rsv_text_2">어번 아일랜드 루프탑 입장 혜택(2인)</li>
								<li class="rsv_text_2">마리아주 플레이트(1개) 및 와인(2잔)</li>
								<li class="rsv_text_2">리워즈 1만 포인트 제공(1박 당)</li>
								<li class="rsv_text_2">체련장(Gym), 실내 수영장 혜택(2인)</li>
							</ul>
						</div>
						<div class="rsv_text2">
							<ul class="rsv_text2_0">
								<li class="rsv_text2_1">290,000~</li>
								<li class="rsv_text2_2">원/1박</li>
							</ul>
							<div class="rsv_useguidebox">
								<!-- 링크로 모달 열기 -->
								<a href="#" class="btn btn-warning" data-toggle="modal"
									data-target="#myModal7">혜택 및 이용안내 + </a>
							</div>
							<!-- Modal -->
							<div class="modal fade" id="myModal7">
								<div class="modal-dialog modal-md">
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal"
												aria-label="Close">
												<span aria-hidden="true">&times;</span>
											</button>
											<h4 class="modal-title">혜택 및 이용안내</h4>
										</div>
										<div class="modal-body">
											<div class="rsv_modal2img">
												<img
													src="${pageContext.request.contextPath}/assets/img/rsv_rewardsurbanrooftop.jpg"
													alt="이미지1" />
											</div>
											<br /> <br />
											<p>어번 아일랜드에서의 여유로운 수영과 루프탑에서 즐기는 풍성한 메뉴로 가을 밤의 정취를 만끽해
												보세요.</p>
											<br />
											<p>기간 : 2018년 9월 7일 ~ 10월 21일</p>
											<p>* 제외 기간: 9월 14일, 18일, 22일 ~ 25일 * 본 상품은 Shilla S 멤버십
												또는 카드사 할인, 모바일 앱 할인 쿠폰 등의 중복 할인 혜택이 적용되지 않습니다.</p>
											<br />
											<p>
												신라리워즈 회원에게 드리는 특별한 혜택 : 리워즈 1만 포인트 제공 (1박 당)<br />
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												체련장(Gym), 실내 수영장 혜택 <br /> <br />
											<div class="rsv_useguide">
												<p class="rsv_useguide">
													- 7본 상품은 성인 2인 1실 기준이며, 요금에는 세금 및 봉사료가 부과됩니다. <br /> <br />
													- 본 패키지는 어번 아일랜드(야외 수영장) 입장 혜택을 포함하지 않은 상품입니다. <br /> <br />
													- 어번 아일랜드 루프탑은 이용 시간(9월 7일 ~ 30일 18:00 ~ 22:00 / 10월 1일 ~
													21일 17:00 ~ 21:00)에 한해 입장 및 이용 가능합니다. <br /> <br /> - 더
													이그제큐티브 라운지는 투숙객 전용 공간으로, 객실 투숙 고객(만 13세 이상)에 한해 이용 가능합니다. <br />
													<br /> - 본 상품은 카드사 할인 등의 중복 할인 혜택이 적용되지 않습니다. <br /> <br />
													- 기준 인원을 초과하여 투숙 시 추가 인원에 대해서는 별도의 요금이 부과됩니다.<br />• 객실 1실
													당 성인은 최대 3인까지만 투숙 가능하며, 소인(37개월 이상~만 12세 이하)은 최대 2인까지만 동반
													투숙 가능합니다.<br />• 객실 1실 당 성인과 소인 동반 시 최대 4인까지만 투숙 가능합니다. <br />
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
								</div>
							</div>
						</div>
						<div class="rev_bedselect" id="rsv_roomarc2">
							<div class="rsv_collapse">
								<!-- 게시글 하나 단위 -->
								<div class='rsv_collapse-item'>
									<!-- 게시글 제목영역 -->
									<div class='rsv_collapse-title'>[Standard] Business
										Deluxe</div>
									<!-- 게시글 내용영역 -->
									<div id="rsv_content1" class="rsv_content">

										<div class="rsv_content1-1-1">Double</div>
										<div class="rsv_content1-1-2">
											290,000 원~ <input type="radio" name="subject2" />
										</div>
										<br /> <br />
										<hr />
										<br />
										<div class="rsv_content1-2-1">Twin</div>
										<div class="rsv_content1-2-2">
											290,000 원~ <input type="radio" name="subject2" />
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- 리스트 2끝 -->
					<!-- 리스트3 시작 -->
					<div class="rsv_roomlistbox2">
						<div class="rsv_thumb clearfix">
							<img
								src="${pageContext.request.contextPath}/assets/img/rsv_packageimg3.jpg"
								alt="이미지1" />
						</div>
						<div class="rsv_text">
							<ul>
								<li class="rsv_text_1">[기념일] Celebration Moment</li>
								<li class="rsv_text_2">뵈브 클리코(Veuve Clicquot) 샴페인 하프 보틀 1병
									(객실 내 세팅)</li>
								<li class="rsv_text_2">패스트리 부티크 케이크(1개)</li>
								<li class="rsv_text_2">체련장(Gym), 실내 수영장 혜택(2인)</li>
								<li class="rsv_text_2">어번 아일랜드(야외 수영장) All Day 입장 혜택 2인 (7월
									1일~8월 31일 제외)</li>
								<li class="rsv_text_2">*어번 아일랜드(야외 수영장) 운영 기간 : 3월 31일~10월
									31일</li>
							</ul>
						</div>
						<div class="rsv_text2">
							<ul class="rsv_text2_0">
								<li class="rsv_text2_1">420,000~</li>
								<li class="rsv_text2_2">원/1박</li>
							</ul>
							<div class="rsv_useguidebox">
								<!-- 링크로 모달 열기 -->
								<a href="#" class="btn btn-warning" data-toggle="modal"
									data-target="#myModal8">혜택 및 이용안내 + </a>
							</div>
							<!-- Modal -->
							<div class="modal fade" id="myModal8">
								<div class="modal-dialog modal-md">
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal"
												aria-label="Close">
												<span aria-hidden="true">&times;</span>
											</button>
											<h4 class="modal-title">혜택 및 이용안내</h4>
										</div>
										<div class="modal-body">
											<div class="rsv_modal2img">
												<img
													src="${pageContext.request.contextPath}/assets/img/rsv_rewardsurbanrooftop.jpg"
													alt="이미지1" />
											</div>
											<br /> <br />
											<p>
												꿈 같은 기념일을 선사할 서울신라호텔에서의 하루.<br />황금빛 샴페인과 케이크로 오래도록 기억될 둘만의
												추억을 만들어보세요.
											</p>
											<br />
											<p>기간 : 2018년 1월 1일 ~ 2018년 12월 28일</p>
											<p>
												* 제외 일자 : 5월 5일~6일, 19일~21일 / 9월 22일~25일 / 12월 22일~24일<br />
												* 본 패키지는 어번 아일랜드(야외 수영장) 운영 기간에 따라 부대시설 이용 혜택이 상이하오니 예약 시
												확인해주시기 바랍니다.<br /> * 본 패키지는 7월 1일~8월 31일 기간 중 어번 아일랜드(야외
												수영장) 입장 혜택을 포함하지 않은 상품입니다.<br /> * 스위트룸 객실 타입은 전화 예약만 가능합니다.<br />
											</p>

											<p>
												남산과 도심 전경이 그림처럼 펼쳐지는 공간에서 하루 4번 제공되는 다이닝 서비스와 함께하는 특별한 경험<br />
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												* 더 이그제큐티브 라운지는 투숙객 전용 비즈니스 공간으로, 라운지 혜택이 포함된 상품을 이용하시는 객실
												투숙객(만 13세 이상)에 한해 이용 가능합니다.<br /> <br />
											<div class="rsv_useguide">
												<p class="rsv_useguide">
													- 8본 상품은 성인 2인 1실 기준이며, 요금에는 세금 및 봉사료가 부과됩니다. <br /> <br />
													- 본 패키지는 어번 아일랜드(야외 수영장) 입장 혜택을 포함하지 않은 상품입니다. <br /> <br />
													- 어번 아일랜드 루프탑은 이용 시간(9월 7일 ~ 30일 18:00 ~ 22:00 / 10월 1일 ~
													21일 17:00 ~ 21:00)에 한해 입장 및 이용 가능합니다. <br /> <br /> - 더
													이그제큐티브 라운지는 투숙객 전용 공간으로, 객실 투숙 고객(만 13세 이상)에 한해 이용 가능합니다. <br />
													<br /> - 본 상품은 카드사 할인 등의 중복 할인 혜택이 적용되지 않습니다. <br /> <br />
													- 기준 인원을 초과하여 투숙 시 추가 인원에 대해서는 별도의 요금이 부과됩니다.<br />• 객실 1실
													당 성인은 최대 3인까지만 투숙 가능하며, 소인(37개월 이상~만 12세 이하)은 최대 2인까지만 동반
													투숙 가능합니다.<br />• 객실 1실 당 성인과 소인 동반 시 최대 4인까지만 투숙 가능합니다. <br />
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
								</div>
							</div>
						</div>
						<div class="rev_bedselect" id="rsv_roomarc2">
							<div class="rsv_collapse">
								<!-- 게시글 하나 단위 -->
								<div class='rsv_collapse-item'>
									<!-- 게시글 제목영역 -->
									<div class='rsv_collapse-title'>[Standard] Business
										Deluxe</div>
									<!-- 게시글 내용영역 -->
									<div id="rsv_content1" class="rsv_content">

										<div class="rsv_content1-1-1">Double</div>
										<div class="rsv_content1-1-2">
											420,000 원~ <input type="radio" name="subject2" />
										</div>
										<br /> <br />
										<hr />
										<br />
										<div class="rsv_content1-2-1">Twin</div>
										<div class="rsv_content1-2-2">
											420,000 원~ <input type="radio" name="subject2" />
										</div>
									</div>
									<div class='rsv_collapse-title'>[Executive] Executive
										Business Deluxe</div>
									<!-- 게시글 내용영역 -->
									<div id="rsv_content1" class="rsv_content">

										<div class="rsv_content1-1-1">Tiwn</div>
										<div class="rsv_content1-1-2">
											520,000 원~ <input type="radio" name="subject2" />
										</div>
										<br /> <br />
										<hr />
										<br />
										<div class="rsv_content1-2-1">Double</div>
										<div class="rsv_content1-2-2">
											520,000 원~ <input type="radio" name="subject2" />
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- 리스트 3끝 -->
					<button class="btn btn-lg rsv_selectbtn" type="submit">예약하기</button>
				</form>
			</div>
			<!-- 패키지 탭 끝 -- 패키지 탭 끝 -- 패키지 탭 끝 -- 패키지 탭 끝 -- 패키지 탭 끝 -- 패키지 탭 끝 -- 패키지 탭 끝 -- 패키지 탭 끝 -- 패키지 탭 끝 -- 패키지 탭 끝 -->
			<!-- 객실 탭 시작 --객실 탭 시작 -- 객실 탭 시작 --객실 탭 시작 -- 객실 탭 시작 --객실 탭 시작 -- 객실 탭 시작 --객실 탭 시작 -- 객실 탭 시작 --객실 탭 시작 -->
			<div role="tabpanel" class="tab-pane fade" id="page3">
				<form class="rsv_form" name="rsv_formpage3" id="rsv_formpage3"
					method="get"
					action="${pageContext.request.contextPath}/reservation/reservation2.do">
					<div class="rsv_packagetextdiv">
						<p class="rsv_packagetextdiv_text">객실</p>
						<p class="rsv_packagetextdiv_text2">할인이 적용된 요금입니다.</p>
					</div>
					<!-- rsv_roomlistbox start -->
					<div class="rsv_roomlistbox">
						<div class="rlbox ">
							<div class="rsv_thumb clearfix">
								<img
									src="${pageContext.request.contextPath}/assets/img/rsv_businessdeluxe.jpg"
									alt="이미지1" />
							</div>
							<div class="rsv_text">
								<ul>
									<li class="rsv_text_1">Business Deluxe</li>
									<li class="rsv_text_2">객실크기 : 43㎡</li>
									<li class="rsv_text_2">침대타입 : 더블(킹 사이즈), 트윈</li>
								</ul>
							</div>
						</div>
						<div class="rsv_text2">
							<ul class="rsv_text2_0">
								<li class="rsv_text2_1">280,000~</li>
								<li class="rsv_text2_2">원/1박</li>
							</ul>
							<div class="rsv_useguidebox">
								<!-- 링크로 모달 열기 -->
								<a href="#" class="btn btn-warning" data-toggle="modal"
									data-target="#myModal9">객실 자세히 보기 + </a>
							</div>
							<!-- Modal -->
							<div class="modal fade" id="myModal9">
								<div class="modal-dialog modal-md">
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal"
												aria-label="Close">
												<span aria-hidden="true">&times;</span>
											</button>
											<h4 class="modal-title">객실 자세히 보기</h4>
										</div>
										<div class="modal-body">
											<img
												src="${pageContext.request.contextPath}/assets/img/rsv_autumnrooftop.jpg"
												alt="이미지1" /> <br /> <br />
											<p>석양을 눈에 담으며 즐기는 시원한 맥주와 풍성한 메뉴</p>
											<br />
											<p>2018-09-07 ~ 2018-10-21</p>
											<br />
											<p>
												혜택 : 어번 아일랜드 루프탑 입장 혜택(성인 2인)<br />
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												체련장(Gym), 실내 수영장 혜택 <br /> <br />
											<div class="rsv_useguide">
												<p class="rsv_useguide">
													- 9본 상품은 성인 2인 1실 기준이며, 요금에는 세금 및 봉사료가 부과됩니다. <br /> <br />
													- 본 패키지는 어번 아일랜드(야외 수영장) 입장 혜택을 포함하지 않은 상품입니다. <br /> <br />
													- 어번 아일랜드 루프탑은 이용 시간(9월 7일 ~ 30일 18:00 ~ 22:00 / 10월 1일 ~
													21일 17:00 ~ 21:00)에 한해 입장 및 이용 가능합니다. <br /> <br /> - 더
													이그제큐티브 라운지는 투숙객 전용 공간으로, 객실 투숙 고객(만 13세 이상)에 한해 이용 가능합니다. <br />
													<br /> - 본 상품은 카드사 할인 등의 중복 할인 혜택이 적용되지 않습니다. <br /> <br />
													- 기준 인원을 초과하여 투숙 시 추가 인원에 대해서는 별도의 요금이 부과됩니다.<br />• 객실 1실
													당 성인은 최대 3인까지만 투숙 가능하며, 소인(37개월 이상~만 12세 이하)은 최대 2인까지만 동반
													투숙 가능합니다.<br />• 객실 1실 당 성인과 소인 동반 시 최대 4인까지만 투숙 가능합니다. <br />
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
								</div>
							</div>
						</div>
						<div class="rev_bedselect clearfix" id="rsv_roomarc2">
							<div class="rsv_collapse">
								<!-- 게시글 하나 단위 -->
								<div class='rsv_collapse-item'>
									<!-- 게시글 제목영역 -->
									<!-- 게시글 내용영역 -->
									<div id="rsv_content1" class="rsv_content rsv_content1_2">

										<div class="rsv_content1-1-1">Twin</div>
										<div class="rsv_content1-1-2">
											280,000 원~ <input type="radio" name="subject3" />
										</div>
										<br /> <br />
										<hr />
										<br />
										<div class="rsv_content1-2-1">Double</div>
										<div class="rsv_content1-2-2">
											280,000 원~ <input type="radio" name="subject3" />
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- 리스트 1개 끝 ============================================================================================================================================================================== -->
					<!-- 리스트2 시작 -->
					<div class="rsv_roomlistbox">
						<div class="rsv_thumb clearfix">
							<img
								src="${pageContext.request.contextPath}/assets/img/rsv_executivebusinessdeluxe.jpg"
								alt="이미지1" />
						</div>
						<div class="rsv_text">
							<ul>
								<li class="rsv_text_1">Executive Business Deluxe</li>
								<li class="rsv_text_2">객실크기 : 43㎡</li>
								<li class="rsv_text_2">침대타입 : 더블(킹 사이즈), 트윈</li>
							</ul>
						</div>
						<div class="rsv_text2">
							<ul class="rsv_text2_0">
								<li class="rsv_text2_1">420,000~</li>
								<li class="rsv_text2_2">원/1박</li>
							</ul>
							<div class="rsv_useguidebox">
								<!-- 링크로 모달 열기 -->
								<a href="#" class="btn btn-warning" data-toggle="modal"
									data-target="#myModal10">객실 자세히 보기 + </a>
							</div>
							<!-- Modal -->
							<div class="modal fade" id="myModal10">
								<div class="modal-dialog modal-md">
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal"
												aria-label="Close">
												<span aria-hidden="true">&times;</span>
											</button>
											<h4 class="modal-title">객실 자세히 보기</h4>
										</div>
										<div class="modal-body">
											<div class="rsv_modal2img">
												<img
													src="${pageContext.request.contextPath}/assets/img/rsv_rewardsurbanrooftop.jpg"
													alt="이미지1" />
											</div>
											<br /> <br />
											<p>어번 아일랜드에서의 여유로운 수영과 루프탑에서 즐기는 풍성한 메뉴로 가을 밤의 정취를 만끽해
												보세요.</p>
											<br />
											<p>기간 : 2018년 9월 7일 ~ 10월 21일</p>
											<p>* 제외 기간: 9월 14일, 18일, 22일 ~ 25일 * 본 상품은 Shilla S 멤버십
												또는 카드사 할인, 모바일 앱 할인 쿠폰 등의 중복 할인 혜택이 적용되지 않습니다.</p>
											<br />
											<p>
												신라리워즈 회원에게 드리는 특별한 혜택 : 리워즈 1만 포인트 제공 (1박 당)<br />
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												체련장(Gym), 실내 수영장 혜택 <br /> <br />
											<div class="rsv_useguide">
												<p class="rsv_useguide">
													- 10본 상품은 성인 2인 1실 기준이며, 요금에는 세금 및 봉사료가 부과됩니다. <br /> <br />
													- 본 패키지는 어번 아일랜드(야외 수영장) 입장 혜택을 포함하지 않은 상품입니다. <br /> <br />
													- 어번 아일랜드 루프탑은 이용 시간(9월 7일 ~ 30일 18:00 ~ 22:00 / 10월 1일 ~
													21일 17:00 ~ 21:00)에 한해 입장 및 이용 가능합니다. <br /> <br /> - 더
													이그제큐티브 라운지는 투숙객 전용 공간으로, 객실 투숙 고객(만 13세 이상)에 한해 이용 가능합니다. <br />
													<br /> - 본 상품은 카드사 할인 등의 중복 할인 혜택이 적용되지 않습니다. <br /> <br />
													- 기준 인원을 초과하여 투숙 시 추가 인원에 대해서는 별도의 요금이 부과됩니다.<br />• 객실 1실
													당 성인은 최대 3인까지만 투숙 가능하며, 소인(37개월 이상~만 12세 이하)은 최대 2인까지만 동반
													투숙 가능합니다.<br />• 객실 1실 당 성인과 소인 동반 시 최대 4인까지만 투숙 가능합니다. <br />
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
								</div>
							</div>
						</div>
						<div class="rev_bedselect" id="rsv_roomarc2">
							<div class="rsv_collapse">
								<!-- 게시글 하나 단위 -->
								<div class='rsv_collapse-item'>
									<!-- 게시글 제목영역 -->
									<!-- 게시글 내용영역 -->
									<div id="rsv_content1" class="rsv_content rsv_content1_2">
										<div class="rsv_content1-1-1">Double</div>
										<div class="rsv_content1-1-2">
											420,000 원~ <input type="radio" name="subject3" />
										</div>
										<br /> <br />
										<hr />
										<br />
										<div class="rsv_content1-2-1">Twin</div>
										<div class="rsv_content1-2-2">
											420,000 원~ <input type="radio" name="subject3" />
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- 리스트 2끝 -->
					<button class="btn btn-lg rsv_selectbtn" type="submit">예약하기</button>
				</form>
			</div>
			<!-- 객실 탭 끝 -- 객실 탭 끝 -- 객실 탭 끝 -- 객실 탭 끝 -- 객실 탭 끝 -- 객실 탭 끝 -- 객실 탭 끝 -- 객실 탭 끝 -- 객실 탭 끝 -- 객실 탭 끝 -- 객실 탭 끝 -- 객실 탭 끝 -->
		</div>
	</div>
</div>
<script type="text/javascript">
	$(function() {
		$("#rsv_formpage1").submit(function(e) {
			// 기본동작 수행 방식
			if ($("input:radio[name='subject1']").is(":checked") == true) {
			} else {
				alert('객실을 선택하세요.');
				return false;
			}
		});
		$("#rsv_formpage2").submit(function(e) {
			// 기본동작 수행 방식
			if ($("input:radio[name='subject2']").is(":checked") == true) {
			} else {
				alert('객실을 선택하세요.');
				return false;
			}
		});
		$("#rsv_formpage3").submit(function(e) {
			// 기본동작 수행 방식
			if ($("input:radio[name='subject3']").is(":checked") == true) {
			} else {
				alert('객실을 선택하세요.');
				return false;
			}
		});
	});
</script>
