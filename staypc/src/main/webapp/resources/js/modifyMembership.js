$(document).ready(function(){
    var re_pw = /^[a-z0-9_-]{6,18}$/;
    var re_phone = /^[0-9]{8,11}$/;

    var modifyForm = $('#modifyForm'),
        password = $('#password'),
        name = $('#name'),
        birth_date = $('#birth_date'),
        gender = $('#gender'),
        city = $('#city'),
        introduction = $('#introduction'),
        phone = $('#phone');

    password.after('<strong></strong>');
    password.on("keyup", function() {
        var s = $(this).next('strong'); // strong 요소를 변수에 할당
        if (password.val().length == 0) { // 입력 값이 없을 때
            s.text(''); // strong 요소에 포함된 문자 지움
        } else if (password.val().length < 6) { // 입력 값이 6보다 작을 때
            s.text('너무 짧아요.'); // strong 요소에 문자 출력
        } else if (password.val().length > 18) { // 입력 값이 18보다 클 때
            s.text('너무 길어요.'); // strong 요소에 문자 출력
        } else { // 입력 값이 6 이상 18 이하일 때
            s.text('적당해요.'); // strong 요소에 문자 출력
        }
    });

    phone.keydown( function() {
        if(event.keyCode==109 || event.keyCode==189) {
            return false;
        }
    });

    modifyForm.on("submit", function() {
        if(re_pw.test(password.val()) != true) {
            alert('[PW 입력 오류] 유효한 PW를 입력해 주세요.');
            password.focus();
            return false;
        }
        if(name.val()==""){
            alert("이름을 적어주세요");
            name.focus();
            return false;
        }
        if(re_phone.test(phone.val()) != true) {
            alert('[Tel 입력 오류] 유효한 전화번호를 입력해 주세요.');
            phone.focus();
            return false;
        }
        if(gender.val()==""){
            alert("성별 체크해주세요");
            gender.focus();
            return false;
        }

        modifyForm.attr("action", "/member/modify.do");
        modifyForm.submit();
    });

    $("#cancle").on("click", function (e) {
        e.preventDefault();
        location.href = "/";
    });

    $("#drop").on("click", function (e) {
        e.preventDefault();
        location.href = "/member/drop.do?";
    });

    $(".datepicker").datepicker({
        // showOn: "both", // 버튼과 텍스트 필드 모두 캘린더를 보여준다.
        // buttonImage: "/application/db/jquery/images/calendar.gif", // 버튼 이미지
        // buttonImageOnly: true, // 버튼에 있는 이미지만 표시한다.
        changeMonth: true, // 월을 바꿀수 있는 셀렉트 박스를 표시한다.
        changeYear: true, // 년을 바꿀 수 있는 셀렉트 박스를 표시한다.
        // minDate: '-100y', // 현재날짜로부터 100년이전까지 년을 표시한다.
        nextText: '다음 달', // next 아이콘의 툴팁.
        prevText: '이전 달', // prev 아이콘의 툴팁.
        numberOfMonths: [1,1], // 한번에 얼마나 많은 월을 표시할것인가. [2,3] 일 경우, 2(행) x 3(열) = 6개의 월을 표시한다.
        stepMonths: 1, // next, prev 버튼을 클릭했을때 얼마나 많은 월을 이동하여 표시하는가.
        yearRange: 'c-100:c+0', // 년도 선택 셀렉트박스를 현재 년도에서 이전, 이후로 얼마의 범위를 표시할것인가.
        // showButtonPanel: true, // 캘린더 하단에 버튼 패널을 표시한다.
        currentText: 'Today' , // 오늘 날짜로 이동하는 버튼 패널
        closeText: 'Done',  // 닫기 버튼 패널
        dateFormat: "yy-mm-dd", // 텍스트 필드에 입력되는 날짜 형식.
        showAnim: "slide", //애니메이션을 적용한다.
        showMonthAfterYear: true , // 월, 년순의 셀렉트 박스를 년,월 순으로 바꿔준다.
        // dayNamesMin: ['월', '화', '수', '목', '금', '토', '일'], // 요일의 한글 형식.
        // monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'] // 월의 한글 형식.
    });
});