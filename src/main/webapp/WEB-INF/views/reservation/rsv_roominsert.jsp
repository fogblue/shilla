<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
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
		<form class="form-horizontal" name="myform" method="post"  enctype="multipart/form-data"
        action="${pageContext.request.contextPath}/reservation/rsv_roominsert_ok.do">

        <div class="form-group">
            <label for='room_no' class="col-md-2">객실번호</label>
            <div class="col-md-10">
                <input type="text" name="room_no" id="room_no" class="form-control" maxlength="4" />
            </div>
        </div>

        <div class="form-group">
            <label for='room_type' class="col-md-2">객실타입</label>
            <div class="col-md-10">
                <select name="room_type" id="room_type" class="form-control">
                	<option value="Business Deluxe">Business Deluxe</option>
                	<option value="Executive Business Deluxe">Executive Business Deluxe</option>
                </select>
            </div>
        </div>

        <div class="form-group">
            <label for='bed_type' class="col-md-2">침대타입</label>
            <div class="col-md-10">
                <select name="bed_type" id="bed_type" class="form-control">
                	<option value="Twin">Twin</option>
                	<option value="Double">Double</option>
                </select>
            </div>
        </div>

        <div class="form-group">
            <label for='room_price' class="col-md-2">객실가격</label>
            <div class="col-md-10">
                <input type="text" name="room_price" id="room_price" class="form-control" maxlength="6" />
            </div>
        </div>

        <!-- <div class="form-group">
            <label for='room_img' class="col-md-2">객실내부사진</label>
            <div class="col-md-10">
                <input type="file" name="room_img" id="room_img" class="form-control"/>
            </div>
        </div> -->

        <div class="form-group">
            <label for='package_id' class="col-md-2">패키지종류</label>
            <div class="col-md-10">
                <input type="text" name="package_id" id="package_id" class="form-control" value="1" />
            </div>
        </div>

        <div class="form-group">
            <label for='hotel_category' class="col-md-2">호텔종류</label>
            <div class="col-md-10">
                <select name="hotel_category" id="hotel_category" class="form-control">
                	<option value="서울신라호텔">서울신라호텔</option>
                	<option value="제주신라호텔">제주신라호텔</option>
                </select>
            </div>
        </div>

        <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
                <button type="submit" class="btn btn-primary">입력하기</button>
                <button type="reset" class="btn btn-danger">다시작성</button>
                <button type="button" class="btn btn-info" onclick="location.href='${pageContext.request.contextPath}/reservation/reservation.do'">목록으로</button>
            </div>
        </div>
    </form>
	</div>
</body>
</html>