<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!DOCTYPE html>
<head>
<style type="text/css">
 html {
            overflow: scroll;
        }
</style>
<title>profile page</title>
    <%--제이쿼리--%>
    <script src="/resources/js/jquery-3.2.1.min.js"></script>
    <%--데이터피커--%>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link href="/resources/css/profile_style.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
		function board_delete(lodge_Code){
			if (confirm("정말 삭제하시겠습니까??") == true){
				document.location.href="/wish/deleteWishItem.do?lodge_Code="+lodge_Code;
			}else{
				return;
			}
        }
</script>
</head>
<body>
	<div class="profile" >
		<div class="common_wrapper">
			<!-- profile page -->
			<div class="sidemenu">
				<ul>
					<li style="margin-top: 40px;"><a href="/member/modify.do">프로필 수정</a></li>
					<br>
					<li style="margin-top: 10px;"><a href="/member/profile.do">프로필 보기</a></li>
					<br>
					<li style="margin-top:10px;"><a href="/payment/list.do">예약 내역 확인</a></li>
					<br>
					<li style="margin-top: 10px;"><a href="/host/list.do">호스팅 확인</a></li>
				</ul>
			</div>

			<div class="userImgInfo">
				<div class="userImg">
					<img id="Img"
						src="<c:url value='/resources/profile_photo/${member.picture}'/>" />
				</div>
				<br>
				<br>

				<div class="userInfo">
					<div class="user_In">내 소개</div>
					<ul class="userProfile">
						<li>
							<div class="userId">
								<span>아이디 : </span> <span>${member.id}</span>
							</div>
						</li>
						<li>
							<div class="userGender">
								<span>성별 : </span>
								<c:choose>
									<c:when test="${member.gender eq 'F'}">
										<span>여자</span>
									</c:when>
									<c:otherwise>
										<span>남자</span>
									</c:otherwise>
								</c:choose>
							</div>
						</li>

						<li>
							<div class="userBirthDate">
								<span>생년월일 : </span>
								<c:choose>
									<c:when test="${member.birth_yn eq 'Y'}">
										<fmt:parseDate value='${member.birth_date}' var="dateFmt" pattern="yyyy-MM-dd HH:mm:ss" />
										<fmt:formatDate value='${dateFmt}' var="birth_date" pattern="yyyy-MM-dd" />
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
			<div class="wishList" style="height:auto;">
				<span style="font-size: 30px;">안녕하세요, ${member.name} 입니다!</span>
				<h4 style="line-height: 25px;">${member.introduction}</h4>
				<br>
				<br>
				<br> <span style="font-size: 20px;">내 위시리스트</span> <br>
				<br>
				<div class="wishList_Detail">
				<table style="cellspacing:5px;cellpadding:auto;">			
						<tr>
						<c:set var="i" value="0"/>
						<c:set var="j" value="3"/>
						<c:forEach var="list" items="${list}" varStatus="status">
						<c:if test="${i%j==0 }">
						<tr>
						</c:if>
							<td align="center">
								<a href="<c:url value="/lodge/read.do?lodge_Code=${list.lodge_Code}"/>">
								<img style="background-size: cover;" src="/host/displayFile.do?fileName=${list.staypcLodge[0].main_Image}" width="250" height="250"> </a>
							<br>
							${list.title}
							<br><fmt:formatDate value="${list.reg_Date}" pattern="yy-MM-dd" />
							<br><input type="button" value="삭 제" onclick="board_delete(${list.lodge_Code})">
							</td>
							<c:if test="${i%j==j-1 }">
							</tr>
							</c:if>
							<c:set var="i" value="${i+1 }"/>
							</c:forEach>
						</tr>	
					</table>
				</div>
				</div>
				</div>
			</div>
	
</body>
</html>

