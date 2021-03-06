<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!doctype html>
<html>
<head>
	<%@ include file="/WEB-INF/inc/head.jsp" %>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/mypage.css">
</head>
<body>
	<%@ include file="/WEB-INF/inc/topbar.jsp" %>
	<!-- ============시작================== -->
	<div class="mypg-container main">
		<div class="sidebar">
			<div class="sidebar-cont">
				<div class="bdb">
					<h3>마이페이지</h3>
				</div>
				<div class="mypg-sidebar-menu">
					<a href="${pageContext.request.contextPath}/mypage/mypg_reservation.do">예약 확인/취소</a>
					<a>개인정보</a>
					<a href="${pageContext.request.contextPath}/mypage/mypg_profile_edit.do">프로필 수정</a>
					<a href="${pageContext.request.contextPath}/mypage/mypg_password_edit.do">비밀번호 변경</a>
					<a href="${pageContext.request.contextPath}/mypage/mypg_withdraw.do">회원 탈퇴 요청</a>
					<a href="${pageContext.request.contextPath}/mypage/mypg_qna.do" class="mypg-sidebar-open">문의 내역<img src="${pageContext.request.contextPath}/assets/img/sidebar_arr.gif" class="sidebar-arrow"></a>
				</div>
			</div>
		</div>
		<div class="mypg-contents">
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
					<c:if test="${fileList != null}">
					<tr>
						<td>첨부파일</td>
						<td colspan="3">
							<c:forEach var="file" items="${fileList}">
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
						<td colspan="4" style="padding:5px;">
							<!-- 이미지만 별도로 화면에 출력하기 -->
							<c:forEach var="file" items="${fileList}">
								<c:if test="${fn:substringBefore(file.contentType, '/') == 'image'}">
									<c:url var="downloadUrl" value="/download.do">
										<c:param name="file" value="${file.fileDir}/${file.fileName}" />
									</c:url>
									<p style="margin:0; border:2px solid #999">
										<img src="${downloadUrl}" class="img-responsive" style="margin: auto"/>
									</p>
								</c:if>
							</c:forEach>
						</td>
					</tr>	
					</c:if>
					<tr style="border-bottom: 1px solid #f1ebd6;">
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
	
	<script type="text/javascript">
		function moveToList() {
			location.href="${pageContext.request.contextPath}/mypage/mypg_qna.do"
		}
	</script>
	<!-- ==============끝================== -->
	<%@ include file="/WEB-INF/inc/footer.jsp" %>
</body>
</html>