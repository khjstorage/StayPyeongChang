<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>joinMembership</title>
    <script src="/resources/js/joinMembership.js" type="text/javascript"></script>
</head>
<body>

<form method="post" id="joinForm" enctype="multipart/form-data">


<div class="join_register" style="margin-left:550px; margin:50px 550px;  padding:30px;
						  ">
	<div class="section_01">
		<h1 style="line-height:20px; font-family:맑은 고딕, Malgun Gothic; color:#484848;">회원가입</h1>
		<span style="color: darkred; font-family:맑은 고딕, Malgun Gothic;"> 평창스테이 이용약관</span>		
	</div>
	<br>
	<div class="section_02"  style="border:solid 1px; border-color:#b2b2b2; width:700px; height:140px" padding:10px;>
		<p>
			Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
    Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
    Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
        Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
		</p><br>
		<input type="checkbox" name="agree" id="agreement1"> 위 서비스 이용약관에 동의합니다 <br>
	
	</div>
	<br><br><br>
	<div class="section_03">
	<span style="color: darkred; font-family:맑은 고딕, Malgun Gothic;"> 개인정보 수집 및 이용에 대한 안내</span>
	
	</div>
	
	<br>
	<div class="section_04"  style="border:solid 1px; border-color:#b2b2b2; width:700px; height:140px">
	
		<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
    Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
    Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
        Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
		</p><br>
		<input type="checkbox" name="agree" id="agreement2"> 개인정보 수집 및 필수목적에 동의합니다.<br>
    <input type="checkbox" id="allCheckAgree"> 약관 전체(서비스, 개인정보수집 및 이용)에 동의합니다.	
    <br>
	</div>
	<br><br><br><br><br>
	<div class="section_05">
		<span style="color: darkred; font-family:맑은 고딕, Malgun Gothic;"> 회원기본정보</span><br><br>
	</div>
	<div class="login_box">
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
    사진 : <input type="file" name="uploadFile" accept="image/*"><br>
    <input type="submit" value="회원가입">
    <input type="button" id="cancle" value="회원가입 취소">
</div>
</div>
</form>




<!--     
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
    사진 : <input type="file" name="uploadFile" accept="image/*"><br>
    <input type="submit" value="회원가입">
    <input type="button" id="cancle" value="회원가입 취소">
</form>
 -->

</body>

</html>

