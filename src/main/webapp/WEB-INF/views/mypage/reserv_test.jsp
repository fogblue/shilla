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
			<div class="form-group">
			<label for="room_no" class="col-md-2">객실 번호</label>
				<div class="col-md-10">
					<input type="text" name="room_no" id="room_no" <%-- value="${.roomNo}" --%> class="form-control" />
				</div>
			</div>
			<div class="form-group">
				<label for="check_in" class="col-md-2">체크인 날짜</label>
				<div class="col-md-10">
					<input type="date" name="check_in" id="check_in" <%-- value="${.checkIn}" --%> class="form-control" />
				</div>
			</div>
			<div class="form-group">
				<label for="check_out" class="col-md-2">체크아웃 날짜</label>
				<div class="col-md-10">
					<input type="date" name="check_out" id="check_out" <%-- value="${.checkOut}" --%> class="form-control" />
				</div>
			</div>
			<div class="form-group">
				<label for="room_type" class="col-md-2">객실타입</label>
				<div class="col-md-10">
				<%-- <input type="text" name="room_type" id="room_type" value="${.roomType}" class="form-control" /> --%>
					<select name="room_type" id="room_type" class="form-control">
						<option value="">--선택하세요--</option>
						<option value="Business Deluxe">Business Deluxe</option>
						<option value="Executive Business Deluxe">Executive Business Deluxe</option>
					</select>
				</div>
			</div>
			<div class="form-group">
				<label for="bed_type" class="col-md-2">침대타입</label>
				<div class="col-md-10">
					<%-- <input type="text" id="bed_type" name="bed_type" value="${.bedType}" class="form-control" /> --%>
					<select id="bed_type" name="bed_type" class="form-control">
						<option value="">--선택하세요--</option>
						<option value="Twin">Twin</option>
						<option value="Double">Double</option>
					</select>
				</div>
			</div>
			<div class="form-group">
				<label for="exbed" class="col-md-2">추가침대</label>
				<div class="col-md-10">
					<input type="text" id="exbed" name="exbed" <%-- value="${.exbed}" --%> class="form-control" />
				</div>
			</div>
			<div class="form-group">
				<label for="meal" class="col-md-2">조식</label>
				<div class="col-md-10">
					<input type="text" id="meal" name="meal" <%-- value="${.meal}" --%> class="form-control" />
				</div>
			</div>
			<div class="form-group">
				<label for="member_id" class="col-md-2">회원번호</label>
				<div class="col-md-10">
					<input type="text" id="member_id" name="member_id" value="${loginInfo.id}" class="form-control" />
				</div>
			</div>
			<div class="form-group">
				<label for="hotel_category" class="col-md-2">호텔종류</label>
				<div class="col-md-10">
					<select id="hotel_category" name="hotel_category" class="form-control">
						<option value="">--선택하세요--</option>
						<option value="서울신라호텔">서울신라호텔</option>
						<option value="제주신라호텔">제주신라호텔</option>
					</select>
				</div>
			</div>
			<hr />
			<div class="form-group">
				<label for="card_no" class="col-md-2">카드번호</label>
				<div class="col-md-10">
					<input type="text" name="card_no" id="card_no" maxlength="16" class="form-control" />
				</div>
			</div>
			<div class="form-group">
				<label for="card_type" class="col-md-2">카드종류</label>
				<div class="col-md-10">
					<select name="card_type" id="card_type" class="form-control">
						<option value="">--선택하세요--</option>
						<option value="Master">Master</option>
						<option value="Visa">Visa</option>
					</select>
				</div>
			</div>
			<div class="form-group">
				<label for="card_yy" class="col-md-2">카드 유효년</label>
				<div class="col-md-10">
					<input type="text" name="card_yy" id="card_yy" class="form-control" />
				</div>
			</div>
			<div class="form-group">
				<label for="card_mm" class="col-md-2">카드 유효월</label>
				<div class="col-md-10">
					<input type="text" name="card_mm" id="card_mm" class="form-control" />
				</div>
			</div>
			<div class="form-group">
				<label for="ppl_ad" class="col-md-2">성인</label>
				<div class="col-md-10">
					<input type="number" min="1" max="3" name="ppl_ad" id="ppl_ad" <%-- value="${.pplAd}" --%> class="form-control" />
				</div>
			</div>
			<div class="form-group">
				<label for="ppl_ch" class="col-md-2">청소년</label>
				<div class="col-md-10">
					<input type="number" min="0" max="1" name="ppl_ch" id="ppl_ch" <%-- value="${.pplCh}" --%> class="form-control" />
				</div>
			</div>
			<div class="form-group">
				<label for="ppl_bb" class="col-md-2">아기</label>
				<div class="col-md-10">
					<input type="number" min="0" max="1" name="ppl_bb" id="ppl_bb" <%-- value="${.pplBb}" --%> class="form-control" />
				</div>
			</div>
			<div class="form-group">
				<label for="detail" class="col-md-2">요구사항</label>
				<div class="col-md-10">
					<textarea name="detail" id="detail" style="width: 690px;" class="form-control"></textarea>
				</div>
			</div>
			<div class="form-group">
				<div class="col-md-offset-2 col-md-10">
					<button type="submit" class="btn btn-success">예약</button>
				</div>
			</div>
		</form>
	</div>
</body>
</html>


