package com.staypc.dao;

import com.staypc.vo.PaymentVO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class PaymentDAO {


    @Autowired
    private SqlSessionTemplate sqlSession;


    public int pay(PaymentVO vo) {
        return sqlSession.insert("payment.pay",vo);
    }

    public void soldY(int lodge_code) {
        sqlSession.update("payment.soldY",lodge_code);
    }

    public List list(String id) {
        return sqlSession.selectList("payment.list", id);
    }
}
