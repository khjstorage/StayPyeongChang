<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <title>houseread화면</title>
    
    <style>
        <script language="javascript">
        </script>
    <style type="text/css">
   body {
  flex: 1;
  display: flex;
  background-color: #699EBD;
}
	#left{
	     margin: 0px auto;;
	     background: #ffcc99;
	     float: left;
	     width:700px;
	     height:500px;
	}
	
	#right {
		 margin: 50px;
  		 height:500px;
}
	
    #main1{
        margin: 100px; 
       height:300px;
       }
   
    #main2{
        margin:  100px;  
       height: 200px;
       }

    </style>
</head>
<body>
<div class="top_con_zone" id="fixNextTag">
  <input name="lodge_Code" type="hidden" value="" />
  <div id="left">
  <!--  <img height="500px" width="700px" src="<c:url value='/resources/picture/${row.image }'/>" />-->
    <img height="500px" width="700px" src="/host/displayFile.do?fileName=/lodgeImage/2017/09/13/s_8c55b5d9-c8e4-4476-af76-42b79fdfc7e5_Desert.jpg">
  </div>
  <DIV ID="right">
      <h1>주경기장 근거리집을 소개합니다.....</h1>
	        집이름(주경기장 근거리집):${vo.title}<br>
                 짧은 주소(강원도 평창군 평창리):${vo.location}<br>
	        숙소 설명 요약:${vo.room_Explain}<br>
	        최대 가능 인원수:${vo.max_People}<br>
	        숙소가격(1박):${vo.charge}<br> 
       <br>
	         호스트 사진${member.picture }&nbsp;
		<a href="logout.do">호스트이름:${member.name }<br>}</a>&nbsp;
		호스트 이메일:${member.email}<br>
		숙소 연락처:"${vo.room_Phone}<br>		
</div>

<div id="main2">

       <button style="height:40px;width:100px;font-size:9pt;color:white;background-color:orange;"><a href="logout.do">위시리스트  담기</a></button>&nbsp;
       <button color="orange"><a href="logout.do">예약하기</a></button>&nbsp;
       <button color="orange"><a href="logout.do">LOG-OUT</a></button>

				
		집이름(주경기장 근거리집):${vo.title}<br><br><br>
		숙소 정보<br>
		숙소 설명:${vo.room_Explain}<br>
		숙소 긴주소:${vo.location}<br>
		환불 규정:${vo.refund_Provision}<br>
		숙소 입실시간:${vo.enter_Time}&nbsp;숙소 퇴실시간${vo.out_Time}<br>
		숙소 등록일:${vo.reg_Date}<br>
		최근 수정일:${vo.update_Date}<br>
		건물타입:${vo.bulid_Type}<br>
		방타입:${vo.room_Type}<br>
		침실 개수:${vo.room_Num}<br>
		침대 개수:${vo.bed_Num}<br>
		침대 타입:${vo.bed_Type}<br>
		편의시설: ${vo.convenient}<br>
		안전시설:${vo.secure}<br>
	
</div>

  <form action="/lodge/read.do" method="post">
</form>
</div>
</body>
</html>