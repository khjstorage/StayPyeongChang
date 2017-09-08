package com.staypc.dao;


import com.staypc.vo.LodgeVO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.HashMap;

@Repository
public class HostingDAO {


    @Autowired
    SqlSessionTemplate sqlSession;

    public void hostinsert(LodgeVO vo){
        System.out.println(vo);
        sqlSession.insert("hosting.write",vo);
    }

    public String daycal(HashMap daycalMap) {
        System.out.println(daycalMap.get("start"));
        System.out.println(daycalMap.get("end"));
      return  sqlSession.selectOne("hosting.daycal", daycalMap);
    }
}
