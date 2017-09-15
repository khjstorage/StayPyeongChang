<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE>
<html>
<head>
<title>공지사항 상세</title>
<link href="/resources/css/notice_view.css" rel="stylesheet" type="text/css">
<link href="css/notice_view.css" rel="stylesheet" type="text/css">
<script>
function test(idMyDiv){
     var objDiv = document.getElementById(idMyDiv);
     if(objDiv.style.display=="none"){ objDiv.style.display = "block"; }
      else{ objDiv.style.display = "none"; }
}
</script>
</head>
<body>
<div class="noticeView" id="fixNextTag">
<form method="post" id="noticeForm" enctype="multipart/form-data">

 <div class="sidemenu">
  <ul>
    <li style="margin-top:40px;"><a href="#">공지사항</a></li>
    <br>
    <li style="margin-top:10px;"><a href="#">도움말</a></li>              
  </ul>
 </div>
 
 <div class="notice">
 	<h2>공지사항</h2>
 	<br>
 	
 	<br>
 	<div class="content">
 	<div class="contentB">
 	<div class="subject">
 	<span style="font-size:18px;"><b>${board.subject} 제목</b></span>
 	</div>
 	
 	<hr>
 	
 	<div class="writerNdate">
 		<span id="writer">등록자 : ${board.writer}관리자</span> 	
 		<span>&nbsp;|&nbsp;<span>
 		<span id="date">등록일 : ${board.register_datetime}2017-01-01</span>
 	</div> 	
 	
 	<br><br>
 	 	
 	<div class="noticeDetail">
 	<span>${board.content} 내용입니다 내용애아얼아ㅣ러마아러ㅣㅏㄴㄹ머랑ㅁ노리ㅏㅁㅇ뇌류치ㅕㄷ무라ㅗ파ㅑㅣㅣ너룿ㅍㅎㄷ랴ㅗㅈㄷ라ㅓㄴ이ㅑㅓㅐㅑㅓㅗ가나다라마바사아ㅏ아아아아아아ㅏ아아아ㅏ안머라ㅣㅇㅁ너아ㅣ러ㅜㅌ차ㅣㅜㄹd어쩌구저쩌구 이거슨 내용입니다.. .낭ㅇ냐라아어나두랴이나ㅜㅜ</span>
 	<br><br>	 	
 	</div>
 	
 	<div class="btn">
	 <input type="submit" id="update" value="수정" id="update"> 		
	 <input type="button" id="drop" value="삭제">
	 <input type="submit" id="list" value="목록">
	</div>
 	</div> 	 	
 	</div>
 </div>
</form>
</div>
</body>
</html>