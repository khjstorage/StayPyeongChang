
<html>
<head>
    <title>회원정보수정</title>
    <script src="/resources/js/jquery-3.2.1.min.js" type="text/javascript"></script>
    <script src="/resources/js/modifyMembership.js" type="text/javascript"></script>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
    <script src="//code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
</head>
<body>
<form method="post" id="modifyForm" enctype="multipart/form-data">
    <h1>회원정보수정</h1>
    <h2 style="color: darkred">회원기본정보</h2>
    아이디 : ${member.id} <br>
    비밀번호 : <input type="password" name="password" id="password"><br>
    이메일 : ${member.email} <br>
    이름 : <input type="text" name="name" id="name" value='${member.name}'><br>
    <fmt:parseDate value="${member.birth_date}" var="dateFmt" pattern="yyyy-MM-dd HH:mm:ss"/>
    생일 : <input type="text" name="birth_date" id="birth_date" class="datepicker" <fmt:formatDate value='${dateFmt}' pattern="yyyy-MM-dd"/>> <br>
    사진 :
            <img width="100px" height="100px" src=<c:url value='/resources/profile_photo/${member.picture}'/> /> <br><input type="file" name="uploadFile" accept="image/*"><br>
            <input name='originFile' type="hidden" value='${member.picture}'>
    핸드폰 : <input type="text" name="phone" id="phone" value='${member.phone}'><br>
    성별 :
    남자  <input type="radio" name="gender" value="M" <c:if test="${member.gender eq 'M'}">checked</c:if>>
    여자  <input type="radio" name="gender" value="F" <c:if test="${member.gender eq 'F'}">checked</c:if>>  <br>
    도시 : <input type="text" name="city" id="city" value='${member.city}'><br>
    소개 : <br><textarea cols="100" rows="10" name="introduction" id="introduction">${member.introduction}</textarea><br>
    포인트 : ${member.credit} <br>
    <input type="submit" value="수정">
    <input type="button" id="drop" value="회원탈퇴">
    <input type="button" id="cancle" value="취소">
</form>
</body>
</html>
