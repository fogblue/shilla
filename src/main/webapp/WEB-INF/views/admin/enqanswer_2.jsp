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
				<h3>문의 내역</h3>
				<div class="pull-right mypg-loc"><span class="glyphicon glyphicon-home"></span>&nbsp;&nbsp;&nbsp;>&nbsp;&nbsp;&nbsp;My Page&nbsp;&nbsp;&nbsp;>&nbsp;&nbsp;&nbsp;<span class="mypg-loc-txt">문의 내역</span></div>
			</div>
			<div class="mypg-contents-txt">
				<p>회원님께서 문의하신 내역과 답변을 확인하실 수 있습니다.</p>
			</div>
			<div class="mypg-rsvt-bd">
				<table class="mypg-qna2-contents-table mypg-mb">
					<tr>
						<td style="width: 15%">호텔</td>
						<td colspan="3">${qnaInfo.hotelCate}</td>
					</tr>
					<tr>
						<td style="width: 15%">문의유형</td>
						<td style="width: 35%">${qnaInfo.enqType}</td>
						<td style="width: 15%">등록일자</td>
						<td style="width: 35%">${qnaInfo.regDate}</td>
					</tr>
					<tr>
						<td>제목</td>
						<td colspan="3">${qnaInfo.subject}</td>
					</tr>
					<tr>
						<td>내용</td>
						<td colspan="3">${qnaInfo.content}</td>
					</tr>
					<c:if test="${fileInfo != null}">
					<tr>
						<td>첨부파일</td>
						<td colspan="3">
							<c:forEach var="file" items="${fileInfo}">
								<!-- 다운로드를 위한 URL만들기 -->
								<c:url var="downloadUrl" value="/download.do">
									<c:param name="file" value="${file.fileDir}/${file.fileName}" />
									<c:param name="orgin" value="${file.originName}" />
								</c:url>
								<!-- 다운로드 링크 -->
								<a href="${downloadUrl}" class="btn btn-link btn-xs">${file.originName}</a>
							</c:forEach>
						</td>
					</tr>
					<tr>
						<td>
							<!-- 이미지만 별도로 화면에 출력하기 -->
							<c:forEach var="file" items="${fileInfo}">
								<c:if test="${fn:substringBefore(file.contentType, '/') == 'image'}">
									<c:url var="downloadUrl" value="/download.do">
										<c:param name="file" value="${file.fileDir}/${file.fileName}" />
									</c:url>
									<p>
										<img src="${downloadUrl}" class="img-responsive" style="margin: auto"/>
									</p>
								</c:if>
							</c:forEach>
						</td>
					</tr>	
					</c:if>
					<tr>
						<td>답변여부</td>
						<td></td>
						<td>답변일</td>
						<td></td>
					</tr>
					<tr>
						<td>답변내용</td>
						<td colspan="3"></td>
					</tr>
				</table>
				<div class="pull-left mypg-contents-btn3">
					<button type="button" class="btn mypg-rsvt2-list" onclick="moveToList()">목록</button>
				</div>
			</div>
		</div>
		</div>
	<!-- ==============끝================== -->
	<%@ include file="/WEB-INF/inc/footer.jsp"%>
	<!-- json 데이터를 정의한 외부 파일 로드하기 -->
	
	
</body>
</html>