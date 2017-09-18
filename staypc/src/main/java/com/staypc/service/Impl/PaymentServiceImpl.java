package com.staypc.service.Impl;


import com.staypc.dao.PaymentDAO;
import com.staypc.service.PaymentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PaymentServiceImpl implements PaymentService {


    @Autowired
    private PaymentDAO dao;

}
