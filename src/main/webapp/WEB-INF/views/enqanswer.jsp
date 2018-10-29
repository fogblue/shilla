<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!doctype html>
<html>
<head>
<%@ include file="/WEB-INF/inc/head.jsp"%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/info.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/awards.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/mypage.css">
</head>
<body>
	<%@ include file="/WEB-INF/inc/topbar.jsp"%>
	<!-- ==============시작================== -->
	<div class="container main" id="main">
		<div class="sidebar">
			<!-- 제목 들어갈 곳 -->
			<h3 class="sidebar-header">관리자 페이지</h3>
			<!-- 메뉴 들어갈 곳 -->
			<a href="${pageContext.request.contextPath}/package_add.do" class="imenu ">패키지 추가</a>
			<a href="${pageContext.request.contextPath}/room_add.do" class="imenu">객실 추가</a>
			<a href="${pageContext.request.contextPath}/reserv_confirm.do" class="imenu">예약 확인</a>
			<a href="${pageContext.request.contextPath}/enqanswer.do" class="imenu info-open">문의사항 답변<img src="${pageContext.request.contextPath}/assets/img/sidebar_arr.gif" class="sidebar-arrow"></a>
		</div>
		<div class="if-contents">
			<div class="bdb mypg-contents-header">
				<h3>문의사항 답변</h3>
				<div class="pull-right mypg-loc"><span class="glyphicon glyphicon-home"></span>&nbsp;&nbsp;&nbsp;>&nbsp;&nbsp;&nbsp;My Page&nbsp;&nbsp;&nbsp;>&nbsp;&nbsp;&nbsp;<span class="mypg-loc-txt">문의 내역</span></div>
			</div>
			<div class="mypg-contents-txt">
				<p>답변하실 문의글을 선택해주세요.</p>
			</div>
			<div class="mypg-rsvt-bd">
				<div class="mypg-qna-bd-search">
					<span>기간조회</span>
					<button type="button" class="btn mypg-rsvt-whole datepicker-btnbtn" name="1week">1주</button>
					<button type="button" class="btn mypg-rsvt-whole datepicker-btnbtn" name="1month">1개월</button>
					<button type="button" class="btn mypg-rsvt-whole datepicker-btnbtn" name="3month">3개월</button>
					<button type="button" class="btn mypg-rsvt-whole datepicker-btnbtn" name="6month">6개월</button>
					<button type="button" class="btn mypg-rsvt-whole datepicker-btnbtn" name="all">전체</button>
					<input type="text" id="datepicker-s" /><a href="#" id="show-cal-s"><img src="${pageContext.request.contextPath}/assets/img/btnCalendar.gif" width="20" height="30"></a>
					<span> ~ </span>
					<input type="text" id="datepicker-e" /><a href="#" id="show-cal-e"><img src="${pageContext.request.contextPath}/assets/img/btnCalendar.gif" width="20" height="30"></a>
					<button type="button" class="btn mypg-rsvt-find" id="find">조회</button>
				</div>
				<div class="mypg-contents-table">
					<div>
						<p>Total : </p>
						<table class="mypg-qna-contents-table">
							<tr class="qna-table-title">
								<td>NO</td>
								<td>호텔</td>
								<td>문의유형</td>
								<td>제목</td>
								<td>문의일자</td>
								<td>답변여부</td>
							</tr>
							<!-- <tbody id="find-result">
								<tr id="find-target">
									<td colspan="6">자료가 없습니다.</td>
								</tr>
							</tbody> -->
							<c:choose>
								<c:when test="${fn:length(qnaInfo) > 0}">
									<c:forEach var="qna" items="${qnaInfo}">
										<tr>
											<td>${qna.id}</td>
											<td>${qna.hotelCate}</td>
											<td>${qna.enqType}</td>
											<td><a href="${pageContext.request.contextPath}/mypage/mypg_qna_2.do?id=${qna.id}" style="display: inline;">${qna.subject}</a></td>
											<td>${qna.regDate}</td>
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
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- ==============끝================== -->
	<%@ include file="/WEB-INF/inc/footer.jsp"%>
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
</body>
</html>