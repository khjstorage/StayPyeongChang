<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>답글 쓰기</title>
<link rel="stylesheet" type="text/css" href="http://kenwheeler.github.io/slick/slick/slick.css" />
<link rel="stylesheet" type="text/css" href="http://kenwheeler.github.io/slick/slick/slick-theme.css" />
<script type="text/javascript" src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="http://kenwheeler.github.io/slick/slick/slick.min.js"></script>
<!--  <link href="/resources/css/board.css" rel="stylesheet" type="text/css"/>
<script src="/resources/js/board.js"></script>-->
<style type="text/css">	
#content {
	padding-left: 50px;
	}
</style>
</head>
<body>
<div class="top_con_zone" id="fixNextTag">
	<h1>답글 쓰기</h1>
	<hr>
	<form name="boardform" action='<c:url value="reply.do?lodge_Code=${lodge_Code}"></c:url>' method="post">
	    <input type="hidden" value="${rew.review_num}" name="review_num"/>
	<table style="border:1px;">
		<tr>
			<th colspan="9"></th>
			</tr>
		    <tr>
	 		<td rowspan="2" align="center" width="auto">${rew.review_num }</td>
	 		<td align="center" width="auto">${sessionScope.userId}님의 답글</td>
	 		<td colspan="7"></td>
	 		</tr>
	 		<tr>
	 		<tr>
	 		<td colspan="7"></td>
	 		<td> 
	 		<input type="text" size="27" disabled="disabled" value='<fmt:formatDate value="${rew.reg_date }" pattern="yyyy년MM월dd일"/>' name="reg_date"/></td>	 	
	 		</tr>
	 		<tr>
	 		 <td colspan="9" style="padding-left:30" >
	 		<textarea id="content" rows="20" cols="110" name="content"></textarea></td>
	 	   </tr>

		<tr>
			<td colspan="2" align="right">
				<input type="hidden" value="${rew.parent }"  name="parent">
				<input type="hidden" value="${rew.sort }"  name="sort">
			    <input type="hidden" value="${rew.tab }"  name="tab">
				<input type="submit" value="답글 쓰기" onclick="location.href='reply.do?lodge_Code=${lodge_Code}'">
				<input type="button" value="리스트" onclick="location.href='read.do?lodge_Code=${lodge_Code}'">
				<input type="button" value="취소" onclick="location.href='read.do?lodge_Code=${lodge_Code}'">
			</td>
		</tr>
	</table>
</form>
</div>
</body>
</html>








