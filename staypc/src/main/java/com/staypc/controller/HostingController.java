package com.staypc.controller;

import com.staypc.service.HostingService;
import com.staypc.vo.LodgeVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;

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
        System.out.println(vo);
        service.hostinsert(vo);
        return "host/write";
    }


}
