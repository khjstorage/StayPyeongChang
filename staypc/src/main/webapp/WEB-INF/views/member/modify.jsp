<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>회원정보수정</title>
    <link href="/resources/css/profile_style.css" rel="stylesheet" type="text/css">
    <script src="/resources/js/jquery-3.2.1.min.js" type="text/javascript"></script>
    <script src="/resources/js/modifyMembership.js" type="text/javascript"></script>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
    <script src="//code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
</head>

<body>
<div class="top_con_zone" id="fixNextTag">
    <form method="post" id="modifyForm" enctype="multipart/form-data">
        <div id="profilePage">
            <!-- profile page -->
            <div id="sidemenu">
                <ul>
                    <li style="margin-top:40px;"><a href="#">프로필 수정</a></li>
                    <br>
                    <li style="margin-top:10px;"><a href="#">프로필 보기</a></li>
                </ul>
            </div>

            <div>
                <div id="profileUpdate_header">프로필 수정</div>
                <div>
                    <label>프로필 사진</label>
                    <td>
                        <img width="100px" height="100px" src= <c:url value='/resources/profile_photo/${member.picture}'/>/>
                    </td>
                    <div>
                        <td>
                            <input type="file" name="uploadFile" accept="image/*"><br>
                            <input name='originFile' type="hidden" value='${member.picture}'>
                        </td>
                    </div>
                </div>

                <div>
                    <br>
                    <label>아이디</label>
                    <td>
                        ${member.id}<br>
                    </td>
                </div>
                <br>

                <div>
                    <br>
                    <label>비밀번호</label>
                    <td>
                        <input type="password" name="password" id="password"><br>
                    </td>
                </div>
                <br>


                <div>
                    <br>
                    <label>이름</label>
                    <td>
                        <input type="text" name="name" id="name" value='${member.name}'><br>
                    </td>
                </div>
                <br>

                <div>
                    <label>성별</label>
                    <td>
                        <label>남자</label> <input type="radio" name="gender" value="M"
                                                 <c:if test="${member.gender eq 'M'}">checked</c:if>>
                        <label>여자</label> <input type="radio" name="gender" value="F"
                                                 <c:if test="${member.gender eq 'F'}">checked</c:if>>
                    </td>
                </div>
                <br>

                <div>
                    <label>생년월일</label>
                    <fmt:parseDate value="${member.birth_date}" var="dateFmt" pattern="yyyy-MM-dd HH:mm:ss"/>
                    <input type="text" name="birth_date" id="birth_date" class="datepicker" <fmt:formatDate
                            value='${dateFmt}' pattern="yyyy-MM-dd"/>> <br>
                    <input type="radio" id="unlock" value="Y" name="birth_yn" style="margin-left:5px;"> 공개
                    <input type="radio" id="lock" value="N" name="birth_yn" style="margin-left:5px;"> 비공개
                    </td>
                </div>
                <br>

                <div>
                    <label>이메일</label>
                    <td>
                        ${member.email}
                    </td>
                    <td>
                        <input type="radio" id="unlock" value="Y" name="email_yn" style="margin-left:10px;"> 공개
                        <input type="radio" id="lock" value="N" name="email_yn" style="margin-left:10px;"> 비공개
                    </td>
                </div>
                <br>

                <div>
                    <label>전화번호</label>
                    <td>
                        <input type="text" name="phone" id="phone" value='${member.phone}'>
                    </td>
                    <td>
                        <input type="radio" id="unlock" value="Y" name="phone_yn" style="margin-left:10px;"> 공개
                        <input type="radio" id="lock" value="N" name="phone_yn" style="margin-left:10px;"> 비공개
                    </td>
                </div>
                <br>

                <div>
                    <label>거주도시</label>
                    <td>
                        <input type="text" name="city" id="city" value='${member.city}'><br>
                    </td>
                    <td>
                        <input type="radio" id="unlock" value="Y" name="city_yn" style="margin-left:10px;"> 공개
                        <input type="radio" id="lock" value="N" name="city_yn" style="margin-left:10px;"> 비공개
                    </td>
                </div>
                <br>

                <div>
                    <label>자기소개</label>
                    <td>
                    <textarea cols="100" rows="10" name="introduction"
                              id="introduction">${member.introduction}</textarea>
                    </td>
                </div>
                <br>

                <div>
                    <label>크레딧</label>
                    <td>${member.credit}</td>
                </div>
                <br><br><br><br>

                <div>
                    <td>
                        <input type="submit" value="수정">
                        <input type="button" id="drop" value="회원탈퇴">
                    </td>
                </div>
            </div>
        </div>
    </form>
</body>
</html>

	