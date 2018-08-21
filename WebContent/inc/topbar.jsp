<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page trimDirectiveWhitespaces="true"%>

<header id="site-header">
	<div class="container clearfix">
		<div class="box1">
			<ul>
				<li>호텔찾기</li>
				<li>예약</li>
			</ul>
		</div>
		<div class="box1">
			<a href="index.jsp"><h2 class="pull-left logo">My Site</h2></a>
		</div>
		<div class="box1">
			<ul>
				<li>로그인</li>
				<li>신라 리워즈 가입</li>
				<li>예약 확인</li>
			</ul>
			<ul>
				<li>호텔신라 소개</li>
				<li>고객문의</li>
				<li>신라리워즈</li>
			</ul>
		</div>	
	</div>
</header>

<script>
	$(function() {
		/** headroom 플러그인 적용 */
		$("#site-header").headroom(
				{
					"tolerance" : 10,
					// 슬라이더 높이에서 메뉴바 높이를 뺀 만큼까지 표시되도록 설정
					"offset" : $("#slide-container").height()
							- $("#site-header").height(),
					"classes" : {
						initial : "animated",
						pinned : "slideInDown",
						unpinned : "slideOutUp",
						top : "headroom--top",
						notTop : "headroom--not-top"
					}
				});

	});
</script>