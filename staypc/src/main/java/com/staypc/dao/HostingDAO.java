package com.staypc.dao;


import com.staypc.vo.LodgeVO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.GregorianCalendar;
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
    
    public void hosting_date(LodgeVO vo) {
    	System.out.println("값이 안찍히나 투..?"+vo.getBook_date());
    	sqlSession.insert("hosting.insert_date",vo);
    }
}
