package com.staypc.dao;
import com.staypc.vo.LodgeVO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class LodgeDAO {

	
    @Autowired
   private SqlSessionTemplate mybatis;
	
    
    public void insert(LodgeVO vo){
        mybatis.insert("lodge.insert", vo);
    }

	
	
	
	
	
	
	
}
