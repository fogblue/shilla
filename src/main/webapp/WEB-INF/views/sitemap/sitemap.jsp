<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!doctype html>
<html>
<head>
	<%@ include file="/WEB-INF/inc/head.jsp" %>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/sitemap.css">
</head>
<body>
	<%@ include file="/WEB-INF/inc/topbar.jsp" %>
	<!-- ============시작================== -->
	<div class="stmp-container main">
		<div class="stmp-contents">
			<div class="bdb stmp-contents-header">
				<h2>사이트맵</h2>
				<div class="pull-right stmp-loc"><span class="glyphicon glyphicon-home"></span>&nbsp;&nbsp;&nbsp;>&nbsp;&nbsp;&nbsp;<span class="stmp-loc-txt">사이트맵</span></div>
			</div>
			<div class="stmp-contents-box clearfix">
				<div class="stmp-contents-box-up">
					<div class="stmp-contents-box-up-header">
						<h4>로그인</h4>
					</div>
					<div class="stmp-contents-box-content">
						<h5><a href="#">로그인</a></h5>
						<ul>
							<li><a href="${pageContext.request.contextPath}/login/log_main.do">로그인</a></li>
							<li><a href="#">예약확인</a></li>
							<li><a href="#">신라리워즈 가입</a></li>
							<li><a href="#">신라리워즈 번호 또는 아이디 찾기</a></li>
							<li><a href="#">비밀번호 찾기</a></li>
							<li><a href="#">온라인 계정 활성화 하기</a></li>
						</ul>
					</div>
				</div>
				<div class="stmp-contents-box-up">
					<div class="stmp-contents-box-up-header">
						<h4>마이페이지</h4>
					</div>
					<div class="stmp-contents-box-content">
						<h5><a href="${pageContext.request.contextPath}/mypage/mypg_reservation.do">예약확인</a></h5>
						<h5><a href="${pageContext.request.contextPath}/mypage/mypg_profile_edit.do">개인정보</a></h5>
						<ul>
							<li><a href="${pageContext.request.contextPath}/mypage/mypg_profile_edit.do">프로필 수정</a></li>
							<li><a href="${pageContext.request.contextPath}/mypage/mypg_password_edit.do">비밀번호 변경</a></li>
							<li><a href="${pageContext.request.contextPath}/mypage/mypg_withdraw.do">회원 탈퇴 요청</a></li>
						</ul>
						<h5><a href="${pageContext.request.contextPath}/mypage/mypg_qna.do">문의내역</a></h5>
					</div>
				</div>
				<div class="stmp-contents-box-up">
					<div class="stmp-contents-box-up-header">
						<h4>신라리워즈</h4>
					</div>
					<div class="stmp-contents-box-content">
						<h5><a href="#">회원특전</a></h5>
						<h5><a href="#">포인트 안내</a></h5>
						<h5><a href="#">회원전용상품</a></h5>
						<h5><a href="#">구 멤버십포인트 사용안내</a></h5>
						<h5><a href="#">신라리워즈 전환 안내</a></h5>
						<h5><a href="#">신라리워즈 문의</a></h5>
						<ul>
							<li><a href="#">FAQ</a></li>
							<li><a href="#">문의하기</a></li>
						</ul>
					</div>
				</div>
				<div class="stmp-contents-box-up">
					<div class="stmp-contents-box-up-header">
						<h4>호텔신라소개</h4>
					</div>
					<div class="stmp-contents-box-content">
						<h5><a href="${pageContext.request.contextPath}/info/hotelinfo.do">개요</a></h5>
						<h5><a href="${pageContext.request.contextPath}/info/seoulshilla.do">서울신라호텔</a></h5>
						<h5><a href="${pageContext.request.contextPath}/info/jejushilla.do">제주신라호텔</a></h5>
						<h5><a href="#">신라스테이</a></h5>
						<h5><a href="${pageContext.request.contextPath}/info/awards.do">수상이력</a></h5>
					</div>
				</div>
				<div class="stmp-contents-box-down">
					<div class="stmp-contents-box-down-header">
						<h4>고객문의</h4>
					</div>
					<div class="stmp-contents-box-content">
						<h5><a href="${pageContext.request.contextPath}/info/contactinfo.do">연락처</a></h5>
						<h5><a href="${pageContext.request.contextPath}/info/inquiry.do">문의하기</a></h5>
					</div>
				</div>
				<div class="stmp-contents-box-down">
					<div class="stmp-contents-box-down-header">
						<h4>예약</h4>
					</div>
					<div class="stmp-contents-box-content">
						<h5><a href="${pageContext.request.contextPath}/reservation/reservation.do">객실/패키지예약</a></h5>
						<h5><a href="#">프로모션/계약 요금 예약</a></h5>
					</div>
				</div>
				<div class="stmp-contents-box-down">
					<div class="stmp-contents-box-down-header">
						<h4>법적 고지 확인</h4>
					</div>
					<div class="stmp-contents-box-content">
						<h5><a href="#">신라리워즈 약관</a></h5>
						<h5><a href="${pageContext.request.contextPath}/mem_policy.do">개인정보처리방침</a></h5>
						<h5><a href="#">이메일무단수집금지</a></h5>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- ==============끝================== -->
	<%@ include file="/WEB-INF/inc/footer.jsp" %>
</body>
</html>