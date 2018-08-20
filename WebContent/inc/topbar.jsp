<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!-- 메뉴바 영역 -->
<head>
<style>
/*------------------------------------------------------------
         | 메뉴바 설정
         -------------------------------------------------------------*/
/** Headroom 플러그인이 적용될 메뉴바 */
a {
	text-decoration: none;
	color: black;
}

#site-header {
	/** 스크롤 이동에 상관 없이 위치 고정 */
	position: fixed;
	top: 0;
	left: 0;
	z-index: 10;
	/** 사이즈,색상 설정 */
	width: 100%;
	height: 100px;
	background: #f7e4c7;
	/** animate.css에 의해 적용될 애니메이션의 재생시간 설정 */
	animation-duration: 500ms;
}
/** 메뉴바 > 메뉴영역 넓이 제한 */
#site-header .container {
	width: 1200px;
	margin: auto;
}
/** 메뉴바 > 메뉴영역 > 좌측 로고 */
#site-header h1 {
	font-size: 24px;
	color: white;
	padding: 13px 0;
	margin-top: 20px;
	margin-left: 500px;
}
/** 메뉴바 > 메뉴영역 > 우측 메뉴 목록 */
#site-header .menu {
	display: inline-block;
	list-style: none;
	padding: 0;
	margin: 0;
}
/** 메뉴바 > 메뉴영역 > 우측 메뉴 목록 > 목록 아이템 */
#site-header .menu .menu-item {
	font-size: 18px;
	color: white;
	margin: 17px 20px;
}

.logo {
	width: 202px;
	height: 50px;
	background: url(../img/logo.gif) no-repeat;
	text-indent: -9999px;
	overflow: hidden;
}

.logo a {
	display: block;
	width: 100%;
	height: 100%;
}

.menu {
	display: inline-block;
	margin: 0;
	padding: 0;
}

.menu-item {
	padding: 0;
	margin: 0;
	border: solid 1px #000;
}
</style>
</head>
<header id="site-header">
	<div class="container clearfix">
		<table class="menu">

			<tr class="pull-right">
				<td>
					<h2 class="pull-left logo">
						<a href="../index.jsp">My Site</a>
					</h2>
				</td>
				<td class="menu-item pull-left"><a href="#" class="next">로그인</a></td>
				<td class="menu-item pull-left"><a href="#" class="next">신라리워즈
						가입</a></td>
				<td class="menu-item pull-left"><a href="#" class="next">예약확인</a></td>
			</tr>
			<tr>
				<td class="menu-item pull-left"><a href="#" class="next">호텔신라
						소개</a></td>
				<td class="menu-item pull-left"><a href="#" class="next">고객문의</a></td>
				<td class="menu-item pull-left"><a href="#" class="next">신라리워즈</a></td>
			</tr>
		</table>
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