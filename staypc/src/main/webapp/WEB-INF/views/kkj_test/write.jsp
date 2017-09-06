<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>숙소 호스팅</title>
<script type="text/javascript">
function Check(){
    if(document.form1.title.value==""){
        alert("숙소명을 입력해주세요.");
        form1.title.focus();
        return false;
    }
    
    if(document.form1.location.value==""){
        alert("주소를 입력해주세요.");
        form1.location.focus();
        return false;
    }
    
    if(document.form1.location_detail.value==""){
        alert("상세주소 입력해주세요.");
        form1.location_detail.focus();
        return false;
    }
    
    if(document.form1.check_in_time.value==""){
        alert("입실시간을 입력해주세요.");
        form1.check_in_time.focus();
        return false;
    }
    
    if(document.form1.check_out_time.value==""){
        alert("퇴실시간을 입력해주세요.");
        form1.check_out_time.focus();
        return false;
    }
    
    if(document.form1.res_deadline.value==""){
        alert("예약기한을 입력해주세요.");
        form1.res_deadline.focus();
        return false;
    }
    
    if(isNaN(document.form1.res_deadline.value)){
        alert("예약기한은 숫자로 입력해야 합니다.");
        form1.res_deadline.focuse();
        return false;
    }
    
    
    if(document.form1.charge.value==""){
        alert("숙박료를 입력해주세요.");
        form1.charge.focus();
        return false;
    }
    
    if(isNaN(document.form1.charge.value)){
        alert("숙박료는 숫자로 입력해야 합니다.");
        form1.charge.focuse();
        return false;
    }
    
    if(document.form1.contact.value==""){
        alert("숙소 연락처를 입력해주세요.");
        form1.contact.focus();
        return false;
    }    
    
    if(document.getElementById("r1").checked == false && 
            document.getElementById("r2").checked == false &&
            document.getElementById("r3").checked == false){
        alert("방타입을 체크해주세요.");
        document.getElementById("r1").focus();
        return false;
    }
    

    if(document.getElementById("r4").checked == false && 
            document.getElementById("r5").checked == false &&
            document.getElementById("r6").checked == false){
        alert("건물타입을 체크해주세요.");
        document.getElementById("r4").focus();
        return false;
    }
    
    if(document.getElementById("r7").checked == false && 
            document.getElementById("r8").checked == false){
        alert("게스트 전용숙소 여부를 체크해주세요.");
        document.getElementById("r7").focus();
        return false;
    }
    
    if(document.form1.bedroom_cnt.value==""){
        alert("침실 개수를 입력해주세요.");
        form1.bedroom_cnt.focus();
        return false;
    }
    
    if(isNaN(document.form1.bedroom_cnt.value)){
        alert("침실 개수는 숫자로 입력해야 합니다.");
        form1.bedroom_cnt.focuse();
        return false;
    }
    
    if(document.form1.bed_cnt.value==""){
        alert("침대 개수를 입력해주세요.");
        form1.bed_cnt.focus();
        return false;
    }
    
    if(isNaN(document.form1.bed_cnt.value)){
        alert("침대 개수는 숫자로 입력해야 합니다.");
        form1.bed_cnt.focuse();
        return false;
    }
    
    if(document.form1.bathroom_cnt.value==""){
        alert("욕실 개수를 입력해주세요.");
        form1.bathroom_cnt.focus();
        return false;
    }
    
    if(isNaN(document.form1.bathroom_cnt.value)){
        alert("욕실 개수는 숫자로 입력해야 합니다.");
        form1.bathroom_cnt.focuse();
        return false;
    }
    
    
    
    if(document.getElementById("r9").checked == false && 
            document.getElementById("r10").checked == false){
        alert("게스트 전용욕실 여부를 체크해주세요.");
        document.getElementById("r9").focus();
        return false;
    }
    
    if(document.form1.content.value==""){
        alert("숙소 설명을 입력해주세요.");
        form1.content.focus();
        return false;
    }
    
    if(document.form1.summary.value==""){
        alert("숙소 요약을 입력해주세요.");
        form1.summary.focus();
        return false;
    }
    
    
    if(document.form1.picture.value==""){
        alert("숙소 사진을 등록해주세요.");
        form1.picture.focus();
        return false;
    }


    return true;
}
</script>
</head>
<body>
<form action='<c:url value="/staypc/insert.do"></c:url>' method="post" name="form1">
 
<h1>숙소 호스팅</h1>
 
 
<p>숙소명 : <input type="text" name="title"></p>
<p>주소 : <input type="text" name="location"></p>
<p>상세주소 : <input type="text" name="location_detail"></p>
<p>숙소 입실시간 : <input type="time" name="check_in_time" >&nbsp;숙소 퇴실시간 : <input type="time" name="check_out_time"></p>
숙소 예약기한 : <input type="number" name="res_deadline"> &nbsp;* 몇일전까지 예약가능한지 숫자로 입력하세요. ex) 입실 2일전까지 예약해야하면 2 로 입력

<p>숙박료 : <input type="number" name="charge"></p>
<p>숙소 연락처 : <input type="tel" name="contact"></p>
 
<p>최대 인원수
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
</p>
<br>
<br>
 
<p>방타입</p>
<p>집전체 : <input type="radio" name="room_type" id="r1" value="집전체"></p>
<p>개인실 : <input type="radio" name="room_type" id="r2"></p>
<p>다인실 : <input type="radio" name="room_type" id="r3"></p>
 
<br>
 
<p>건물타입</p>
<p>주택 : <input type="radio" name="building_type" id="r4"></p>
<p>빌딩 : <input type="radio" name="building_type" id="r5"></p>
<p>기타 : <input type="radio" name="building_type" id="r6"></p>
 
 
<br>
 
<p>게스트 전용 숙소입니까?</p>
<p>예 : <input type="radio" name="guest_only" id="r7"></p>
<p>아니오 : <input type="radio" name="guest_only" id="r8"></p>
 
<br>
 
 
<p>침실 총 갯수 : <input type="number" name="bedroom_cnt" ></p>
<p>침대 총 갯수 : <input type="number" name="bed_cnt"></p>
 
 
<br>
<p>침대유형</p>
<select  name="bed_type">
<option>침대없음</option>
<option>1인용</option>
<option>2인용</option>
<option>2층침대</option>
</select>
<br>
<br>
 
<p>욕실 개수 : <input type="number" name="bathroom_cnt"></p>
<br>
 
<p>게스트 전용 욕실입니까?</p>
<p>예 : <input type="radio" name="bath_guest_only" id="r9"></p>
<p>아니오 : <input type="radio" name="bath_guest_only" id="r10"></p>
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