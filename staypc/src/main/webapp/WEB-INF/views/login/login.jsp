<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>login</title>
    <link href="/resources/css/login.css" rel="stylesheet" type="text/css"/>
    <script language="javascript">
        $(document).ready(function () {
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
<div class="top_con_zone" id="fixNextTag">
    <div class="login_wrap">
        <div class="login_table">
            <form action="/login/login.do" method="post">
                <table style="">
                    <tr>
                        <td colspan="2" style="text-align:center; ">
                            <div class="login_text">회원 로그인</div><br>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align:right; ">
                            아이디 :
                        </td>
                        <td style="text-align:left; ">
                            <input type="text" name="id" id="id">
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align:right; ">
                            비밀번호 :
                        </td>
                        <td style="text-align:left; ">
                            <input type="password" name="password" id="password">
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="text-align:center;">
                            <div class="login_input" style="width:100%">
                                <input type="submit" value="로그인" style="font-size:14px; text-align:center;
						background-color:#3DB7CC; color:#ffffff; font-size:24px;
						font-weight:bold; width:200px;">
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <div class="input_box" style="width:100%; text-align:center;">
                                <button id="find">계정찾기</button>
                                <button id="join">회원가입</button>
                            </div>
                        </td>
                    </tr>
                </table>

                <c:if test="${msg=='failure'}">
                    <div style="color:red">
                        <br>
                        아이디 또는 비밀번호를 다시 확인하세요.
                        평창스테이에 등록되지 않은 아이디이거나, 아이디 또는 비밀번호를 잘못 입력하셨습니다.
                    </div>
                </c:if>
            </form>
        </div>
    </div>


</div>
</body>
</html>
