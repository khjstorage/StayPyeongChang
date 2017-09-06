<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action=" kkj_test/main.do" method="post">

		<h1>숙소 등록하기</h1>


		<p>
			숙소 이름 : <input type="text" name="title">
		</p>
		<p>
			주소 : <input type="text" name="location">
		</p>
		<p>
			주소(상세정보) : <input type="text" name="location_detail">
		</p>
		<p>
			숙소 입실시간 : <input type="text" name="check_in_time">
		</p>
		<p>
			숙소 퇴실시간 : <input type="text" name="check_out_time">
		</p>
		<p>
			숙소 예약기한 : <input type="text" name="res_deadline">
		</p>
		<p>
			숙박료 : <input type="text" name="charge">
		</p>
		<p>
			숙소 연락처 : <input type="text" name="contact">
		</p>

		<p>최대 인원수</p>
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
		</select> <br> <br>

		<p>방타입</p>
		<p>
			집 전체 : <input type="radio" name="room_type" value="집 전체" >
		</p>
		<p>
			개인실 : <input type="radio" name="room_type" value="개인실" >
		</p>
		<p>
			다인실 : <input type="radio" name="room_type" value="다인실" >
		</p>

		<br>

		<p>건물타입</p>
		<p>
			주택 : <input type="radio" name="building_type" value="주택" >
		</p>
		<p>
			빌딩 : <input type="radio" name="building_type" value="빌딩" >
		</p>
		<p>
			기타 : <input type="radio" name="building_type" value="기타" >
		</p>


		<br>

		<p>게스트 전용 숙소입니까?</p>
		<p>
			예 : <input type="radio" name="guest_only" value="Y" >
		</p>
		<p>
			아니오 : <input type="radio" name="guest_only" value="N" >
		</p>

		<br>


		<p>
			침실 총 갯수 : <input type="text" name="bedroom_cnt">
		</p>
		<p>
			침대 총 갯수 : <input type="text" name="bed_cnt">
		</p>


		<br>
		<p>침대유형</p>
		<select name="bed_type">
			<option value="침대없음">침대없음</option>
			<option value="1인용">1인용</option>
			<option value="2인용">2인용</option>
			<option value="2층침대">2층침대</option>
		</select> <br> <br>

		<p>
			욕실 개수 : <input type="text" name="bathroom_cnt">
		</p>
		<br>

		<p>게스트 전용 욕실입니까?</p>
		<p>
			예 : <input type="radio" name="bath_guest_only" value="Y" >
		</p>
		
		<p>
			아니오 : <input type="radio" name="bath_guest_only" value="N" >
		</p>
		<br>


		<p>편의시설</p>
		<p>
			WiFi : <input type="checkbox" name="convenient">
		</p>
		<p>
			TV : <input type="checkbox" name="convenient">
		</p>
		<p>
			수영장 : <input type="checkbox" name="convenient">
		</p>
		<p>
			주차 : <input type="checkbox" name="convenient">
		</p>
		<p>
			부엌 : <input type="checkbox" name="convenient">
		</p>
		<br>


		<p>안전시설</p>
		<p>
			연기감지기 : <input type="checkbox" name="secure">
		</p>
		<p>
			구급상자 : <input type="checkbox" name="secure">
		</p>
		<p>
			소화기 : <input type="checkbox" name="secure">
		</p>
		<p>
			방잠금장치 : <input type="checkbox" name="secure">
		</p>

		<br> <br> 숙소설명 <br>
		<textarea rows="15" cols="90" name="content"></textarea>
		<p>
			숙소설명요약 : <input type="text" name="summary">
		</p>

		<br>

		<p>
			숙소사진 : <input type="file" name="picture">
		</p>

		<br>

		<p>
			<input type="submit" value="등록하기">
		</p>
		<p>
			<input type="reset" value="다시 적기">
		</p>

	</form>

</body>
</html>