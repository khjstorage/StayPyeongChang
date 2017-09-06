<html>
<head>
    <title>login</title>
    <script language="javascript">
    $(document).ready(function() {
        $("#find").on("click", function (e) {
            e.preventDefault();
            location.href = "/member/find.do";
        });
        $("#join").on("click", function (e) {
            e.preventDefault();
            location.href = "/join/joinMembership.do";
        });
    });
    </script>
</head>
<body>
<h1>회원로그인</h1>

<form action="/login/login.do" method="post">
아이디 : <input type="text" name="id" id="id"> <br>
비밀번호 : <input type="password" name="password" id="password"> <br>
    <input type="submit" value="로그인">
    <button id="find">계정찾기</button>
    <button id="join">회원가입</button>
</form>

<div>
    <c:if test="${msg=='failure'}">
        <div style="color:red">
            아이디 또는 비밀번호를 다시 확인하세요.
            평창스테이에 등록되지 않은 아이디이거나, 아이디 또는 비밀번호를 잘못 입력하셨습니다.
        </div>
    </c:if>
</div>

</body>
</html>
