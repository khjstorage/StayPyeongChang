package com.staypc.service.Impl;


import com.staypc.dao.PaymentDAO;
import com.staypc.service.PaymentService;
import com.staypc.vo.PaymentVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PaymentServiceImpl implements PaymentService {


    @Autowired
    private PaymentDAO dao;

    @Override
    public int pay(PaymentVO vo) {
        dao.soldY(vo.getLodge_Code());
        return dao.pay(vo);
    }

    @Override
    public List list(String id) {
        return dao.list(id);
    }
}
