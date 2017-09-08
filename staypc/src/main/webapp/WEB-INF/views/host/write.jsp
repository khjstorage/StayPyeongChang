<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE>
<html>
<head>
    <title>숙소 호스팅</title>
</head>
<body>
<div class="top_con_zone" id="fixNextTag">
    <form action="" method="post">
        <h1>숙소 호스팅</h1>

        <div>
            숙소명 : <input type="text" name="title"> <br>
            주소 : <input type="text" name="location"> <br>
            상세주소 : <input type="text" name="location_detail"> <br>
            숙소 입실시간 : <input type="time" name="check_in_time">&nbsp; 숙소 퇴실시간 : <input type="time" name="check_out_time"> <br>
            숙소 예약기한 : <input type="number" name="res_deadline"> &nbsp;* 몇일전까지 예약가능한지 숫자로 입력하세요. ex) 입실 2일전까지 예약해야하면 2 로 입력 <br>

            숙박료 : <input type="text" name="charge"> <br>
            숙소 연락처 : <input type="text" name="contact"> <br>
        </div>

        <div>
        최대 인원수
            <select name="num">
                <option>1명</option>
                <option>2명</option>
                <option>3명</option>
                <option>4명</option>
                <option>5명</option>
                <option>6명</option>
                <option>7명</option>
                <option>8명</option>
                <option>9명</option>
                <option>10명</option>
            </select>
        <br>
        <br>
        </div>

        <div>
            <b>방타입</b>
            집전체  <input type="radio" name="room_type" id="r1" value="집전체">
            개인실  <input type="radio" name="room_type" id="r2">
            다인실  <input type="radio" name="room_type" id="r3">
            <br>
        </div>

        <div>
            <b>건물타입</b>
            주택  <input type="radio" name="building_type" id="r4">
            빌딩  <input type="radio" name="building_type" id="r5">
            기타  <input type="radio" name="building_type" id="r6">
            <br>
        </div>

        <div>
            <br>
            침실 총 갯수 : <input type="text" name="bedroom_cnt">
            침대 총 갯수 : <input type="text" name="bed_cnt">
        </div>

        <div>
            침대유형
            <select name="bed_type">
                <option>침대없음</option>
                <option>1인용</option>
                <option>2인용</option>
                <option>2층침대</option>
            </select>
            <br>
        </div>

        욕실 개수 : <input type="number" name="bathroom_cnt"> <br>

        <div>
            <b>편의시설</b>
            WiFi : <input type="checkbox" name="convenient">
            TV : <input type="checkbox" name="convenient">
            수영장 : <input type="checkbox" name="convenient">
            주차 : <input type="checkbox" name="convenient">
            부엌 : <input type="checkbox" name="convenient">
            <br>
        </div>

        <div>
            <b>안전시설</b>
            연기감지기 : <input type="checkbox" name="secure">
            구급상자 : <input type="checkbox" name="secure">
            소화기 : <input type="checkbox" name="secure">
            방잠금장치 : <input type="checkbox" name="secure">
            <br>
        </div>

        <div>
            <br>
            숙소설명 <br> <textarea rows="15" cols="90" name="content"></textarea><br>
            숙소설명요약 : <input type="text" name="summary" width="300" size="72">
            <br>
        </div>

        <div>
            숙소사진 : <input type="file" name="picture">
        </div>

        <button type="button">숙소등록</button>
        <button type="button">취소</button>
    </form>
</div>
</body>
</html>