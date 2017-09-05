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
});