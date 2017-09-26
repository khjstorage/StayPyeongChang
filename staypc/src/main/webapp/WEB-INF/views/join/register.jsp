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
        <div class="section_02" style="border:solid 1px; border-color:#b2b2b2; width:700px; height:200px;">
            <div style="overflow:scroll; width:670px; height:150px; padding:10px; background-color:gold;">
                제 1 조 (목적)
                이 약관은 네이버 주식회사 ("회사" 또는 "네이버")가 제공하는 네이버 및 네이버 관련 제반 서비스의 이용과 관련하여 회사와 회원과의 권리, 의무 및 책임사항, 기타 필요한 사항을 규정함을 목적으로 합니다.
                제 2 조 (정의)
                이 약관에서 사용하는 용어의 정의는 다음과 같습니다.
                ①"서비스"라 함은 구현되는 단말기(PC, TV, 휴대형단말기 등의 각종 유무선 장치를 포함)와 상관없이 "회원"이 이용할 수 있는 네이버 및 네이버 관련 제반 서비스를 의미합니다.
                ②"회원"이라 함은 회사의 "서비스"에 접속하여 이 약관에 따라 "회사"와 이용계약을 체결하고 "회사"가 제공하는 "서비스"를 이용하는 고객을 말합니다.
                ③"아이디(ID)"라 함은 "회원"의 식별과 "서비스" 이용을 위하여 "회원"이 정하고 "회사"가 승인하는 문자와 숫자의 조합을 의미합니다.
                ④"비밀번호"라 함은 "회원"이 부여 받은 "아이디와 일치되는 "회원"임을 확인하고 비밀보호를 위해 "회원" 자신이 정한 문자 또는 숫자의 조합을 의미합니다.
                ⑤"유료서비스"라 함은 "회사"가 유료로 제공하는 각종 온라인디지털콘텐츠(각종 정보콘텐츠, VOD, 아이템 기타 유료콘텐츠를 포함) 및 제반 서비스를 의미합니다.
                ⑥"포인트"라 함은 서비스의 효율적 이용을 위해 회사가 임의로 책정 또는 지급, 조정할 수 있는 재산적 가치가 없는 "서비스" 상의 가상 데이터를 의미합니다.
                ⑦"게시물"이라 함은 "회원"이 "서비스"를 이용함에 있어 "서비스상"에 게시한 부호ㆍ문자ㆍ음성ㆍ음향ㆍ화상ㆍ동영상 등의 정보 형태의 글, 사진, 동영상 및 각종 파일과 링크 등을 의미합니다.
            </div>
            <input type="checkbox" name="agree" id="agreement1"> 위 서비스 이용약관에 동의합니다 <br>

        </div>
        <br><br><br>
        <div class="section_03">
            <span style="color: darkred; font-family:맑은 고딕, Malgun Gothic;"> 개인정보 수집 및 이용에 대한 안내</span>
        </div>
        <br>
        <div class="section_04" style="border:solid 1px; border-color:#b2b2b2; width:700px; height:200px">
            <div style="overflow:scroll; width:670px; height:150px; padding:10px; background-color:gold;">
                정보통신망법 규정에 따라 네이버에 회원가입 신청하시는 분께 수집하는 개인정보의 항목, 개인정보의 수집 및 이용목적, 개인정보의 보유 및 이용기간을 안내 드리오니 자세히 읽은 후 동의하여 주시기 바랍니다.
                1. 수집하는 개인정보
                이용자는 회원가입을 하지 않아도 정보 검색, 뉴스 보기 등 대부분의 네이버 서비스를 회원과 동일하게 이용할 수 있습니다. 이용자가 메일, 캘린더, 카페, 블로그 등과 같이 개인화 혹은 회원제 서비스를 이용하기 위해 회원가입을 할 경우, 네이버는 서비스 이용을 위해 필요한 최소한의 개인정보를 수집합니다.
                회원가입 시점에 네이버가 이용자로부터 수집하는 개인정보는 아래와 같습니다.
                - 회원 가입 시에 ‘아이디, 비밀번호, 이름, 생년월일, 성별, 가입인증 휴대폰번호’를 필수항목으로 수집합니다. 만약 이용자가 입력하는 생년월일이 만14세 미만 아동일 경우에는 법정대리인 정보(법정대리인의 이름, 생년월일, 성별, 중복가입확인정보(DI), 휴대폰번호)를 추가로 수집합니다. 그리고 선택항목으로 이메일 주소를 수집합니다.
                - 단체아이디로 회원가입 시 단체아이디, 비밀번호, 단체이름, 이메일주소, 가입인증 휴대폰번호를 필수항목으로 수집합니다. 그리고 단체 대표자명, 비밀번호 발급용 멤버 이름 및 이메일주소를 선택항목으로 수집합니다.
                서비스 이용 과정에서 이용자로부터 수집하는 개인정보는 아래와 같습니다.
            </div>
            <input type="checkbox" name="agree" id="agreement2"> 개인정보 수집 및 필수목적에 동의합니다.<br>
            <br>
        </div>
        <br><br>
        <input type="checkbox" id="allCheckAgree"> 약관 전체(서비스, 개인정보수집 및 이용)에 동의합니다.
        <br><br><br><br><br>
        <div class="section_05">
            <span style="color: darkred; font-family:맑은 고딕, Malgun Gothic;"> 회원기본정보</span><br><br>
        </div>
        <div class="login_box">
            아이디 : <input type="text" name="id" id="id">&nbsp;&nbsp;<button id="duplicationIdBtn">아이디확인</button>
            <br>
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
            &nbsp;&nbsp;<button id="duplicationEmailBtn">이메일확인</button>
            <br>
            <br>
            이름 : <input type="text" name="name" id="name"><br>
            사진 : <input type="file" name="uploadFile" accept="image/*"><br>
            <input type="submit" value="회원가입">
            <input type="button" id="cancle" value="회원가입 취소">
        </div>
    </div>
</form>
</body>
</html>

