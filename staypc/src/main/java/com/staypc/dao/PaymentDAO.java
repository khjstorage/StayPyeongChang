package com.staypc.dao;

import com.staypc.vo.PaymentVO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class PaymentDAO {


    @Autowired
    private SqlSessionTemplate sqlSession;


    public void pay(PaymentVO vo) {
        sqlSession.insert("payment.pay",vo);
    }
}
