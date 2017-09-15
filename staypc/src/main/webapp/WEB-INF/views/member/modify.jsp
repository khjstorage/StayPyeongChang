<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>회원정보수정</title>
    <link href="/resources/css/profile_style.css" rel="stylesheet" type="text/css">
    <link href="css/profile_style.css" rel="stylesheet" type="text/css">
    <script src="/resources/js/jquery-3.2.1.min.js" type="text/javascript"></script>
    <script src="/resources/js/modifyMembership.js" type="text/javascript"></script>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
    <script src="//code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
</head>

<body>
<div class="profileUpdatePage">
    <form method="post" id="modifyForm" enctype="multipart/form-data">
    <!-- profile page --> 
		<div class="align">
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

            <div class="profileUpdate">
                <div class="profileUpdate_header">프로필 수정</div>
                <div class="user_profile">
	                <div class="profilePic">
	                    <label>프로필 사진</label>
	                    <div class="picture">
	                        <img width="100px" height="100px" style="width:200px; height:200px;" src="<c:url value='/resources/profile_photo/${member.picture}'/>"/>
	                    </div>
	                    <div class="file">
	                       <input type="file" name="uploadFile" accept="image/*" style="width:300px;"><br>
	                       <input name='originFile' type="hidden" value='${member.picture}'>                
	                    </div>
	                </div>
	                <br>
	
	                <div class="id">                    
	                    <label>아이디</label>
	                    <div class="user_id">
	                        ${member.id}
	                    </div>
	                </div>
	                <br><br>
	
	                <div class="password">                    
	                    <label>비밀번호</label>
	                    <div class="user_password">
	                        <input type="password" name="password" id="password" style="width:200px;"><br>
	                    </div>
	                </div>
	                <br><br>
	
	
	                <div class="name">                    
	                    <label>이름</label>
	                    <div class="user_name">
	                        <input type="text" name="name" id="name" value='${member.name}' style="width:200px;"><br>
	                    </div>
	                </div>
	                <br><br>
	
	                <div class="gender">
	                    <label>성별</label>
	                    <div class="user_gender">
	                    	<c:choose>
	                    		<c:when test="${member.gender eq 'M'}">
	                       			<label>남자</label><input type="radio" name="gender" value="M" checked="checked">
	                       			<label>여자</label><input type="radio" name="gender" value="F">
	                    		</c:when>
	                    		<c:when test="${member.gender eq 'F'}">
	                       			<label>남자</label><input type="radio" name="gender" value="M">
	                       			<label>여자</label><input type="radio" name="gender" value="F" checked="checked">
	                       		</c:when>
								<c:otherwise>
									<label>남자</label><input type="radio" name="gender" value="M">
									<label>여자</label><input type="radio" name="gender" value="F">
								</c:otherwise>
	                    	</c:choose>
	                    </div>
	                </div>
	                <br><br>
	
	                <div class="birthDate">
	                    <label>생년월일</label>
	                    <div class="user_birthDate">
		                    <fmt:parseDate value='${member.birth_date}' var="dateFmt" pattern="yyyy-MM-dd HH:mm:ss"/>
							<fmt:formatDate value='${dateFmt}' var="birth_date" pattern="yyyy-MM-dd"/>
		                    <input type="text" name="birth_date" id="birth_date" class="datepicker" value='${birth_date}' style="width:200px;"> <br>
		                    <div class="radio_birthDate">
								<c:choose>
									<c:when test="${member.birth_yn eq 'Y'}">
										<input type="radio" id="birth_unlock" value="Y" name="birth_yn" checked="checked" style="margin-left:70px;"> 공개
										<input type="radio" id="birth_lock" value="N" name="birth_yn" style="margin-left:10px;"> 비공개
									</c:when>
									<c:when test="${member.birth_yn eq 'N'}">
										<input type="radio" id="birth_unlock" value="Y" name="birth_yn" style="margin-left:70px;"> 공개
										<input type="radio" id="birth_lock" value="N" name="birth_yn" checked="checked" style="margin-left:10px;"> 비공개
									</c:when>
									<c:otherwise>
										<input type="radio" id="birth_unlock" value="Y" name="birth_yn" style="margin-left:70px;"> 공개
										<input type="radio" id="birth_lock" value="N" name="birth_yn"  style="margin-left:10px;"> 비공개
									</c:otherwise>
								</c:choose>
		                    </div>
	                    </div>                    
	                </div>
	                <br><br>
	
	                <div class="email">
	                    <label>이메일</label>
	                    <div class="user_email">
	                        ${member.email}
	                    </div>
	                    <div class="radio_email">
							<c:choose>
								<c:when test="${member.email_yn eq 'Y'}">
									<input type="radio" id="email_unlock" value="Y" name="email_yn" checked="checked" style="margin-left:30px;"> 공개
									<input type="radio" id="email_lock" value="N" name="email_yn" style="margin-left:10px;"> 비공개
								</c:when>
								<c:when test="${member.email_yn eq 'N'}">
									<input type="radio" id="email_unlock" value="Y" name="email_yn" style="margin-left:30px;"> 공개
									<input type="radio" id="email_lock" value="N" name="email_yn" checked="checked" style="margin-left:10px;"> 비공개
								</c:when>
								<c:otherwise>
									<input type="radio" id="email_unlock" value="Y" name="email_yn" style="margin-left:30px;"> 공개
									<input type="radio" id="email_lock" value="N" name="email_yn"  style="margin-left:10px;"> 비공개
								</c:otherwise>
							</c:choose>
	                    </div>
	                </div>
	                <br><br>
	
	                <div class="phone">
	                    <label>전화번호</label>
	                    <div class="user_phone">
	                        <input type="text" name="phone" id="phone" value='${member.phone}' style="width:200px;">
	                    </div>
	                    <div class="radio_phone">
							<c:choose>
								<c:when test="${member.phone_yn eq 'Y'}">
									<input type="radio" id="phone_unlock" value="Y" name="phone_yn" checked="checked" style="margin-left:80px;"> 공개
									<input type="radio" id="phone_lock" value="N" name="phone_yn" style="margin-left:10px;"> 비공개
								</c:when>
								<c:when test="${member.phone_yn eq 'N'}">
									<input type="radio" id="phone_unlock" value="Y" name="phone_yn" style="margin-left:80px;"> 공개
									<input type="radio" id="phone_lock" value="N" name="phone_yn" checked="checked" style="margin-left:10px;"> 비공개
								</c:when>
								<c:otherwise>
									<input type="radio" id="phone_unlock" value="Y" name="phone_yn" style="margin-left:80px;"> 공개
									<input type="radio" id="phone_lock" value="N" name="phone_yn"  style="margin-left:10px;"> 비공개
								</c:otherwise>
							</c:choose>
	                    </div>
	                </div>
	                <br><br>
	
	                <div class="city">
	                    <label>거주도시</label>
	                    <div class="user_city">
	                        <input type="text" name="city" id="city" value='${member.city}' style="width:200px;"><br>
	                    </div>
	                    <div class="radio_city">
							<c:choose>
								<c:when test="${member.city_yn eq 'Y'}">
									<input type="radio" id="city_unlock" value="Y" name="city_yn" checked="checked" style="margin-left:80px;"> 공개
									<input type="radio" id="city_lock" value="N" name="city_yn" style="margin-left:10px;"> 비공개
								</c:when>
								<c:when test="${member.city_yn eq 'N'}">
									<input type="radio" id="city_unlock" value="Y" name="city_yn" style="margin-left:80px;"> 공개
									<input type="radio" id="city_lock" value="N" name="city_yn" checked="checked" style="margin-left:10px;"> 비공개
								</c:when>
								<c:otherwise>
									<input type="radio" id="city_unlock" value="Y" name="city_yn" style="margin-left:80px;"> 공개
									<input type="radio" id="city_lock" value="N" name="city_yn"  style="margin-left:10px;"> 비공개
								</c:otherwise>
							</c:choose>
	                    </div>
	                </div>
	                <br><br>
	
	                <div class="introduction">
	                    <label>자기소개</label>
	                    <div class="user_introduction">
	                    <textarea cols="80" rows="10" name="introduction" id="introduction">${member.introduction}</textarea>
	                    </div>
	                </div>
	                
	                <br><br><br><br><br><br>
	
	                <div>
	                    <div>
	                        <input type="submit" value="수정" id="save">
	                        <input type="button" id="drop" value="회원탈퇴" style="margin-left:10px;">
	                    </div>
	                </div>
            </div>            
         </div>  
         </div>      
    </form>   
    
    </div>      
</body>
</html>

	