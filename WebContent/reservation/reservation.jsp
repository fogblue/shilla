<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!doctype html>
<html>

<head>
<%@ include file="../inc/head.jsp"%>
</head>

<body>
    <%@ include file="../inc/topbar.jsp"%>
    <div class="container main">
        <%-- container start --%>

        <div class="rsv_step">
            <span class="rsv_stepimg">Step1. 날짜/인원/객실 선택 Step2. 옵션 선택
                Step3. 고객 정보 입력 Step4. 예약 완료 /확인</span>
        </div>

        <div class="rsv_selectbox"> <%-- selectbox start --%>
            <strong class="rsv_hotelselect_hangel">호텔선택</strong> <select
                class="rsv_hotelselect_dropdown">
                <option class="selected">서울신라호텔</option>
                <option>제주신라호텔</option>
            </select>

            <div class="rsv_datepicker">
                <p>체크인</p>
                <input type="text" id="datepicker" />
                <script>
                    $(function() {
                        $("#datepicker").datepicker();
                    });
                </script>
            </div>
            <div class="rsv_datepicker2">
                <p>체크아웃</p>
                <input type="text" id="datepicker2" />
                <script>
                    $(function() {
                        $("#datepicker2").datepicker();
                    });
                </script>

            </div>

           <div class="rsv_personcount">
    <div class="rsv_adult">
        <div class="rsv_pmbutton">
            <span>성인</span>
        </div>
        <div class="rsv_numbox" id="numbox1">1</div>
        <div class="rsv_pmbotton2">
            <button type="button" class="rsv_plus 1234" id="plus1">+</button>
            <button type="button" class="rsv_minus 1234" id="minus1">-</button>
        </div>
    </div>
    <div class="rsv_child">
        <div class="rsv_pmbutton">
            <span>어린이</span>
        </div>
        <div class="rsv_numbox" id="numbox2">0</div>
        <div class="rsv_pmbotton2">
            <button type="button" class="rsv_plus 1234" id="plus2">+</button>
            <button type="button" class="rsv_minus 1234" id="minus2">-</button>
        </div>
    </div>
    <div class="rsv_baby">
        <div class="rsv_pmbutton">
            <span>유아</span>
        </div>
        <div class="rsv_numbox" id="numbox3">0</div>
        <div class="rsv_pmbotton2">
            <button type="button" class="rsv_plus 1234" id="plus3">+</button>
            <button type="button" class="rsv_minus 1234" id="minus3">-</button>
        </div>
    </div>
    <script type="text/javascript">
    $(function() {
        var number1;
        var number2;
        var number3;
        var numbertotal;
        $('.1234').click(function() {
            numbertotal = parseInt($('#numbox1').text()) + parseInt($('#numbox2').text()) + parseInt($('#numbox3').text());
        });
        $('#plus1').click(function() {
            number1 = parseInt($('#numbox1').text());

            if (numbertotal == 4 || parseInt($('#numbox1').text()) == 3) {
                alert('객실 1실 당 성인과 소인 동반 시 최대 4인까지만 투숙 가능합니다.');
            } else {
                number1++;
            }
            $('#numbox1').text(number1);
        });
        $('#plus2').click(function() {
            number2 = parseInt($('#numbox2').text());
            if (numbertotal == 4 || parseInt($('#numbox1').text()) > 3) {
                alert('객실 1실 당 성인과 소인 동반 시 최대 4인까지만 투숙 가능합니다.');
            } else {
                number2++;
            }
            $('#numbox2').text(number2);
        });
        $('#plus3').click(function() {
            number3 = parseInt($('#numbox3').text());
            if (numbertotal == 4 || parseInt($('#numbox1').text()) > 3) {
                alert('객실 1실 당 성인과 소인 동반 시 최대 4인까지만 투숙 가능합니다.');
            } else {
                number3++;
            }
            $('#numbox3').text(number3);
        });
        $('#minus1').click(function() {
            number1 = parseInt($('#numbox1').text());
            if (number1 <= 1) {
                number1 = 1;
            } else {
                number1--;
            }
            $('#numbox1').text(number1);
        });
        $('#minus2').click(function() {
            number2 = parseInt($('#numbox2').text());
            if (number2 <= 0) {
                number2 = 0;
            } else {
                number2--;
            }
            $('#numbox2').text(number2);
        });
        $('#minus3').click(function() {
            number3 = parseInt($('#numbox3').text());
            if (number3 <= 0) {
                number3 = 0;
            } else {
                number3--;
            }
            $('#numbox3').text(number3);
        });
    });
    </script>
</div>
            <div class="rsv_search">
                <span class="rsv_searchimg">검색</span>
            </div>

        </div> <%-- selectbox end --%>
        <div class="rsv_discriptionbox">
            <span class="rsv_discription">예약을 원하시는 호텔, 날짜, 인원을 선택 후 검색 버튼을
                눌러주세요.</span>
        </div>
    </div> <%-- container end --%>
    <%@ include file="../inc/footer.jsp"%>
</body>

</html>