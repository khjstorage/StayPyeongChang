package com.staypc.dao;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.staypc.vo.LodgeVO;


@Repository
public class LodgeDAO {
	@Autowired
	SqlSessionTemplate sqlSession;
	
	public List<LodgeVO> listMain() throws Exception{
	
		return sqlSession.selectList("staypc.listMain");
	}
	
	public int count(String num, String keyword, String sdate, String edate) throws Exception{
		Map<String, String> map = new HashMap<String, String>();
		map.put("num", num);
		map.put("keyword", keyword);
		map.put("sdate", sdate);
		map.put("edate", edate);
		
		return sqlSession.selectOne("staypc.count",  map);
	}
	
	public List<LodgeVO> listAll(int start, int end, String num, String keyword, String sdate, String edate) throws Exception{
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("num", num);
		map.put("keyword", keyword);
		map.put("start", start);
		map.put("end", end);
		map.put("sdate", sdate);
		map.put("edate", edate);
		
		
		System.out.println(sqlSession.selectList("staypc.listAll", map));
		return sqlSession.selectList("staypc.listAll", map);

	}
	
}





