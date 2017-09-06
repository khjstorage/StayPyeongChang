
<html>
<head>
    <title>find</title>
    <script src="/resources/js/jquery-3.2.1.min.js" type="text/javascript"></script>
</head>
<body>
<div>
    <form action="/member/find.do" method="post">
        <h1>계정 찾기</h1>
        <h2>이메일 주소를 입력해 주세요.</h2>
        회원 가입시 입력하신 이메일 주소를 입력하시면,<br>
        해당 이메일로 아이디 및 임시비밀번호를 보내드립니다.<br>
        <input type="email" name="email" id="email" placeholder="이메일 주소">
        <input type="submit" id="find" value="계정찾기">
    </form>
    <div>
        <c:if test="${msg=='nonexistent'}">
            <div class="alert-danger">
                가입된 이메일이 없습니다.
            </div>
        </c:if>
        <c:if test="${msg=='nonVerify_email'}">
            <div class="alert-danger">
                이미 가입된 이메일 주소입니다만 아직 승인 되지 않았습니다.<br>
                승인메일을 재발송하고 싶으시면 아래 링크를 클릭해주세요<br>
                <a href="/join/mail.do?email=${email}">인증메일 다시 발송하기</a>
            </div>
        </c:if>
    </div>
</div>
</body>
</html>
