<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>호스팅 상세페이지</title>
<script>
        function winOpen() {
            var lodge_code = document.getElementById("lodge_Code").value
            window.open("/payment/module.do?lodge_code=" + lodge_code, "new", "width=700,height=700,top=100,left=100")
        }
    </script>
</head>
<body>
	<div class="top_con_zone">
	    <input name="lodge_Code" type="hidden" value="${vo.lodge_Code}"/>	
	    <div class="main_image">
	        <img height="500px" width="700px" src="/host/displayFile.do?fileName=${vo.main_Image }">
	    </div>
	    <div class="detail_image">
	        <c:forEach var="row" items="${listImg}" varStatus="status">
	               <img height="200px" width="200" src="/host/displayFile.do?fileName=${row.filename}">
	        </c:forEach>
	    </div>
	    
	    <div class="right">
        <h1>주경기장 근거리집을 소개합니다.....</h1>
        집이름(주경기장 근거리집):${vo.title}<br>
        짧은 주소(강원도 평창군 평창리):${vo.location}<br>
        숙소 설명 요약:${vo.room_Explain}<br>
        최대 가능 인원수:${vo.max_People}<br>
        숙소가격(1박):${vo.charge}<br>
        <br>
        호스트 사진${member.picture }<br>
        호스트이름:${member.name }<br>
        호스트 이메일:${member.email}<br>
        숙소 연락처:${vo.room_Phone}<br><br>
    </div>
    
    
    <div class="info">
      <!--  <button><a href="#">위시리스트담기</a></button>&nbsp;
        <button><a onclick="winOpen()">예약하기</a></button><br> 
       --> 

        집이름:${vo.title}<br>
        숙소 정보<br>
        숙소 설명:${vo.room_Explain}<br>
        숙소 긴주소:${vo.location}<br>
        환불 규정:${vo.refund_Provision}<br>
        숙소 입실시간: ${vo.enter_Time}<br>
        숙소 퇴실시간: ${vo.out_Time}<br>
        <fmt:parseDate value='${vo.check_In}' var="check_In" pattern="yyyy-MM-dd HH:mm:ss"/>
        <fmt:parseDate value='${vo.check_Out}' var="check_Out" pattern="yyyy-MM-dd HH:mm:ss"/>
        <fmt:formatDate value='${check_In}' var="checkIn" pattern="yyyy-MM-dd"/>
        <fmt:formatDate value='${check_Out}' var="checkOut" pattern="yyyy-MM-dd"/>
        체크인:${checkIn}<br>
        체크아웃시간:${checkOut}<br>
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
    
    
    <!--후기-->
    <div class="top_con_zone">
        <h1>숙소 후기</h1>
        <hr>
        <table style="border: 0px; width: 1000px;">
            <tr>
                <th colspan="8"></th>
            </tr>
            <tr>
                <td colspan="8" align="right">
                 <input name="lodge_Code" type="hidden" value="${vo.lodge_Code}"/>
                    <a href="insertBoard.do?lodge_Code=${vo.lodge_Code }"/>후기 쓰기</a>
                 </td>
            </tr>
            <c:if test="${ !empty list }">
                <c:forEach items="${ list }">
                    <tr>
                        <td rowspan="3" class="center" width="50">${ vo.review_num }</td>
                        <td rowspan="2">
                            <!--
						<c:if test="${ vo.tab > 0 }">
							<c:forEach begin="1" end="${ vo.tab }">
								&nbsp;&nbsp;
							</c:forEach>
							☞
						</c:if>	-->
                            memberpicture
                        </td>
                        <td class="left">${ vo.name }</td>
                        <td colspan="5"></td>
                    </tr>
                    <tr>
                        <td class="center"><fmt:formatDate value="${ vo.reg_date }" pattern="yyyy년MM월dd일"/></td>
                        <td colspan="5"></td>
                    </tr>
                    <tr class="left">
                        <td colspan="7">
                            <a href="<c:url value="/lodge/reviewread.do?review_num=${vo.review_num }"/>">${ vo.content}</a>
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
                        <c:if test="${ i == pg }"> [ ${ i } ] </c:if>
                        <c:if test="${ i != pg }"> [ <a href="lodge/houseread.do?pg=${ i }">${ i }</a> ]</c:if>
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