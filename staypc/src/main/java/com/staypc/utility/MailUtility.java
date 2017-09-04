package com.staypc.utility;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Component;

import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeUtility;
import java.util.Random;

@Component
public class MailUtility{

    @Autowired
    private JavaMailSenderImpl mailSender;

    //회원가입 인증URL
    public void joinMail(String toEmail) {
        String fromEmail = "khjzzm@gmail.com";
        String fromName = "평창스테이";
        String title = "[평창스테이] 회원가입 이메일 인증입니다.";
        String content = "<b>다음 URL을 방문하시면 평창스테이 회원가입이 완료됩니다</b><br>";
        content += "<a href='http://localhost:8989/join/welcome.do?email="+toEmail+"'>본인이 맞으시면 링크를 클릭해주세요</a>";

        try {
            MimeMessage message = mailSender.createMimeMessage();
            MimeMessageHelper messageHelper = new MimeMessageHelper(message, true, "UTF-8");

            messageHelper.setFrom(new InternetAddress(fromEmail, MimeUtility.encodeText(fromName, "UTF-8", "B")));  // 보내는사람 생략하거나 하면 정상작동을 안함
            messageHelper.setTo(toEmail);     // 받는사람 이메일
            messageHelper.setSubject(title); // 메일제목은 생략이 가능하다
            messageHelper.setText(content,true);  // 메일 내용
            mailSender.send(message);
        }catch (Exception e){
            System.out.println(e);
        }
    }


    //계정정보
    public void accountMail(String id, String temporaryPassword, String toEmail){
        String fromEmail = "khjzzm@gmail.com";
        String fromName = "평창스테이";
        String title = "[평창스테이] 문의하신 계정 정보입니다.";
        String content = "아이디:<b>"+id+"</b><br>";
        content += "임시비밀번호:<b>"+temporaryPassword+"</b>";

        try {
            MimeMessage message = mailSender.createMimeMessage();
            MimeMessageHelper messageHelper = new MimeMessageHelper(message, true, "UTF-8");

            messageHelper.setFrom(new InternetAddress(fromEmail, MimeUtility.encodeText(fromName, "UTF-8", "B")));
            messageHelper.setTo(toEmail);
            messageHelper.setSubject(title);
            messageHelper.setText(content,true);
            mailSender.send(message);
            System.out.println("---2--");
        }catch (Exception e){
            System.out.println(e);
        }
    }
}
