package com.staypc.controller;

import com.staypc.service.PaymentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PaymentController {


    @Autowired
    PaymentService service;


    @RequestMapping("payment/enrollment")
    public String enrollment(){
        return "payment/payment";
    }
}
