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
<style>
.reviewread {
	font-size: 16px;
	color: #494d4d;
	margin-left: 60px;
	margin-right: 1000px;
	text-align:justify
	line-height: 1.8em;
	vertical-align: middle;
}
 img{
    width: 100px;
	height:100px;
	background-size: cover;
	display: block;
	border-radius: 60px;
	-webkit-border-radius: 60px;
	-moz-border-radius: 60px;	
}


</style>
</head>
<body>
	 <font size="4.5px" font-weight="bold" color="#494d4d"><h1> &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;후기글 상세</h1></font>
	<hr>
	<table class="reviewread">	
	 	<tr>
	 		<td width="auto">
	 		<img align="left" src="<c:url value='/resources/profile_photo/${host.picture}'/>" />&nbsp;&nbsp;${rew.id } &nbsp;
	 		<fmt:formatDate value="${rew.reg_date }" pattern="yyyy년MM월dd일"/></td>
	 		<td width="auto" align="left" bgcolor="#F3EDFC">${rew.content}</td>
	 		</tr>
	 	
	 	<tr>
	 		<td colspan="2" align="right">
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









