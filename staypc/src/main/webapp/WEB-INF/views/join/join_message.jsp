<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE>
<html>
<head>
    <title>join Message</title>
    <script language="javascript">

    </script>
    <style type="text/css">

    </style>
</head>
<body>
<div class="memberMessage" style="margin-left:500px; margin-top:100px; border:solid 1px; border-color:#b2b2b2; width:800px; height:230px;">
	<div class="text" style="margin-left:50px; margin-top:30px;">
    <h1 style="line-height:20px; font-family:맑은 고딕, Malgun Gothic; color:#484848;">요청 완료!</h1>
    <span style="line-height:50px; font-family:맑은 고딕, Malgun Gothic; color:#484848;">${id}님이 등록하신 이메일 주소로 인증 메일을 전송했습니다.</span><br>
    <span style="line-height:15px; font-family:맑은 고딕, Malgun Gothic; color:#484848;">메일에 첨부된 링크를 클릭하시면 회원가입 절차가 완료됩니다.</span><br>    
    <span style="line-height:25px; font-size:13px; font-family:맑은 고딕, Malgun Gothic; color:#A6A6A6;">혹시, 못 받으셨다면 받은 편지함을 확인해보세요.:)</span><br><br>
    <a href="/login/login.do" style="font-family:맑은 고딕, Malgun Gothic;">로그인</a>
    </div>
</div>
</body>
</html>