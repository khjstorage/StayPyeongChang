<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>후기글 상세</title>
<!--  <link href="/resources/css/board.css" rel="stylesheet" type="text/css"/>-->
<link rel="stylesheet" type="text/css" href="http://kenwheeler.github.io/slick/slick/slick.css" />
<link rel="stylesheet" type="text/css" href="http://kenwheeler.github.io/slick/slick/slick-theme.css" />
<script type="text/javascript" src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="http://kenwheeler.github.io/slick/slick/slick.min.js"></script>
<script type="text/javascript">
function board_delete(boardform){
	if (confirm("정말 삭제하시겠습니까??") == true){    //확인
		document.location.href="delete.do?review_num=${rew.review_num}&lodge_Code=${lodge_Code}&parent=${rew.parent}&sort=${rew.sort}";
	}else{   //취소
	    return;
	}
}
</script>
</head>
<body>
	<h1>후기글 상세</h1>
	<hr>
	<table style="border:0px; width:600px;">
	 	<tr>
	 		<th rowspan="2" align="center" width="auto">${rew.review_num }</th>
	 		<th align="center" width="auto">${rew.id }</th><th colspan="7"></th>
	 		</tr>
	 		<tr>
	 		<th align="center" width="auto"><fmt:formatDate value="${rew.reg_date }" pattern="yyyy년MM월dd일"/> </th>
	 		<th colspan="8"></th>
	 		</tr>
	 	<tr>
	 		<td colspan="9">${rew.content}</td>
	 	</tr>
	 	<tr>
	 		<td colspan="9" align="right">
	 			<input type="button" value="리스트" onclick="location.href='read.do?lodge_Code=${lodge_Code}'">
	 				<!-- 글쓴이만 수정과 삭제 버튼 활성화 -->
	 		    <c:if test="${sessionScope.userId == rew.id}">   
	 				<input type="button" value="삭 제" onclick="board_delete()">
	 				<input type="button" value="수정 하기" onclick="location.href='update.do?review_num=${rew.review_num}&lodge_Code=${lodge_Code}'">
	 			</c:if>	 		
	 			<!-- 로그인한 사용자만 답글쓰기 버튼을 활성화 -->
	 		    <c:if test="${sessionScope.userId != null}">   
	 				<input type="button" value="답글 쓰기" onclick="location.href='reply.do?review_num=${rew.review_num}&lodge_Code=${lodge_Code}'">
	 	       	</c:if>
	 		</td>
	 	</tr>
	</table>
</body>
</html>









