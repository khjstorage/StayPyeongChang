package com.staypc.controller;

import com.staypc.service.WishService;
import com.staypc.vo.WishVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;

@Controller
public class WishController {

    @Autowired
    private WishService wishService;

    @RequestMapping("wish/insertWishItem.do")
    public @ResponseBody int insertWishItem(WishVO vo) throws Exception {
//        System.out.println(wishService.getWishItem(vo));
        int result = wishService.insertWish(vo);
        return result;
    }

    @RequestMapping("wish/deleteWishItem.do")
    public String  deleteWish(WishVO vo, HttpSession session) throws Exception {
        vo.setId((String)session.getAttribute("userId"));
        wishService.deleteWish(vo);
        return "redirect:/member/profile.do";
    }

}
