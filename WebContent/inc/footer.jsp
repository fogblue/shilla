<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<div class="footer">
	<div class="bgc">
		<div class="fcontainer">
			<div class="flogo">
				<a href="/iot5/index.jsp">THESHILLA HOTEL &amp; RESORTS</a>
			</div>
			<div class="pull-left hotelList clearfix">
				<ul>
					<li>THESHILLA
						<ul class="list-inline">
							<li>THESHILLASEOUL</li>
							<li>THESHILLAJEJU</li>
						</ul>
					</li>
				</ul>
			</div>
			<div class="clearfix">
				<div class="tel border-right">
					<ul class="list-inline">
						<li>서울신라호텔</li>
						<li>02-2233-3131</li>
						<li>제주신라호텔</li>
						<li>064-735-5114</li>
					</ul>
				</div>
				<div class="info border-right">
					<ul class="list-inline">
						<li><a href="/iot5/info/hotelinfo.jsp">호텔신라 소개</a></li>
						<li><a href="/iot5/info/contactinfo.jsp">고객문의</a></li>
						<li><a href="/iot5/sitemap/sitemap.jsp">사이트맵</a></li>
					</ul>
				</div>
				<div class="sns">
					<ul class="list-inline">
						<li class="fb"><a
							href="https://www.facebook.com/theshillahotels">Facebook</a></li>
						<li class="is"><a
							href="https://www.instagram.com/shillahotels/">Instagram</a></li>
						<li class="gg"><a
							href="https://plus.google.com/+TheShillaHotelsResorts">Google+</a></li>
						<li class="wb"><a href="https://www.weibo.com/shillahotel">Weibo</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<div class="fcontainer">
		<div class="bottom">
			<ul class="list-inline">
				<li class="border-right"><a href="../inc/mem_policy.jsp">개인정보처리방침</a></li>
				<li class="border-right"><a href="#f_spamming" id="spamwaring">이메일무단수집금지</a></li>
				<li><a href="#">윤리경영(부정제보)</a></li>
			</ul>
		</div>
		<hr />
		<div class="address">
			<ul class="list-inline">
				<li>(주) 호텔신라 서울특별시 중구 동호로 249 (우 : 04065)</li>
				<li>사업자등록번호 203-81-43363</li>
				<li>통신판매신고번호 중구00272호</li>
				<li>대표이사 이부진</li>
			</ul>
			<p>Copyright (c) HOTEL SHILLA CO.,LTD. All Rights Reserved.</p>
		</div>
	</div>
</div>

<!-- HTML for Modal -->
<div class="modal" id="f_spamming">
	<div class="modal-dialog modal-md">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title">이메일 주소 무단 수집</h4>
			</div>
			<div class="modal-body">
				<div class="form-group">
					<p>
						<span class="f-bold">이메일 주소 무단 수집을 거부합니다.</span>
					</p>
					<p>본 웹사이트에 게시된 이메일 주소가 전자우편 수집 프로그램이나 그밖의 기술적 장치를 이용하여 무단으로
						수집되는 것을 거부하며, 이를 위반시 정보통신망법에 의해 처벌을 유념하시기 바랍니다.</p>
					<p>2015년 7월 27일 게시</p>
				</div>
			</div>
		</div>
	</div>
</div>

<script type=text/javascript>
	$(function() {
		$("#spamwaring").click(function() {
			$("#f_spamming").modal('show');
		});
	});
</script>