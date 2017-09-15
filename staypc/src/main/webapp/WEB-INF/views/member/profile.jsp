<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE>
<html>
<head>
    <title>profile page</title>
    <link href="css/profile_style.css" rel="stylesheet" type="text/css">
    <link href="/resources/css/profile_style.css" rel="stylesheet" type="text/css">
</head>

<body>
<div class="profile">
    <form method="post" id="profileForm" enctype="multipart/form-data">

        <!-- profile page -->

        <div class="sidemenu">
            <ul>
                <li style="margin-top:40px;"><a href="member/modify.do">프로필 수정</a></li>
                <br>
                <li style="margin-top:10px;"><a href="member/profile.do">프로필 보기</a></li>
                <br>
                <li style="margin-top:10px;"><a href="#">예약 내역 확인</a></li>
                <br>
                <li style="margin-top:10px;"><a href="/host/list.do">호스팅 확인/수정</a></li>
            </ul>
        </div>

        <div class="userImgInfo">
            <div class="userImg">
                <input type="image" id="user_proPic" src="images/user_pic.png" style="width:200px; height:200px;">
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
                            <span>${member.birth_date}</span>
                        </div>
                    </li>

                    <li>
                        <div class="userEmail">
                            <span>이메일 : </span>
                            <span>${member.email}</span>
                        </div>
                    </li>

                    <li>
                        <div class="userPhone">
                            <span>전화번호 : </span>
                            <span>${member.phone}</span>
                        </div>
                    </li>

                    <li>
                        <div class="userCity">
                            <span>거주지 : </span>
                            <span>${member.city}</span>
                        </div>
                    </li>
                </ul>
            </div>
        </div>

        <div class="wishList">
            <h1>안녕하세요, ${member.name} 입니다!</h1>
            <h4>${member.introduction}</h4>
            <br><br><br>
            <h2>내 위시리스트</h2>
        </div>
    </form>
</div>
</body>
</html>

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	