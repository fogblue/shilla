<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!doctype html>
<html>
<head>
<%@ include file="/WEB-INF/inc/head.jsp"%>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/info.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/awards.css" />
</head>
<body>
	<%@ include file="/WEB-INF/inc/topbar.jsp"%>
	<!-- ==============시작================== -->
	<div class="container main" id="main">
		<div class="sidebar">
			<!-- 제목 들어갈 곳 -->
			<h3 class="sidebar-header">관리자 페이지</h3>
			<!-- 메뉴 들어갈 곳 -->
			<a href="${pageContext.request.contextPath}/admin/package_add.do" class="imenu">패키지 추가</a>
			<a href="${pageContext.request.contextPath}/admin/room_add.do" class="imenu info-open">객실 추가<img src="${pageContext.request.contextPath}/assets/img/sidebar_arr.gif" class="sidebar-arrow"></a>
			<a href="${pageContext.request.contextPath}/admin/room_list.do" class="imenu">객실 목록</a>
			<a href="${pageContext.request.contextPath}/admin/enqanswer.do" class="imenu">문의사항 답변</a>
		</div>
		<div class="if-contents">
			<div class="pull-right" style="margin-top: 30px">
				<form action="${pageContext.request.contextPath}/prof_list.do"
					method="get" style="width: 300px;">
					<div class="input-group">
						<input type="text" name="keyword" class="form-control" placeholder="객실번호 검색" value="${keyword}" /> <span class="input-group-btn">
							<button class="btn btn-success" type="submit">
								<i class="glyphicon glyphicon-search"></i>
							</button> <a href="${pageContext.request.contextPath}/admin/room_add.do" class="btn btn-primary">객실추가</a>
						</span>
					</div>
				</form>
			</div>
		

		<!-- 조회결과를 출력하기 위한 표 시작 -->
		<table class="table">
			<thead>
				<tr>
					<th class="info text-center">객실번호</th>
					<th class="info text-center">호텔 지역</th>
					<th class="info text-center">객실이름</th>
					<th class="info text-center">침대유형</th>
					<th class="info text-center">가격</th>
					<th class="info text-center">패키지ID</th>
				</tr>
			</thead>
			<tbody>
				<c:choose>
					<c:when test="${fn:length(list) > 0}">
						<c:forEach var="item" items="${list}">
							<tr>
								<td class="text-center">${room.roomNo}</td>
								<td class="text-center">${room.hotelCate}</td>
								<td class="text-center"><a href="room_view.do?id=${room.id}">${room.roomName}</a></td>
								<td class="text-center">${room.bedType}</td>
								<td class="text-center">${room.roomPrice}</td>
								<td class="text-center">${room.packageId}</td>
							</tr>
						</c:forEach>
					</c:when>
					<c:otherwise>
						<tr>
							<td class="text-center" colspan="8">조회된 데이터가 없습니다.</td>
						</tr>
					</c:otherwise>
				</c:choose>
			</tbody>
		</table>
		<!-- // 조회결과를 출력하기 위한 표 끝 -->
		</div>

		<!-- 페이지 번호 -->
		<nav class="text-center">
			<ul class="pagination">
				<!-- 이전 그룹 -->
				<c:choose>
					<c:when test="${pageHelper.prevPage>0}">
						<!-- 이전 그룹에 대한 페이지 번호가 존재한다면? -->
						<!-- 이전 그룹으로 이동하기 위한 URL을 생성해서 "prevUrl"에 저장 -->
						<c:url var="prevUrl" value="/prof_list.do">
							<c:param name="keyword" value="${keyword}"></c:param>
							<c:param name="page" value="${pageHelper.prevPage}"></c:param>
						</c:url>
						<li><a href="${prevUrl}">&laquo;</a></li>
					</c:when>
					<c:otherwise>
						<!-- 이전 그룹에 대한 페이지 번호가 존재하지 않는다면? -->
						<li class="disabled"><a href="#">&laquo;</a></li>
					</c:otherwise>
				</c:choose>
				<!-- 페이지 번호 -->
				<!-- 현재 그룹의 시작페이지 ~ 끝페이지 사이를 1씩 증가하면서 반복 -->
				<c:forEach var="i" begin="${pageHelper.startPage}"
					end="${pageHelper.endPage}" step="1">
					<!-- 각 페이지 번호로 이동할 수 있는 URL을 생성하여 page_url에 저장 -->
					<c:url var="pageUrl" value="prof_list.do">
						<c:param name="keyword" value="${keyword}"></c:param>
						<c:param name="page" value="${i}"></c:param>
					</c:url>

					<!-- 반복중의 페이지 번호와 현재 위치한 페이지 번호가 같은 경우에 대한 분기 -->
					<c:choose>
						<c:when test="${pageHelper.page==i}">
							<li class="active"><a href="#">${i}</a></li>
						</c:when>
						<c:otherwise>
							<li><a href="${pageUrl}">${i}</a></li>
						</c:otherwise>
					</c:choose>
				</c:forEach>
				<!-- 다음 그룹 -->
				<c:choose>
					<c:when test="${pageHelper.nextPage>0}">
						<c:url var="nextUrl" value="/prof_list.do">
							<c:param name="keyword" value="${keyword}"></c:param>
							<c:param name="page" value="${pageHelper.nextPage}"></c:param>
						</c:url>
						<li><a href="${nextUrl}">&raquo;</a></li>
					</c:when>
					<c:otherwise>
						<li class="disabled"><a href="#">&raquo;</a></li>
					</c:otherwise>
				</c:choose>
			</ul>
		</nav>
		
</div>
	<!-- ==============끝================== -->
	<%@ include file="/WEB-INF/inc/footer.jsp"%>
</body>
</html>