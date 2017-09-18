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
		체크인/체크아웃시간:${vo.check_In}&nbsp;${vo.check_Out}<br>
	
		숙소 등록일:<fmt:formatDate value="${vo.reg_Date}" pattern="yyyy년MM월dd일"/><br>
		최근 수정일:<fmt:formatDate value="${vo.update_Date}" pattern="yyyy년MM월dd일"/><br>
		건물타입:${vo.bulid_Type}<br>
		방타입:${vo.room_Type}<br>
		침실 개수:${vo.room_Num}<br>
		침대 개수:${vo.bed_Num}<br>
		침대 타입:${vo.bed_Type}<br>
		편의시설: ${vo.convenient}<br>
		안전시설:${vo.secure}<br>
 	
</div>
<div id="main1">

    &nbsp;<h1>숙소  후기</h1>
	<hr>
	<table style="border: 0px; width: 1000px;">
	    <tr>
    	  <th colspan="8"></th>
    	</tr>
         <tr>
			<td colspan="8" align="right">
				<a href="<c:url value="/lodge/insertBoard.do"/>">후기 쓰기</a>
			</td>
		</tr>
		<c:if test="${ !empty list }">
			<c:forEach items="${ list }" var="b">
				<tr>
					<td rowspan="3" class="center" width="50">${ b.review_num }</td>
					<td rowspan="2">
					<!--  
						<c:if test="${ b.tab > 0 }">
							<c:forEach begin="1" end="${ b.tab }">
								&nbsp;&nbsp;
							</c:forEach>
							☞
						</c:if>	-->		
						memberpicture						
						</td>						
						<td class="left">${ b.name }</td>
						<td colspan="5"></td>
				</tr>
				<tr>
						<td class="center"><fmt:formatDate value="${ b.reg_date }" pattern="yyyy년MM월dd일"/></td>
						<td colspan="5"></td>
				</tr>
				<tr class="left">
				<td colspan="7" >
				<a href="<c:url value="/lodge/reviewread.do?review_num=${b.review_num }"/>">${ b.content}</a>
				</td>
				</tr>
			</c:forEach>
		</c:if>
		<c:if test="${ empty list }">
			<tr>
				<td colspan="3" align="center">등록된 게시물이 없습니다.</td>
			</tr>
		</c:if>

	</table>
	<br>
	<table style="border: 0px; width: 1000px;">
		<tr align="center">
			<td>
				<c:if test="${ pg > block }">
					[ <a href="lodge/houseread.do?pg=1">◀◀</a> ]
					[ <a href="lodge/houseread.do?pg=${ beginPage - 1 }">◀</a> ]
				</c:if>
				<c:if test="${ pg <= block }">
					[ <span style="color: gray;">◀◀</span> ]
					[ <span style="color: gray;">◀</span> ]
				</c:if>
				<c:forEach var="i" begin="${ beginPage }" end="${ endPage }">
					<c:if test="${ i == pg }" > [ ${ i } ] </c:if>
					<c:if test="${ i != pg }" > [ <a href="lodge/houseread.do?pg=${ i }">${ i }</a> ]</c:if>
				</c:forEach>
				<c:if test="${ endPage < allPage }">
					[ <a href="lodge/houseread.do?pg=${ endPage + 1 }">▶</a> ]
					[ <a href="lodge/houseread.do?pg=${ allPage }">▶▶</a> ]
				</c:if>
				<c:if test="${ endPage >= allPage }">
					[ <span style="color: gray;">▶</span> ]
					[ <span style="color: gray;">▶▶</span> ]
				</c:if>
			</td>
		</tr>
	</table>
</div>
</div>
</body>
</html>