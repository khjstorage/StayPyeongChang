<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="/resources/js/jquery-3.2.1.min.js" type="text/javascript"></script>
    <script src="/resources/js/joinMembership.js" type="text/javascript"></script>
</head>
<body>

<form method="post" id="joinForm" enctype="multipart/form-data">
    <h1>회원가입</h1>
    <h2 style="color: darkred">평창스테이 이용약관</h2>
    <div style="border: 1px solid black">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
    Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
    Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
        Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</div>
    <input type="checkbox" name="agree" id="agreement1"> 위 서비스 이용약관에 동의합니다 <br>
    <h2 style="color: darkred">개인정보 수집 및 이용에 대한 안내</h2>
    <div style="border: 1px solid black">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
        Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
        Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
        Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</div>
    <input type="checkbox" name="agree" id="agreement2"> 개인정보 수집 및 필수목적에 동의합니다.<br>
    <input type="checkbox" id="allCheckAgree"> 약관 전체(서비스, 개인정보수집 및 이용)에 동의합니다.<br><br><br>

    <h2 style="color: darkred">회원기본정보</h2>
    아이디 : <input type="text" name="id" id="id">&nbsp;&nbsp;<button id="duplicationIdBtn">아이디확인</button><br>
    <input type="hidden" name="id_isCheck" id="id_isCheck" value="N"/>
    비밀번호 : <input type="password" name="password" id="password"><br>
    이메일 : <input type="text" name="email1" id="email1">@
    <input type="text" name="email2" id="email2" maxlength="25" size="15" style="display: inline;">
    <select name="email3" id="email3">
        <option value="self">직접입력</option>
        <option value="naver.com">naver.com</option>
        <option value="gmail.com">gmail.com</option>
        <option value="hanmail.net">hanmail.net</option>
    </select>
    <input type="hidden" name="email" id="email" value="N">
    &nbsp;&nbsp;<button id="duplicationEmailBtn">이메일확인</button><br>
    <br>
    이름 : <input type="text" name="name" id="name"><br>
    생일 : <input type="date" name="birth_date" id="birth_date"><br>
    사진 : <input type="file" name="uploadFile"><br>
    핸드폰 : <input type="text" name="phone" id="phone">하이픈(-)은 입력하지 마세요.<br>
    성별 :  <input type="radio" name="gender" value="M" checked> 남자
           <input type="radio" name="gender" value="F"> 여자 <br>
    도시 : <input type="text" name="city" id="city"><br>
    소개 : <br><textarea cols="100" rows="10" name="introduction" id="introduction"></textarea><br>
    <input type="submit" value="회원가입">
    <input type="button" id="cancle" value="회원가입 취소">
</form>

</body>
</html>
