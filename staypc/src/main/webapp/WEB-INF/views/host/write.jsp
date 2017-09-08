<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE>
<html>
<head>
    <title>숙소 호스팅</title>
    <script src="/resources/js/jquery-3.2.1.min.js"></script>

    <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.css">
    <script src="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.js"></script>

    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

    <script>
        $(document).ready(function () {
            $('#enter_Time').timepicker();
            $('#out_Time').timepicker();
            $('#check_In').datepicker();
            $('#check_Out').datepicker();
        });
    </script>
</head>
<body>
<div class="top_con_zone" id="fixNextTag">
    <form action="/host/insert.do" method="post" enctype="multipart/form-data">
        <h1>숙소 호스팅</h1>

        <div>
            제목 : <input type="text" name="title" id="title" value="제목"> <br>
            숙소명 : <input type="text" name="room_Name" value="타이틀"> <br>
            주소 : <input type="text" name="location" value="주소"> <br>
            숙소 입실시간 : <input type="text" name="enter_Time" id="enter_Time"> &nbsp; 숙소 퇴실시간 : <input type="text" name="out_Time" id="out_Time"> <br>
            판매날짜 : <input type="text" name="check_In" id="check_In"> ~ <input type="text" name="check_Out" id="check_Out"> <br>
            숙소 예약기한 : <input type="text" name="res_deadline" value=2> &nbsp;* 몇일전까지 예약가능한지 숫자로 입력하세요. ex) 입실 2일전까지
            예약해야하면 2 로입력 <br>
            숙박료 : <input type="text" name="charge" value="2000"> <br>
            숙소 연락처 : <input type="text" name="room_Phone" value="010-8349-0706"> <br>
            최대 인원수
            <select name="max_People">
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
        </div>

        <div>
            <b>방타입</b>
            집전체: <input type="radio" name="room_Type" value="집전체">
            개인실: <input type="radio" name="room_Type" value="개인실">
            다인실: <input type="radio" name="room_Type" value="다인실">
            <br>
        </div>

        <div>
            <b>건물타입</b>
            주택: <input type="radio" name="bulid_Type" value="주택">
            빌딩: <input type="radio" name="bulid_Type" value="빌딩">
            기타: <input type="radio" name="bulid_Type" value="기타">
            <br>
        </div>

        <div>
            침실 총 갯수 : <input type="text" name="room_Num" value="2">
            침대 총 갯수 : <input type="text" name="bed_Num" value="2">
        </div>

        <div>
            침대유형
            <select name="bed_Type">
                <option value="침대없음">침대없음</option>
                <option value="1인용">1인용</option>
                <option value="2인용">2인용</option>
                <option value="2층침대">2층침대</option>
            </select>
        </div>

        <div>
            <b>편의시설</b>
            WiFi : <input type="checkbox" name="convenient" value="wifi">
            TV : <input type="checkbox" name="convenient" value="tv">
            수영장 : <input type="checkbox" name="convenient" value="수영장">
            주차 : <input type="checkbox" name="convenient" value="주차">
            부엌 : <input type="checkbox" name="convenient" value="부엌">
        </div>

        <div>
            <b>안전시설</b>
            연기감지기 : <input type="checkbox" name="secure" value="연기감지기">
            구급상자 : <input type="checkbox" name="secure" value="구급상자">
            소화기 : <input type="checkbox" name="secure" value="소화기">
            방잠금장치 : <input type="checkbox" name="secure" value="방잠금장치">
        </div>

        <div>
            숙소설명 <br> <textarea rows="15" cols="90" name="room_Explain">감사합니다</textarea><br>
        </div>

        <div>
            환불규정 <br> <textarea rows="15" cols="90" name="refund_Provision">안돼</textarea><br>
        </div>

        <div>
            숙소사진등록
        </div>

        <input type="submit" value="숙소등록">
        <button type="button">취소</button>
    </form>
</div>
</body>
</html>