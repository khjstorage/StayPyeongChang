package com.staypc.controller;

import com.staypc.service.HostingService;
import com.staypc.utility.DiffOfDate;
import com.staypc.vo.LodgeVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;

@Controller
public class HostingController {


    @Autowired
    private HostingService service;

    @RequestMapping("host/write.do")
    public String hostForm(HttpSession session){
        return "host/write";
    }

    @RequestMapping(value="host/insert.do", method= RequestMethod.POST)
    public String hosting(LodgeVO vo, HttpSession session) throws Exception{
        vo.setId((String)session.getAttribute("userId"));
        // '09/08/2017' / '09/10/2017'
        System.out.println("시작날짜와 끝날짜"+vo.getCheck_In() + "/"+ vo.getCheck_Out());
        
        String strFormat = "MM/dd/yyyy";    //strStartDate 와 strEndDate 의 format
        
        //SimpleDateFormat 을 이용하여 startDate와 endDate의 Date 객체를 생성한다.
        SimpleDateFormat sdf = new SimpleDateFormat(strFormat);
        try{
            Date startDate = sdf.parse(vo.getCheck_In());
            Date endDate = sdf.parse(vo.getCheck_Out());

            //두날짜 사이의 시간 차이(ms)를 하루 동안의 ms(24시*60분*60초*1000밀리초) 로 나눈다.
            long diffDay = (endDate.getTime() - startDate.getTime()) / (24*60*60*1000);
            System.out.println("두 날짜간의 차이는 "+diffDay+"일");
        }catch(ParseException e){
            e.printStackTrace();
        }
        
        
        
        
        service.hostinsert(vo);
        return "redirect:/";
    }




}
