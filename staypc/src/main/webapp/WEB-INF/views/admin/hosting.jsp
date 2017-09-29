<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>호스팅 조회</title>
</head>

<style>
.common_wrapper{
 width:1100px;
 height:300px;
 margin:0 auto;
 margin-top:30px; 
 border:1px solid #ff0000;
 }
</style>
<body>

<div class="common_wrapper"><!-- 공통 레이아웃 시작 -->
<table style="width:1000px;;">
	<tr>
		<th>호스팅코드</th>
		<th>호스팅아이디</th>
		<th>호스팅제목</th>
		<th>방 이름</th>
		<th>가격</th>
		<th>연락처</th>
	</tr>
	<c:forEach items="${hosting_list}" var="list">
		<tr>
			<td style="width:20px;">
				${list.lodge_Code }
			</td>
			<td style="width:20px;">
				${list.id}
			</td>
			<td style="width:50px;">
				${list.title}
			</td>
			<td style="width:50px;">
				<a href="hosting_view.do?room_name=${list.room_Name }">
					${list.room_Name}
				</a>
			</td>
			<td style="width:30px;">
				${list.charge}
			</td>
			<td style="width:80px;">
				${list.room_Phone}
			</td>
		</tr>
	</c:forEach>
</table>

  <table style="align-content: center" width="800px">
			<td colspan="3" align="center">
			<!-- 처음 페이지 이동 -->
			<c:if test="${ap.curBlock > 1}">
				<a href="hosting.do?curPage=1">[처음]</a>
			</c:if>
			
			<!-- 이전 페이지 이동 -->
			<c:if test="${ap.curBlock > 1 }">
				<a href="hosting.do?curPage=${ap.prevPage }">[이전]</a>
			</c:if>
			
			<!-- 한 블럭에 표현될 페이지 번호 출력 -->
			<c:forEach var="num" begin="${ap.blockBegin }" end="${ap.blockEnd }">
				<c:choose>
					<c:when test="${num == ap.curPage }">
						<span style="color:red">${num }</span>&nbsp;
					</c:when>
					<c:otherwise>
						<a href="hosting.do?curPage=${num }">${num }</a>&nbsp;
					</c:otherwise>
				</c:choose>
			</c:forEach>
			
			<!-- 다음 페이지 이동 -->
			<c:if test="${ap.curBlock<=ap.totBlock}">
				<a href="hosting.do?curPage=${ap.nextPage }">[다음]</a>
			</c:if>
			
			<!-- 맨 마지막 페이지 이동 -->
			<c:if test="${ap.curPage <= ap.totPage }">
				<a href="hosting.do?curPage=${ap.totPage }">[끝]</a>
			</c:if>
			
			</td>		
	</table>
</div>
</body>
</html>