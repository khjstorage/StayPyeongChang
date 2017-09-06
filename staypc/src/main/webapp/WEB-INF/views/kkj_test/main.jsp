<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="" method="get">
 
<h1>숙소 등록하기</h1>
 
 
<p>숙소 이름 : <input type="text" name="title"></p>
<p>주소 : <input type="text" name="location"></p>
<p>주소(상세정보) : <input type="text" name="location_detail"></p>
<p>숙소 입실시간 : <input type="text" name="check_in_time"></p>
<p>숙소 퇴실시간 : <input type="text" name="check_out_time"></p>
<p>숙소 예약기한 : <input type="text" name="res_deadline"></p>
<p>숙박료 : <input type="text" name="charge"></p>
<p>숙소 연락처 : <input type="text" name="contact"></p>
 
<p>최대 인원수</p>
<select  name="num">
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
 
<p>방타입</p>
<p>집 전체 : <input type="radio" name="room_type"></p>
<p>개인실 : <input type="radio" name="room_type"></p>
<p>다인실 : <input type="radio" name="room_type"></p>
 
<br>
 
<p>건물타입</p>
<p>주택 : <input type="radio" name="building_type"></p>
<p>빌딩 : <input type="radio" name="building_type"></p>
<p>기타 : <input type="radio" name="building_type"></p>
 
 
<br>
 
<p>게스트 전용 숙소입니까?</p>
<p>예 : <input type="radio" name="guest_only"></p>
<p>아니오 : <input type="radio" name="guest_only"></p>
 
<br>
 
 
<p>침실 총 갯수 : <input type="text" name="bedroom_cnt"></p>
<p>침대 총 갯수 : <input type="text" name="bed_cnt"></p>
 
 
<br>
<p>침대유형</p>
<select  name="bed_type">
<option value="">침대없음</option>
<option>1인용</option>
<option>2인용</option>
<option>2층침대</option>
</select>
<br>
<br>
 
<p>욕실 개수 : <input type="text" name="bathroom_cnt"></p>
<br>
 
<p>게스트 전용 욕실입니까?</p>
<p>예 : <input type="radio" name="bath_guest_only"></p>
<p>아니오 : <input type="radio" name="bath_guest_only"></p>
<br>
 
 
<p>편의시설</p>
<p>WiFi : <input type="checkbox" name="convenient"></p>
<p>TV : <input type="checkbox" name="convenient"></p>
<p>수영장 : <input type="checkbox" name="convenient"></p>
<p>주차 : <input type="checkbox" name="convenient"></p>
<p>부엌 : <input type="checkbox" name="convenient"></p>
<br>
 
 
<p>안전시설</p>
<p>연기감지기 : <input type="checkbox" name="secure"></p>
<p>구급상자 : <input type="checkbox" name="secure"></p>
<p>소화기 : <input type="checkbox" name="secure"></p>
<p>방잠금장치 : <input type="checkbox" name="secure"></p>
 
<br>
 
<br>
 
숙소설명 <br> <textarea rows="15" cols="90" name="content"></textarea>
<p>숙소설명요약 : <input type="text" name="summary"></p>
 
<br>
 
 
<p>이 곳은 숙소사진업로드가 이루어지는 곳입니다(picture,일단 킵)</p>
<p>숙소사진 : <input type="file" name="picture"></p>
 
<br>
 
<p><input type="button" name="button" value="확인"></p>
 
 
</form>
 
</body>
</html>