package com.staypc.service.Impl;


import com.staypc.dao.PaymentDAO;
import com.staypc.service.PaymentService;
import com.staypc.vo.PaymentVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PaymentServiceImpl implements PaymentService {


    @Autowired
    private PaymentDAO dao;

    @Override
    public void pay(PaymentVO vo) {
        dao.pay(vo);
    }
}
