<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE>
<html>
<head>
    <title>login</title>
<script src="../script/board.js" type="text/javascript"></script>
<link href="../css/board.css" rel="stylesheet" type="text/css">
    <script language="javascript">
 
    </script>
    <link rel="stylesheet" type="text/css" href="http://kenwheeler.github.io/slick/slick/slick.css" />
    <link rel="stylesheet" type="text/css" href="http://kenwheeler.github.io/slick/slick/slick-theme.css" />
    <script type="text/javascript" src="//code.jquery.com/jquery-1.11.0.min.js"></script>
    <script type="text/javascript" src="http://kenwheeler.github.io/slick/slick/slick.min.js"></script>
    <style type="text/css">

    </style>
</head>
<body>
<div class="top_con_zone" id="fixNextTag">
<h1>후기 작성</h1>
<hr>
  <input name="lodge_Code" type="hidden" value="${rew.lodge_Code}" id="lodge_Code"/>
<form name="boardform" action='<c:url value="insertBoard.do?lodge_Code=${lodge_Code}"></c:url>' method="post">   

       <!--  '<c:url value="insertBoard.do?lodge_Code=${lodge_Code }"></c:url>' method="post">   
             <input name="lodge_Code" type="hidden" value="${vo.lodge_Code}" id="lodge_Code"/>
                    <a href="insertBoard.do?lodge_Code=${vo.lodge_Code }"/>후기 쓰기</a>--> 
	<table style="border:0px;">
		<tr>
		  <td>${rew.picture }</td>
		  <td>아이디${sessionScope.userId}</td>
		  <td>로지코드${lodge_Code }</td>
		 </tr>
		 <tr>
		   <td colspan="3">
		   	 <textarea rows="20" cols="80" name="content"></textarea>
		   	 </td>
		 </tr>
		 <tr>
		   <td align="right" colspan="3">
		    평점 (1~5사이의 정수)
		     <input name='grade' type="text" size="auto">           
		 </tr>
		  <tr>
		   <td align="right" colspan="3">
		   <!--  
		    로지코드
		     <input name='lodge_code' type="text" value='${vo.lodge_code}' size="auto">  
		     -->  
		 </tr>
		<tr>
			<td colspan="2" align="right">
				<input type="submit" value="글쓰기" onclick="location.href='insertBoard.do?lodge_Code=${lodge_Code}'">
				<input type="button" value="리스트"  onclick="location.href='read.do?lodge_Code=${lodge_Code}'">
				<input type="button" value="취소" onclick="board_cancle()">
			</td>
		</tr>
	</table>
</form>
</div>
</body>
</html>



