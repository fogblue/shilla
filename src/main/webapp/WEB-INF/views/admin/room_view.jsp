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
			<a href="${pageContext.request.contextPath}/admin/package_add.do"
				class="imenu">패키지 추가</a> <a
				href="${pageContext.request.contextPath}/admin/room_add.do"
				class="imenu info-open">객실 추가<img
				src="${pageContext.request.contextPath}/assets/img/sidebar_arr.gif"
				class="sidebar-arrow"></a> <a
				href="${pageContext.request.contextPath}/admin/room_list.do"
				class="imenu">객실 확인</a> <a
				href="${pageContext.request.contextPath}/admin/enqanswer.do"
				class="imenu">문의사항 답변</a>
		</div>
		<div class="if-contents">
			<div class="bdb">
				<h3 class="conhead">객실 보기</h3>
				<div class="ind pull-right">
					<span class="glyphicon glyphicon-home"></span>&nbsp;&nbsp;&nbsp;>&nbsp;&nbsp;&nbsp;관리자
					페이지&nbsp;&nbsp;&nbsp;>&nbsp;&nbsp;&nbsp; <span class="orng">객실
						보기</span>
				</div>
			</div>
			<!-- 조회결과를 출력하기 위한 표 시작 -->
			<table class="table table-bordered">
				<tr>
					<th class="success text-center">객실 번호</th>
					<td>${room.roomNo}</td>
				</tr>
				<tr>
					<th class="success text-center">호텔 지역</th>
					<td>${room.hotelCate}</td>
				</tr>
				<tr>
					<th class="success text-center">객실 유형</th>
					<td>${room.roomType}</td>
				</tr>
				<tr>
					<th class="success text-center">침대 유형</th>
					<td>${room.bedType}</td>
				</tr>
				<tr>
					<th class="success text-center">객실 가격</th>
					<td>${room.roomPrice}</td>
				</tr>
				<tr>
					<th class="success text-center">패키지 ID</th>
					<td>${room.packageId}</td>
				</tr>
				<c:if test="${fileList != null}">
					<tr>
						<td>첨부파일</td>
						<td colspan="3"><c:forEach var="file" items="${fileList}">
								<!-- 다운로드를 위한 URL만들기 -->
								<c:url var="downloadUrl" value="/download.do">
									<c:param name="file" value="${file.fileDir}/${file.fileName}" />
									<c:param name="orgin" value="${file.originName}" />
								</c:url>
								<!-- 다운로드 링크 -->
								<a href="${downloadUrl}" class="btn btn-link btn-xs">${file.originName}</a>
							</c:forEach></td>
					</tr>
					<tr>
						<td colspan="2">
							<!-- 이미지만 별도로 화면에 출력하기 -->
							<c:forEach var="file" items="${fileList}">
								<c:if test="${fn:substringBefore(file.contentType, '/') == 'image'}">
									<c:url var="downloadUrl" value="/download.do">
										<c:param name="file" value="${file.fileDir}/${file.fileName}" />
									</c:url>
									<p>
										<img src="${downloadUrl}" class="img-responsive" style="margin: auto" />
									</p>
								</c:if>
							</c:forEach>
						</td>
					</tr>
				</c:if>
			</table>

			<!-- // 조회결과를 출력하기 위한 표 끝 -->
			<!-- 버튼 시작 -->
			<div class="text-center">
				<a href="${pageContext.request.contextPath}/admin/room_list.do"
					class="btn btn-primary">목록</a> <a
					href="${pageContext.request.contextPath}/admin/room_add.do"
					class="btn btn-info">추가</a> <a
					href="${pageContext.request.contextPath}/admin/room_edit.do?id=${room.id}"
					class="btn btn-warning">수정</a> <a
					href="${pageContext.request.contextPath}/admin/room_del.do?id=${room.id}"
					class="btn btn-danger">삭제</a>
			</div>
			<!-- // 버튼 끝 -->
		</div>
	</div>
	<!-- ==============끝================== -->
	<%@ include file="/WEB-INF/inc/footer.jsp"%>
</body>
</html>