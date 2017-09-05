$(document).ready(function(){
    var re_id = /^[a-z0-9_-]{5,16}$/;
    var re_pw = /^[a-z0-9_-]{6,18}$/;

    var agreement1 = $('#agreement1'),
        agreement2 = $('#agreement2'),
        joinForm = $('#joinForm'),
        id = $('#id'),
        id_isCheck = $('#id_isCheck'),
        password = $('#password'),
        email = $('#email'),
        email1 = $('#email1'),
        email2 = $('#email2'),
        email3 = $('#email3'),
        name = $('#name'),
        birth_date = $('#birth_date'),
        allCheckAgree = $('#allCheckAgree'),
        duplicationIdBtn = $('#duplicationIdBtn'),
        duplicationEmailBtn = $('#duplicationEmailBtn');

    allCheckAgree.on("click", function(){
        if(allCheckAgree.prop("checked")){
            $("input[name=agree]").prop("checked",true);
        }else{
            $("input[name=agree]").prop("checked",false);
        }
    });

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

    duplicationIdBtn.on("click", function (e) {
        $.ajax({
            type: "get",
            url: "/join/duplicateId.do",
            data: {"id": id.val()},
            success: function (data) {
                if (data==id.val()) {
                    alert("이미 존재하는 닉네임 입니다.");
                    id.val("");
                    id.focus();
                    return;
                }else{
                    if(re_id.test(id.val()) != true){
                        alert("5글자 16글자 입력");
                        return;
                    }
                    alert("가입 가능한 닉네임 입니다.");
                    id_isCheck.val('Y');
                }
            }
        });
        e.preventDefault();
    });

    id.on("keyup", function () {
        id_isCheck.val('N');
    });

    duplicationEmailBtn.on("click", function (e) {
        $.ajax({
            type: "get",
            url: "/join/duplicateEmail.do",
            data: {"email": email1.val()+"@"+email2.val()},
            success: function (data) {
                if (data==email1.val()+"@"+email2.val()) {
                    alert("이미 사용한 이메일 입니다.");
                    email1.val("");
                    email1.focus();
                    return;
                }else{
                    alert("가입 가능한 이메일 입니다.");
                    email.val(email1.val()+"@"+email2.val());
                }
            }
        });
        e.preventDefault();
    });

    email3.on("change", function () {
        $("#email3 option:selected").each(function () {
            if($(this).val()=='self'){
                email2.val('');
                email2.attr("disabled",false);
            }else{
                email2.val($(this).text());
                email2.attr("disabled",true);
            }
        });
    });

    joinForm.on("submit", function() {
        if(agreement1.is(":checked")==false){
            alert('서비스 이용약관에 동의해 주세요');
            return false;
        }
        if(agreement2.is(":checked")==false){
            alert('개인정보 수집 및 필수목적에 동의해 주세요');
            return false;
        }
        if(id_isCheck.val()=='N'){
            alert("아이디 확인을 해주세요");
            return false;
        }
        if (re_id.test(id.val()) != true) {
            alert('[ID 입력 오류] 유효한 ID를 입력해 주세요.');
            id.focus();
            return false;
        }
        if(re_pw.test(password.val()) != true) {
            alert('[PW 입력 오류] 유효한 PW를 입력해 주세요.');
            password.focus();
            return false;
        }
        if(email1.val()==""){
            alert("이메일을 적어주세요");
            email1.focus();
            return false;
        }
        if(email2.val()==""){
            alert("이메일을 적어주세요");
            email2.focus();
            return false;
        }
        if(email.val()=='N'){
            alert("이메일을 확인해주세요");
            return false;
        }
        if(name.val()==""){
            alert("이름을 적어주세요");
            name.focus();
            return false;
        }

        joinForm.attr("action", "/join/joinMembership.do");
        joinForm.submit();
    });

    $("#cancle").on("click", function (e) {
        e.preventDefault();
        location.href = "/";
    });
});