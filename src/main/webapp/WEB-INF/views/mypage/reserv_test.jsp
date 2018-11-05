<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html>
<head>
	<meta charset="utf-8" />
	<title>My JSP Page</title>
	<!-- Twitter Bootstrap3 & jQuery -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" />
	<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		<form action="${pageContext.request.contextPath}/mypage/reserv_test_ok.do" method="post" enctype="multipart/form-data">
			<label for="room_no">객실 번호
				<input type="text" name="room_no" id="room_no" />
			</label>
			<label for="check_in">체크인 시간
				<input type="text" name="check_in" id="check_in" />
			</label>
			<label for="check_out">체크아웃시간
				<input type="text" name="check_out" id="check_out" />
			</label>
			<label for="room_type">객실타입
				<input type="text" name="room_type" id="room_type" />
			</label>
			<label for="packager_type">패키지타입
				<input type="text" id="packager_type" name="packager_type" />
			</label>
			<label for="bed_type">침대타입
				<input type="text" id="bed_type" name="bed_type" />
			</label>
			<label for="exbed">추가침대
				<input type="text" id="exbed" name="exbed" />
			</label>
			<label for="meal">조식
				<input type="text" id="meal" name="meal" />
			</label>
			<label for="total_price">총 가격
				<input type="text" id="total_price" name="total_price" />
			</label>
			<label for="resv_date">예약 날짜
				<input type="text" id="resv_date" name="resv_date" />
			</label>
			<label for="member_id">회원번호
				<input type="text" id="member_id" name="member_id" />
			</label>
			<label for="hotel_category">호텔종류
				<input type="text" id="hotel_category" name="hotel_category" />
			</label>
			<hr />
			<label for="card_no">카드번호
				<input type="text" name="card_no" id="card_no" />
			</label>
			<label for="card_type">카드종류
				<input type="text" name="card_type" id="card_type" />
			</label>
			<label for="card_yy">카드 유효년
				<input type="text" name="card_yy" id="card_yy" />
			</label>
			<label for="card_mm">카드 유효월
				<input type="text" name="card_mm" id="card_mm" />
			</label>
			<label for="ppl_ad">성인
				<input type="text" name="ppl_ad" id="ppl_ad" />
			</label>
			<label for="ppl_ch">청소년
				<input type="text" name="ppl_ch" id="ppl_ch" />
			</label>
			<label for="ppl_bb">아기
				<input type="text" name="ppl_bb" id="ppl_bb" />
			</label>
			<label for="detail">요구사항
				<textarea name="detail" id="detail"></textarea>
			</label>
			<label for="member_id">회원번호
				<input type="text" name="member_id" id="member_id" />
			</label>
			<label for="resv_room_id">객실예약번호
				<input type="text" name="resv_room_id" id="resv_room_id" />
			</label>
			<button type="submit" class="btn btn-success">예약</button>
		</form>
	</div>
</body>
</html>


