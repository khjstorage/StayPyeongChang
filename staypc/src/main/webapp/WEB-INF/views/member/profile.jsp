<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE>
<head>
    <title>profile page</title>
    <link href="css/profile_style.css" rel="stylesheet" type="text/css">
    <link href="/resources/css/profile_style.css" rel="stylesheet" type="text/css">
    <script language="javascript"></script>
    <style type="text/css"></style>
</head>

<body>

<div class="profile">
    <form method="post" id="profileForm" enctype="multipart/form-data">
        <div class="center">

            <!-- profile page -->

            <div class="sidemenu">
                <ul>
                    <li style="margin-top:40px;"><a href="/member/modify.do">프로필 수정</a></li>
                    <br>
                    <li style="margin-top:10px;"><a href="/member/profile.do">프로필 보기</a></li>
                    <br>
                    <li style="margin-top:10px;"><a href="#">예약 내역 확인</a></li>
                    <br>
                    <li style="margin-top:10px;"><a href="/host/list.do">호스팅 확인/수정</a></li>
                </ul>
            </div>

            <div class="userImgInfo">
                <div class="userImg">
                    <img width="100px" height="100px" style="width:200px; height:200px;" src="<c:url value='/resources/profile_photo/${member.picture}'/>"/>
                </div>
                <br><br>

                <div class="userInfo">
                    <div class="user_In">내 소개</div>
                    <ul class="userProfile">
                        <li>
                            <div class="userId">
                                <span>아이디 : </span>
                                <span>${member.id}</span>
                            </div>
                        </li>
                        <li>
                            <div class="userGender">
                                <span>성별 : </span>
                                <span>${member.gender}</span>
                            </div>
                        </li>

                        <li>
                            <div class="userBirthDate">
                                <span>생년월일 : </span>
                                <c:choose>
                                    <c:when test="${member.birth_yn eq 'Y'}">
                                        <fmt:parseDate value='${member.birth_date}' var="dateFmt" pattern="yyyy-MM-dd HH:mm:ss"/>
                                        <fmt:formatDate value='${dateFmt}' var="birth_date" pattern="yyyy-MM-dd"/>
                                        <span>${birth_date}</span>
                                    </c:when>
                                    <c:otherwise>
                                        <span>비공개</span>
                                    </c:otherwise>
                                </c:choose>
                            </div>
                        </li>

                        <li>
                            <div class="userEmail">
                                <span>이메일 : </span>
                                <c:choose>
                                    <c:when test="${member.email_yn eq 'Y'}">
                                <span>${member.email}</span>
                            </c:when>
                                <c:otherwise>
                                    <span>비공개</span>
                                </c:otherwise>
                                </c:choose>
                            </div>
                        </li>

                        <li>
                            <div class="userPhone">
                                <span>전화번호 : </span>
                                <c:choose>
                                    <c:when test="${member.phone_yn eq 'Y'}">
                                        <span>${member.phone}</span>
                                    </c:when>
                                    <c:otherwise>
                                        <span>비공개</span>
                                    </c:otherwise>
                                </c:choose>
                            </div>
                        </li>

                        <li>
                            <div class="userCity">
                                <span>거주지 : </span>
                                <c:choose>
                                    <c:when test="${member.city_yn eq 'Y'}">
                                        <span>${member.city}</span>
                                    </c:when>
                                    <c:otherwise>
                                        <span>비공개</span>
                                    </c:otherwise>
                                </c:choose>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>

            <div class="wishList">
                <span style="font-size:30px;">안녕하세요, ${member.name} 입니다!</span>
                <h4 style="line-height:25px;">${member.introduction}</h4>
                <br><br><br>
                <span style="font-size:20px;">내 위시리스트</span>
            </div>

        </div>
        
    </form>
</div>

</body>
</html>

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	