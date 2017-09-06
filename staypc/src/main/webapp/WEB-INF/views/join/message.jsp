<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>message</title>
</head>
<body>
<h1>요청완료</h1>
<div style="width: 700px; height: 700px">
${id}님이 등록하신 이메일 주소로 인증 메일을 전송했습니다.<br>
메일에 첨부된 링크를 클릭 하시면 회원가입 절차가 완료됩니다.<br>
스팸함으로 메일을 전송했으니 스팸함을 꼭 확인해주세요.<br>
혹시, 못 받으셨다면 받은 편지함을 확인해보세요. :)<br>
<a href="/login/login.do">로그인</a>
</div>
</body>
</html>
