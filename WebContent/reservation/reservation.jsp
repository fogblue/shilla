<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
    <%@ page trimDirectiveWhitespaces="true" %>
        <!doctype html>
        <html>

        <head>
            <%@ include file="../inc/head.jsp" %>
        </head>

        <body>
            <%@ include file="../inc/topbar.jsp" %>
                <div class="container main">
                    <%-- container start --%>
                        <h1>내용영역</h1>
                        
                        <div class="box1">
							<span class="pull-left logo">My Site</span>
						</div>
                        
                        <div class="stepimg">
                        <img src="../img/rsvstep1.gif">
                        </div>
                        <div class="select step">
                            <ul>
                                <li class="first"><span>Step1. 날짜/인원/객실 선택</span></li>
                                <li><span>Step2. 옵션 선택</span></li>
                                <li><span>Step3. 고객 정보 입력</span></li>
                                <li class="last"><span>Step4. 예약 완료 /확인</span></li>
                            </ul>
                        </div>
                        <div class="hetel select">
                            <div class="dropdown">
                                <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-expanded="true">
                                    호텔선택
                                    <span class="caret"></span>
                                </button>
                                <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
                                    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">서울신라호텔</a></li>
                                    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">제주신라호텔</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="checkin">
                        <%-- 달력 --%>
                        </div>
                        <div class="checkout">
                        <%-- 달력 --%>
                        </div>
                        <div class="plus">
                        <button class="plusbutton">+
                        </button></div>
                        <div class="minus">
                        <button class="minusbutton">-</button>
                        </div>
                        <div class="search">
                        	<button class="search button">
                        		검색
                        	</button>
                        </div>
                </div><%-- container end --%>
            <%@ include file="../inc/footer.jsp" %>
        </body>

        </html>