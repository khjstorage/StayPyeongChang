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


.profile {
	font-size: 16px;
	color: #494d4d;
	margin-left: 60px;
	margin-right: 1000px;
	text-align:justify;
	line-height: 1.5em;
	vertical-align: middle;
}
.reviewread tr {border: 1px 
			border-style: ridge;
			border-color: #494d4d;}


.reviewread {
	font-size: 18px;
	color: #494d4d;
	margin-left: 60px;
	margin-right: 1000px;
	text-align:justify
	line-height: 2.2em;
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
	 <!--  <font size="4.5px" font-weight="bold" color="#494d4d"><h1> &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;후기글 상세</h1></font>-->

	<table class="reviewread">	
	<br>
	 	<tr class="reviewbox" >
	 		<td class="profile" width="17%">
	 		<img align="center" src="<c:url value='/resources/profile_photo/${host.picture}'/>" />${rew.id }님의 글
	 		<br> &nbsp;<font size="2.0px" ><fmt:formatDate value="${rew.reg_date }" pattern="yyyy년MM월dd일"/></font></td>
	 		<td width="auto" align="left" bgcolor="#FFF5EE" style="line-height:1.2em" >${rew.content}</td>
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









