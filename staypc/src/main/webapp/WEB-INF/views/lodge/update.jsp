<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시글 수정</title>
<link href="/resources/css/board.css" rel="stylesheet" type="text/css"/>
<script type="text/javascript">

$(document).ready(function(){
	$("#updateBtn").on("click", function(){
		$("#form1").attr("action", "update.do");
		$("#form1").submit();
	});
});

</script>
</head>
<body>
	<h1>게시글 수정</h1>
	<hr>
	<form name="boardform" id="form1" method="post">
		<table style="border:0px; width:600px;">
		    <tr>
		    <th colspan="9"></th>
		    </tr>
		    <tr>
	 		<td rowspan="2" align="center" width="auto">${vo.review_num }</td>
	 		<td align="center" width="auto">${sessionScope.userId}</td>
	 		<td colspan="7"></td>
	 		</tr>
	 		<tr>
	 		<td align="center" width="auto">
	 		<input type="text" size="27" disabled="disabled" value='<fmt:formatDate value="${vo.reg_date }" pattern="yyyy년MM월dd일"/>' name="reg_date"></td>
	 		<td colspan="8"></td>
	 		</tr>
	 	   <tr>
	 		 <td colspan="9">
	 		<textarea rows="20" cols="110" name="content">${vo.content}</textarea></td>
	 		<!-- <c:out value="${vo.content}" escapeXml="false"/> -->
	 	   </tr>
	 	   <input type="hidden" value="${vo.review_num}" name="review_num">
			<tr>
				<td colspan="9" align="right">
					<!--  <input type="hidden" name="no" value="${vo.review_num }">-->
					<input type="button" value="리스트" onclick="location.href='boardList.do'">
					<input type="button" value="취소" onclick="location.href='boardList.do'">
					<input type="button" value="수정" id ="updateBtn" >					
							<!--	<input type="button" value="수정" onclick="board_update_check()">
		 document.location.href="delete.do?review_num=${vo.review_num}&parent=${vo.parent}&sort=${vo.sort}"		  -->	
					
				</td>
			</tr>
		</table>
		</form>	
</body>
</html>




