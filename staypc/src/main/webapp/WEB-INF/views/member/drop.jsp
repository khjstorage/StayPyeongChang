
<html>
<head>
    <title>Title</title>
    <script src="/resources/js/jquery-3.2.1.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function(){
           $("#drop").on("click", function (e) {
               $.ajax({
                   type: "get",
                   url: "/member/dropcheck.do",
                   data: {"password": $("#password").val()},
                   success: function (data) {
                       console.log(data);
                        if(data.password==$("#password").val()){
                            var enter = prompt('스테이평창 탈퇴하시겠습니까?' ,'본인의 아이디를 적어주세요');
                            if($("#session").val()==(enter)){
                                $("#frm").attr("action", "/member/dropProc.do");
                                $("#frm").submit();
                            }else{
                                alert("아이디를 정확히 입력해주세요.");
                            }
                        }else{
                            alert("비밀번호가 틀렸습니다.");
                        }
                   }
               });
               e.preventDefault();
           });
        });

        $("#cancle").on("click", function (e) {
            e.preventDefault();
            location.href = "/";
        });
    </script>
</head>
<body>
<h1>회원탈퇴</h1>
<form id="frm" method="post">
    <input type="hidden" value="${sessionScope.userId}" id="session">
    패스워드 :<input type="password" id="password" name="password"> <br>
</form>
<button id="drop">탈퇴</button> <button id="cancle">취소</button> <br>
</body>
</html>
