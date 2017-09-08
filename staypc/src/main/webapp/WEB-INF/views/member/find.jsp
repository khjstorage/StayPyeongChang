<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>find</title>
    <script src="/resources/js/jquery-3.2.1.min.js" type="text/javascript"></script>
</head>
<body>
<div class="findAccount" style="border:solid 1px; border-color:#b2b2b2; width:500px; height:100%; margin-left:750px; margin-top:50px; margin-bottom:50px;">
    <form action="/member/find.do" method="post">
    <div class="findAccount_header"
			style="margin-top:0px; background-color:#d0d0d0; font-family:맑은 고딕, Malgun Gothic; color:#484848; padding:10px;">
			계정 찾기
	</div>
	<div class="findMessage" style="padding:15px;">
        <span style="font-family:맑은 고딕, Malgun Gothic; color:#484848; font-size:25px;">이메일 주소를 입력해 주세요.</span><br><br>
        <span style="font-family:맑은 고딕, Malgun Gothic; color:#484848; line-height:15px; font-size:15px;">회원 가입시 입력하신 이메일 주소를 입력하시면,</span><br>
        <span style="font-family:맑은 고딕, Malgun Gothic; color:#484848; line-height:15px; font-size:15px;">해당 이메일로 아이디 및 임시비밀번호를 보내드립니다.</span><br><br>
        <input type="email" name="email" id="email" placeholder="이메일 주소">
        <input type="submit" id="find" value="계정찾기" style="font-family:맑은 고딕, Malgun Gothic;">
    
    </form>
    
    <div class="warningMessage" style="font-family:맑은 고딕, Malgun Gothic; color:#484848;">
        <c:if test="${msg=='nonexistent'}">
            <div class="alert-danger">
          		<span style="color:darkred">가입된 이메일이 없습니다.</span>
            </div>
        </c:if>
       <c:if test="${msg=='nonVerify_email'}">
       		
            <div class="alert-danger" style="font-family:맑은 고딕, Malgun Gothic; color:#484848; line-height:18px;">
	          <span style="color:darkred">이미 가입된 이메일 주소입니다만 아직 승인 되지 않았습니다.</span><br>
	                승인메일을 재발송하고 싶으시면 아래 링크를 클릭해주세요<br><br>
               <a href="/join/mail.do?email=${email}">인증메일 다시 발송하기</a>
            </div>
        </c:if> 
    </div>
    </div>
</div>
</body>
</html>
