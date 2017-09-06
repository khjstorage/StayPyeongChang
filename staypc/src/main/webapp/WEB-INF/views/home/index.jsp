<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>stay_main</title>
<!-- jQuery library (served from Google) -->
				<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
				<!-- bxSlider Javascript file -->
				<script src="script/jquery.bxslider.min.js"></script>
				<!-- bxSlider CSS file -->
				<link href="css/jquery.bxslider.css" rel="stylesheet" />
				
<link href="css/style.css" rel="stylesheet" type="text/css"/>
<script>
				$(document).ready(function(){
					$('.bxslider').bxSlider({
						mode:'horizontal',
						
						auto:true,
						controls:false
					  });  
				});
				</script>
				



</head>

<body>



	<!-- 
	<center>
	<a href='<c:url value="/board/boardList.do"/>'>답변형 게시판</a>
	</center> -->
	
	
<div id="main">

<!--TITLE_BX_SLIDER -->
<div>
<ul class="bxslider">
  		<li><img src="image/bxtest02.png" width="1920" height="700"/></li>
  		<li><img src="image/bxtest01.png" width="1920" height="700"/></li>
  </ul>
</div>


<!--숙박정보  -->
<div id="info">

 <table>
  <tbody>
    <tr>
      <td>&nbsp;<img src="image/info.png" width="130" height="30" alt="" /> </td>               
    </tr>
  </tbody>
</table>
</div>


<!-- 여기서부터 슬기가  -->
<!-- 검색바 (위치, 날짜, 인원) -->
<table  id="search"> 
 <!--
  <tbody>
  
 	 <tr>
      <td>&nbsp;</td>
     <td> <img src="../icon/search.png" width="30" height="30" alt=""/></td>
		<td><input type="text" placeholder="위치"></input></td>
      
      <td>&nbsp;<p>날짜 <input type="text" id="datepicker"></p></td>
      <td>&nbsp;
			<select>
		  		<option selected="selected" disabled="disabled">인원</option>
				<option value="1">1인</option>
				<option value="2">2인</option>
				<option value="3">3인</option>
				<option value="4">4인</option>
				<option value="5">5인</option>
				<option value="6">6인</option>
				<option value="7">7인</option>
				<option value="8">8인</option>
				<option value="9">9인</option>
				<option value="10">10인</option>
		  </select>
     </td>
      <td>&nbsp;4</td>
    </tr>
  </tbody>  -->
	</table>


<!-- 숙소 썸네일, 전체보기
<div id="imglayout">
   <img src="image/imglayout.png" width="1388" height="800" alt=""/> 
   
  <table id="whole_view">
  	<tr>
  		<td>&nbsp;<a href="#">전체보기</a></td> 
  	</tr>
  </table>
</div> 

 여기까지 슬기가  -->



<div id="image_layout">
	<div id="image_box">
		
	</div>
	
	<div id="image_box">
		
	</div>
	
	<div id="image_box">
		
	</div>
	
</div>









<!--동영상재생 / 경기일정  -->
<div id="section4">
	<table>
		<tr>
			<td>
 				<iframe width="694" height="500" src="https://www.youtube.com/embed/ZgDvhixeQg0"
  					frameborder="0" ></iframe></td>
 			<td>	<img src="image/schedule.png" ></td>
 			
 		</tr>
 	</table>
</div>  

</div>
	
</body>
</html>