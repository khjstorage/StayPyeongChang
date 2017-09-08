<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>숙소 호스팅</title>

    <%--<script src="/resources/js/jquery-3.2.1.min.js"></script>--%>
    <%----%>
    <%--<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.css">--%>
    <%--<script src="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.js"></script>--%>

    <%--<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">--%>
    <%--<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>--%>


    <%--<script>--%>
        <%--$(document).ready(function () {--%>
            <%--$('#s_time').timepicker();--%>
            <%--$('#e_time').timepicker();--%>
            <%--$('#s_check_in').datepicker();--%>
            <%--$('#e_check_in').datepicker();--%>
        <%--});--%>
    <%--</script>--%>

</head>
<body>
<form action='<c:url value="/staypc/insert.do"></c:url>' method="post" name="form1">

    <%--입실시간 <input type="text" id="s_time" name="s_time">--%>
    <%--퇴실시간 <input type="text" id="e_time" name="e_time"><br>--%>
    <%--시작날짜 : <input type="text" name="s_check_In" id="s_check_in"> <br>--%>
    <%--마지막날짜 : <input type="text" name="e_check_In" id="e_check_in"> <br>--%>

    <h1>숙소 호스팅</h1>


    <p>숙소명 : <input type="text" name="title"></p>
    <p>주소 : <input type="text" name="location"></p>
    <p>상세주소 : <input type="text" name="location_detail"></p>
    <p>숙소 입실시간 : <input type="time" name="check_in_time">&nbsp;숙소 퇴실시간 : <input type="time" name="check_out_time"></p>
    숙소 예약기한 : <input type="number" name="res_deadline"> &nbsp;* 몇일전까지 예약가능한지 숫자로 입력하세요. ex) 입실 2일전까지 예약해야하면 2 로 입력

    <p>숙박료 : <input type="number" name="charge"></p>
    <p>숙소 연락처 : <input type="tel" name="contact"></p>

    <p>최대 인원수
        <select name="num">
            <option value="1">1명</option>
            <option value="2">2명</option>
            <option value="3">3명</option>
            <option value="4">4명</option>
            <option value="5">5명</option>
            <option value="6">6명</option>
            <option value="7">7명</option>
            <option value="8">8명</option>
            <option value="9">9명</option>
            <option value="10">10명</option>
        </select>
    </p>
    <br>
    <br>

    <p>방타입</p>
    <p>집전체 : <input type="radio" name="room_type" id="r1" value="집전체"></p>
    <p>개인실 : <input type="radio" name="room_type" id="r2" value="개인실"></p>
    <p>다인실 : <input type="radio" name="room_type" id="r3" value="다인실"></p>

    <br>

    <p>건물타입</p>
    <p>주택 : <input type="radio" name="building_type" id="r4" value="주택"></p>
    <p>빌딩 : <input type="radio" name="building_type" id="r5" value="빌딩"></p>
    <p>기타 : <input type="radio" name="building_type" id="r6" value="기타"></p>


    <br>

    <p>게스트 전용 숙소입니까?</p>
    <p>예 : <input type="radio" name="guest_only" id="r7" value="Y"></p>
    <p>아니오 : <input type="radio" name="guest_only" id="r8" value="N"></p>

    <br>


    <p>침실 총 갯수 : <input type="number" name="bedroom_cnt"></p>
    <p>침대 총 갯수 : <input type="number" name="bed_cnt"></p>


    <br>
    <p>침대유형</p>
    <select name="bed_type">
        <option value="침대없음">침대없음</option>
        <option value="1인용">1인용</option>
        <option value="2인용">2인용</option>
        <option value="2층침대">2층침대</option>
    </select>
    <br>
    <br>

    <p>욕실 개수 : <input type="number" name="bathroom_cnt"></p>
    <br>

    <p>게스트 전용 욕실입니까?</p>
    <p>예 : <input type="radio" name="bath_guest_only" id="r9" value="Y"></p>
    <p>아니오 : <input type="radio" name="bath_guest_only" id="r10" value="N"></p>
    <br>


    <p>편의시설</p>
    <p>WiFi : <input type="checkbox" name="convenient" value="WiFi"></p>
    <p>TV : <input type="checkbox" name="convenient" value="TV"></p>
    <p>수영장 : <input type="checkbox" name="convenient" value="수영장"></p>
    <p>주차 : <input type="checkbox" name="convenient" value="주차"></p>
    <p>부엌 : <input type="checkbox" name="convenient" value="부엌"></p>
    <br>


    <p>안전시설</p>
    <p>연기감지기 : <input type="checkbox" name="secure" value="연기감지기"></p>
    <p>구급상자 : <input type="checkbox" name="secure" value="구급상자"></p>
    <p>소화기 : <input type="checkbox" name="secure" value="소화기"></p>
    <p>방잠금장치 : <input type="checkbox" name="secure" value="방잠금장치"></p>

    <br>

    <br>

    숙소설명 <br> <textarea rows="15" cols="90" name="content"></textarea><br><br><br>
    숙소설명요약 : <input type="text" name="summary" width="300" size="72">

    <br>

    <p>숙소사진 : <input type="file" name="picture"></p>

    <br>

    <input type="submit" value="등록" onclick="return Check()">
    <button type="reset">다시작성</button>
    <button type="button" onclick="javascript:history.back()">뒤로가기</button>


</form>

</body>
</html>