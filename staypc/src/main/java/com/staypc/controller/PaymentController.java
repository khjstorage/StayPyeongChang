package com.staypc.controller;

import com.staypc.service.LodgeService;
import com.staypc.service.PaymentService;
import com.staypc.vo.LodgeVO;
import com.staypc.vo.PaymentVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class PaymentController {


    @Autowired
    PaymentService paymentService;

    @Autowired
    LodgeService lodgeService;

    @RequestMapping("payment/module")
    public ModelAndView paymentForm(ModelAndView mav, @RequestParam int lodge_code) throws Exception {
        LodgeVO lodgeVO = lodgeService.read(lodge_code);
        mav.addObject("lodgeVO", lodgeVO);
        mav.setViewName("payment/module");
        return mav;
    }

    @RequestMapping("payment/pay")
    public @ResponseBody int payment(PaymentVO vo){
        System.out.println(vo);
        int result = paymentService.pay(vo);
        return result;
    }

    @RequestMapping(value = "payment/list.do", method = RequestMethod.GET)
    public ModelAndView payListForm(ModelAndView mav, HttpSession session){
        String id = (String) session.getAttribute("userId");
        List list = paymentService.list(id);
        System.out.println(list);
        mav.addObject("list",list);
        mav.setViewName("payment/list");
        return mav;
    }


}
