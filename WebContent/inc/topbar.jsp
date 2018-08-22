<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page trimDirectiveWhitespaces="true"%>

<header id="site-header">
	<div class="tcontainer clearfix">
		<div class="menu1 list-inline downrow">
			<button class="btn btn-topbar dropdown-toggle" data-toggle="dropdown">호텔찾기 <span class="caret"></span></button>
			<ul class="dropdown-menu" role="menu">
				<li><a href="#">서울신라호텔</a></li>
				<li><a href="#">제주신라호텔</a></li>
			</ul>
		</div>
		<div class="menu1 list-inline downrow">
			<button class="btn btn-topbar">예약 <span  class="glyphicon glyphicon-calendar"></span></button>
		</div>
		<div class="box1">
			<a href="index.jsp"><span class="pull-left logo">My Site</span></a>
		</div>
		<ul class="menu2 list-inline pull-right">
			<li class="menu-item2 br">로그인&nbsp;</li>
			<li class="menu-item2 br">신라 리워즈 가입&nbsp;</li>
			<li class="menu-item2">예약 확인</li>
		</ul>
		<div>
			<ul class="menu3 list-inline pull-right">
				<li class="menu-item"><button class="btn btn-topbar">호텔신라
						소개</button></li>
				<li class="menu-item"><button class="btn btn-topbar">고객문의</button></li>
				<li class="menu-item"><button class="btn btn-topbar">신라리워즈</button></li>
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