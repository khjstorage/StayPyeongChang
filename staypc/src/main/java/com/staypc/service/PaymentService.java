package com.staypc.service;

import com.staypc.vo.PaymentVO;

import java.util.List;

public interface PaymentService {
    int pay(PaymentVO vo);
    List list(String id);
}
