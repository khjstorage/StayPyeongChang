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

    public void hosting(LodgeVO vo){
        sqlSession.insert("hosting.insert",vo);
    }

    public void hosting_image(String fileName) {
        sqlSession.insert("hosting.insert_image",fileName);
    }
}
