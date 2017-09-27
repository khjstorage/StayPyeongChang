package com.staypc.controller;

import com.staypc.service.LodgeService;
import com.staypc.service.PaymentService;
import com.staypc.vo.LodgeVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

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

}
