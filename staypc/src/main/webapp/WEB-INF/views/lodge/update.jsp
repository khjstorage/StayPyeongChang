<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시글 수정</title>
<script type="text/javascript"></script>
</head>
<body>
	<h1>게시글 수정</h1>
	<hr>
	<form name="boardform" method="post" action='<c:url value="/lodge/update.do?review_num=${rew.review_num}&lodge_Code=${lodge_Code}"></c:url>'>
	  <input type="hidden" value="${rew.review_num}" name="review_num"/>
	 <input type="hidden" value="${lodge_Code}" name="lodge_Code"/>
		<table style="border:0px; width:600px;">
		    <tr>
		    <th colspan="9"></th>
		    </tr>
		    <tr>
	 		<td rowspan="2" align="center" width="auto">${rew.review_num }</td>
	 		<td align="center" width="auto">${sessionScope.userId}</td>
	 		<td colspan="7"></td>
	 		</tr>
	 		<tr>
	 		<td colspan="7"></td>
	 		<td> 
	 		<input type="text" size="27" disabled="disabled" value='<fmt:formatDate value="${rew.reg_date }" pattern="yyyy년MM월dd일"/>' name="reg_date"/></td>	 	
	 		</tr>
	 	   <tr>
	 		 <td colspan="9">
	 		<textarea rows="20" cols="110" name="content">${rew.content}</textarea></td>
	 	   </tr>	 	 
			<tr>
				<td colspan="9" align="right">
					<input type="button" value="리스트" onclick="location.href='read.do?lodge_Code=${lodge_Code}'">
					<input type="button" value="취소" onclick="location.href='read.do?lodge_Code=${lodge_Code}'">
					<input type="submit" value="수정" onclick="location.href='update.do?review_num=${rew.review_num}'">	
								<!--  	<input type="submit" value="글쓰기" onclick="location.href='insertBoard.do?lodge_Code=${lodge_Code}'">						
				<input type="button" value="수정" onclick="location.href=update.do?review_num=${rew.review_num}&lodge_Code=${lodge_Code}'">	-->						
				</td>
			</tr>
		</table>
		</form>	
</body>
</html>




