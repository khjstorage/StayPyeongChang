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
    
    <link href="/resources/css/host.css" rel="stylesheet" type="text/css"/>

    <style>
        .fileDrop {
            width: 100%;
            height: 200px;
            border: 1px dotted blue;
            background-color: lightslategray;
            margin: auto;
        }

        small {
            margin-left: 3px;
            font-weight: bold;
            color: gray;
        }
        
        td{
        padding:5px;
        }
    </style>

    <script>
        $(document).ready(function () {
            $('#enter_Time').timepicker();
            $('#out_Time').timepicker();

            $.datepicker.regional['ko'] = {
                closeText: '닫기',
                prevText: '이전달',
                nextText: '다음달',
                currentText: '오늘',
                weekHeader: 'Wk',
                dateFormat: 'yy-mm-dd',
                firstDay: 0,
                isRTL: false,
                showMonthAfterYear: true,
                yearSuffix: '',
                changeMonth: true,
                changeYear: true,
                showButtonPanel: true,
                yearRange: 'c-99:c+99',
            };
            $.datepicker.setDefaults($.datepicker.regional['ko']);

            $('#check_In').datepicker();
            $('#check_In').datepicker("option", "maxDate", $("#check_Out").val());
            $('#check_In').datepicker("option", "onClose", function (selectedDate) {
                $("#check_Out").datepicker("option", "minDate", selectedDate);
            });

            $('#check_Out').datepicker();
            $('#check_Out').datepicker("option", "minDate", $("#check_In").val());
            $('#check_Out').datepicker("option", "onClose", function (selectedDate) {
                $("#check_In").datepicker("option", "maxDate", selectedDate);
            });
        });
    </script>

</head>
<body>
<div class="hostingPage">
    <div class="common_wrapper">    
    <span style="font-size:23px; margin-left:20%">숙소 호스팅</span><br><br>   
		<div class="write">		
			<table class="writeDetail">
				<tr style="margin-bottom:10px;">
					<td>
						제목&nbsp;
					</td>					
					<td colspan="3">
						<input type="text" name="title" id="title">
					</td>
				</tr>				
				
				<tr>
					<td>
						숙소명&nbsp;
					</td>
					<td colspan="3">
						<input type="text" name="room_Name">
					</td>
				</tr>
				<tr>
					<td>
						주소&nbsp;
					</td>
					<td colspan="3">
						<input type="text" name="location">
					</td>
				</tr>
				<tr>
					<td>
						입실시간&nbsp;
					</td>
					<td>
						<input type="text" name="enter_Time" id="enter_Time">
					</td>
					<td>
						&nbsp;&nbsp;퇴실시간&nbsp;
					</td>
					<td>
						<input type="text" name="out_Time" id="out_Time">
					</td>
				</tr>
				<tr>
					<td>
						판매날짜&nbsp;
					</td>
					<td>
						<input type="text" name="check_In" id="check_In">
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ~ 
					</td>
					<td>
						<input type="text" name="check_Out" id="check_Out">
					</td>
				</tr>
				<tr>
					<td>
						숙소 예약기한&nbsp;
					</td>
					<td colspan="3" style="line-height:20px;">
						<input type="text" name="res_deadline"><br>
						* 며칠 전까지 예약가능한지 숫자로 입력하세요.<br>&nbsp;&nbsp;&nbsp;&nbsp;ex) 입실 2일전까지 예약해야하면 '2' 로입력
					</td>
				</tr>
				<tr>
					<td>
						숙박료&nbsp;
					</td>
					<td>
						<input type="text" name="charge">
					</td>
					<td>
						숙소 연락처&nbsp;
					</td>
					<td>
						<input type="text" name="room_Phone">
					</td>
				</tr>
				<tr>
					
					<td>
						숙소 연락처&nbsp;
					</td>
					<td colspan="3">
						<input type="text" name="room_Phone">
					</td>
				</tr>
				<tr>
					<td>
						최대 인원수&nbsp;
					</td>
					<td colspan="3">
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
					</td>
				</tr>
				<tr>
					<td>
						건물타입&nbsp;
					</td>
					<td colspan="3">
						주택 : <input type="radio" name="bulid_Type" value="주택">&nbsp;&nbsp;
						빌딩 : <input type="radio" name="bulid_Type" value="빌딩">&nbsp;&nbsp;
						기타 : <input type="radio" name="bulid_Type" value="기타">
					</td>
				</tr>
				<tr>
					<td>
						방타입&nbsp;
					</td>
					<td colspan="3">
						집전체: <input type="radio" name="room_Type" value="집전체">&nbsp;&nbsp;
			          	개인실: <input type="radio" name="room_Type" value="개인실">&nbsp;&nbsp;
			          	다인실: <input type="radio" name="room_Type" value="다인실">
					</td>
				</tr>
				<tr>
					<td>
						침대유형&nbsp;
					</td>
					<td colspan="3">
						<select name="bed_Type">
			                <option value="침대없음">침대없음</option>
			                <option value="1인용">1인용</option>
			                <option value="2인용">2인용</option>
			                <option value="2층침대">2층침대</option>
			            </select>
			        </td>
				</tr>
				<tr>
					<td>
						침실 개수&nbsp;
					</td>
					<td>
						<input type="text" name="room_Num">
					</td>
					<td>
						침대 개수&nbsp;
					</td>
					<td>
						<input type="text" name="bed_Num">
					</td>
				</tr>
				<tr>
					<td>
						편의시설&nbsp;
					</td>
					<td colspan="3">
						WiFi : <input type="checkbox" name="convenient" value="wifi">&nbsp;&nbsp;
			            TV : <input type="checkbox" name="convenient" value="tv">&nbsp;&nbsp;
			           	수영장 : <input type="checkbox" name="convenient" value="수영장">&nbsp;&nbsp;
			          	주차 : <input type="checkbox" name="convenient" value="주차">&nbsp;&nbsp;
			           	부엌 : <input type="checkbox" name="convenient" value="부엌">
					</td>
				</tr>				
				<tr>
					<td>
						안전시설&nbsp;
					</td>
					<td colspan="3">
						연기감지기 : <input type="checkbox" name="secure" value="연기감지기">
			           	구급상자 : <input type="checkbox" name="secure" value="구급상자">
			           	소화기 : <input type="checkbox" name="secure" value="소화기">
			           	방잠금장치 : <input type="checkbox" name="secure" value="방잠금장치">
					</td>
				</tr>
				<tr>
					<td colspan="4">
						숙소설명&nbsp;
					</td>
				</tr>
				<tr>
					<td colspan="4">
						<textarea style="width:100%; height:200px;" name="room_Explain"></textarea>
					</td>
				</tr>
				<tr>
					<td colspan="4">
						환불규정&nbsp;
					</td>
				</tr>
				<tr>
					<td colspan="4">
						<textarea style="width:100%; height:200px;" name="refund_Provision"></textarea>
					</td>
				</tr>				
				<tr>
					<td colspan="4">
						숙소사진 업로드&nbsp;
					</td>
				</tr>
				<tr>
					<td colspan="4" class="fileDrop">이곳에 사진을 올려주세요</td>
				</tr>					
				<tr>
					<td colspan="4" class="uploadedList"></td>
				</tr>
				<tr>
					<td colspan="4">
						<button type="submit" id="btnSave" style="float:right; width:200px; height:40px; font-size:16px; background-color:#474747; color:#ffffff;">숙소등록</button>
					</td>
				</tr>				
			</table>
 <!--
        <div>
           제목 : <input type="text" name="title" id="title"> <br>
            숙소명 : <input type="text" name="room_Name"> <br>  
            주소 : <input type="text" name="location"> <br>
            숙소 입실시간 : <input type="text" name="e`nter_Time" id="enter_Time"> &nbsp; 숙소 퇴실시간 : <input type="text" name="out_Time" id="out_Time"> <br>
            판매날짜 : <input type="text" name="check_In" id="check_In"> ~ <input type="text" name="check_Out" id="check_Out"> <br>
            숙소 예약기한 : <input type="text" name="res_deadline"> &nbsp;* 몇일전까지 예약가능한지 숫자로 입력하세요. ex) 입실 2일전까지
            예약해야하면 2 로입력 <br>
            숙박료 : <input type="text" name="charge"> <br>
            숙소 연락처 : <input type="text" name="room_Phone"> <br>
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
            <b>건물타입</b>
            주택: <input type="radio" name="bulid_Type" value="주택">
            빌딩: <input type="radio" name="bulid_Type" value="빌딩">
            기타: <input type="radio" name="bulid_Type" value="기타">
            <br>
        </div>

        <div>
            <b>방타입</b>
            집전체: <input type="radio" name="room_Type" value="집전체">
            개인실: <input type="radio" name="room_Type" value="개인실">
            다인실: <input type="radio" name="room_Type" value="다인실">
            <br>
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
            침실 총 갯수 : <input type="text" name="room_Num">
            침대 총 갯수 : <input type="text" name="bed_Num">
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
            숙소설명 <br> <textarea rows="15" cols="90" name="room_Explain"></textarea><br>

        <div>
            환불규정 <br> <textarea rows="15" cols="90" name="refund_Provision"></textarea><br>
        </div>
        <h3>숙소 사진 업로드</h3>
        <div class="fileDrop">이곳에 사진을 올려주세요</div>        </div>

        <div class="uploadedList"></div>
        <button type="submit" id="btnSave">숙소등록</button>
        -->
        </div>
    </div>
</div>
<script src="/resources/js/upload.js"></script>
</body>
</html>