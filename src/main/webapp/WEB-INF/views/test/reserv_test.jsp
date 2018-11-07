<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html>
<head>
	<%@ include file="/WEB-INF/inc/head.jsp" %>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/mypage.css">
</head>
<body>
<%@ include file="/WEB-INF/inc/topbar.jsp" %>
	<!-- ============시작================== -->
	<div class="container">
		<form action="${pageContext.request.contextPath}/mypage/reserv_test_ok.do" method="post">
			<div class="form-group">
				<label for="member_id" class="col-md-2">회원번호</label>
				<div class="col-md-10">
					<input type="text" id="member_id" name="member_id" value="${loginInfo.id}" class="form-control" />
				</div>
			</div>
			<div class="form-group">
				<label for="check_in" class="col-md-2">체크인 날짜</label>
				<div class="col-md-10">
					<input type="text" name="check_in" id="check_in" value="${reservInfo.checkIn}"  class="form-control" />
				</div>
			</div>
			<div class="form-group">
				<label for="check_out" class="col-md-2">체크아웃 날짜</label>
				<div class="col-md-10">
					<input type="text" name="check_out" id="check_out" value="${reservInfo.checkOut}" class="form-control" />
				</div>
			</div>
			<div class="form-group">
				<label for="hotel_cate" class="col-md-2">호텔종류</label>
				<div class="col-md-10">
					<input type="text" name="hotel_category" id="hotel_cate" value="${reservInfo.hotelCate}" class="form-control" />
				</div>
			</div>
			<div class="form-group">
			<label for="room_no" class="col-md-2">객실 번호</label>
				<div class="col-md-10">
					<input type="text" name="room_no" id="room_no" value="${reservInfo.roomNo}" class="form-control" />
				</div>
			</div>
			<div class="form-group">
				<label for="ppl_ad" class="col-md-2">성인</label>
				<div class="col-md-10">
					<input type="text" name="ppl_ad" id="ppl_ad" value="${reservInfo.pplAd}" class="form-control" />
				</div>
			</div>
			<div class="form-group">
				<label for="ppl_ch" class="col-md-2">어린이</label>
				<div class="col-md-10">
					<input type="text" name="ppl_ch" id="ppl_ch" value="${reservInfo.pplCh}" class="form-control" />
				</div>
			</div>
			<div class="form-group">
				<label for="ppl_bb" class="col-md-2">유아</label>
				<div class="col-md-10">
					<input type="text" name="ppl_bb" id="ppl_bb" value="${reservInfo.pplBb}" class="form-control" />
				</div>
			</div>
			<div class="form-group">
				<label for="room_type" class="col-md-2">객실타입</label>
				<div class="col-md-10">
					<input type="text" name="room_type" id="room_type" value="${reservInfo.roomType}" class="form-control" />
				</div>
			</div>
			<div class="form-group">
				<label for="bed_type" class="col-md-2">침대타입</label>
				<div class="col-md-10">
					<input type="text" id="bed_type" name="bed_type" value="${reservInfo.bedType}" class="form-control" />
				</div>
			</div>
			<div class="form-group">
				<label for="exbed" class="col-md-2">추가침대</label>
				<div class="col-md-10">
					<input type="text" id="exbed" name="exbed" value="${reservInfo.exbed}" class="form-control" />
				</div>
			</div>
			<div class="form-group">
				<label for="meal" class="col-md-2">조식</label>
				<div class="col-md-10">
					<input type="text" id="meal" name="meal" value="${reservInfo.meal}" class="form-control" />
				</div>
			</div>
			<hr />
			<div class="form-group">
				<label for="card_no" class="col-md-2">카드번호</label>
				<div class="col-md-10">
					<input type="text" name="card_no" id="card_no" maxlength="16" placeholder="' - ' 를 제외하고 입력" class="form-control" />
				</div>
			</div>
			<div class="form-group">
				<label for="card_type" class="col-md-2">카드종류</label>
				<div class="col-md-10">
					<select name="card_type" id="card_type" class="form-control">
						<option value="">---- 선택하세요 ----</option>
						<option value="Master">Master</option>
						<option value="Visa">Visa</option>
					</select>
				</div>
			</div>
			<div class="form-group">
				<label for="card_yy" class="col-md-2">카드 유효년</label>
				<div class="col-md-10">
					<input type="text" name="card_yy" id="card_yy" maxlength="4" placeholder="YYYY" class="form-control" />
				</div>
			</div>
			<div class="form-group">
				<label for="card_mm" class="col-md-2">카드 유효월</label>
				<div class="col-md-10">
					<input type="text" name="card_mm" id="card_mm" maxlength="2" placeholder="MM" class="form-control" />
				</div>
			</div>
			<div class="form-group">
				<label for="detail" class="col-md-2">요구사항</label>
				<div class="col-md-10">
					<textarea name="detail" id="detail" class="form-control"></textarea>
				</div>
			</div>
			<div class="form-group">
				<div class="col-md-offset-2 col-md-10">
					<button type="submit" class="btn btn-success">예약</button>
				</div>
			</div>
		</form>
	</div>
<!-- ==============끝================== -->
</body>
</html>


