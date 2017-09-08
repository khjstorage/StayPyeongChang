package com.staypc.controller;

import com.staypc.vo.LodgeVO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.util.HashMap;

@Controller
public class HostingController {

    @Autowired
    private SqlSessionTemplate mybatis;

    @RequestMapping("host/write.do")
    public String write(HttpSession session){
        return "host/write";
    }

    @RequestMapping(value="insert.do", method= RequestMethod.POST)
    public String insert(@ModelAttribute LodgeVO vo, HttpSession session) throws Exception{

        return "redirect:list.do";
    }

    @RequestMapping(value = "test/write.do")
    public String testWriteForm(){
        return "test/write";
    }

    @RequestMapping(value = "test/write.do")
    public String testWrite(@RequestParam String s_date, @RequestParam String e_date){
        System.out.println(s_date);
        System.out.println(e_date);
        HashMap<String, String> map = new HashMap<String, String>();
        map.put(s_date,"e_date");
        map.put(e_date,"e_date");
        mybatis.insert("hosting.write", map);
        return null;
    }


}
