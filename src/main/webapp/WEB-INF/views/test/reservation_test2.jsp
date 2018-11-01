<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<div class="container2">
		<!-- 탭 페이지 구성(전체, 패키지, 객실) -->
		<div class="tab-content">
			<!-- 전체 탭 시작 -- 전체 탭 시작 -- 전체 탭 시작 -- 전체 탭 시작 -- 전체 탭 시작 -- 전체 탭 시작 -- 전체 탭 시작 -- 전체 탭 시작 -- 전체 탭 시작 -- 전체 탭 시작 -->
			<form class="rsv_form" name="rsv_formpage1" id="rsv_formpage1" method="get"
				action="${pageContext.request.contextPath}/reservation/reservation2.do">
				<div class="rev_bedselect clearfix" id="rsv_roomarc2">
					<div class="rsv_collapse">
						<!-- 게시글 하나 단위 -->
						<div class='rsv_collapse-item'>
							<!-- 게시글 제목영역 -->
							<div class='rsv_collapse-title'>${room.roomType}</div>
							<!-- 게시글 내용영역 -->
							<div id="rsv_content1" class="rsv_content">
								<div class="rsv_content1-1-1">${room.bedType}</div>
								<div class="rsv_content1-1-2">
									${room.price} 원~ <input type="radio" name="subject1" />
								</div>
							</div>
						</div>
					</div>
				</div>
			</form>
		</div>
</div>
	<script type="text/javascript">
		$(function() {
			$("#rsv_formpage1").submit(function(e) {
				// 기본동작 수행 방식
				if ($("input:radio[name='subject1']").is(":checked") == true) {
				} else {
					alert('객실을 선택하세요.');
					return false;
				}
			});
			$("#rsv_formpage2").submit(function(e) {
				// 기본동작 수행 방식
				if ($("input:radio[name='subject2']").is(":checked") == true) {
				} else {
					alert('객실을 선택하세요.');
					return false;
				}
			});
			$("#rsv_formpage3").submit(function(e) {
				// 기본동작 수행 방식
				if ($("input:radio[name='subject3']").is(":checked") == true) {
				} else {
					alert('객실을 선택하세요.');
					return false;
				}
			});
		});
	</script>