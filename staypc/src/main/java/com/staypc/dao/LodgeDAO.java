package com.staypc.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.staypc.vo.LodgeVO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.staypc.vo.LodgeVO;


@Repository
public class LodgeDAO {
	@Autowired
	SqlSessionTemplate sqlSession;
	
	public List<LodgeVO> listMain() throws Exception{
		return sqlSession.selectList("lodge.listMain");
	}
	
	public int count(String num, String keyword, String sdate, String edate) throws Exception{
		Map<String, String> map = new HashMap<String, String>();
		map.put("num", num);
		map.put("keyword", keyword);
		map.put("sdate", sdate);
		map.put("edate", edate);
		
		return sqlSession.selectOne("lodge.count",  map);
	}
	
	public List<LodgeVO> listAll(int start, int end, String num, String keyword, String sdate, String edate) throws Exception{
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("num", num);
		map.put("keyword", keyword);
		map.put("start", start);
		map.put("end", end);
		map.put("sdate", sdate);
		map.put("edate", edate);
		System.out.println(sqlSession.selectList("lodge.listAll", map));
		return sqlSession.selectList("lodge.listAll", map);

	}
	

	public LodgeVO read(int  lodge_Code) throws Exception{	
		return sqlSession.selectOne("lodge.read", lodge_Code);
	}
	
	
	public List<LodgeVO> readImg(int  lodge_Code) throws Exception{
		return sqlSession.selectList("lodge.readImg", lodge_Code);
	}
	
	//위시리스트 추가
	public void insertWish(LodgeVO vo) throws Exception{
		sqlSession.insert("lodge.insertWish", vo);
	}
	
	//위시리스트 삭제
	public void deleteWish(LodgeVO vo) throws Exception{
		sqlSession.delete("lodge.deleteWish",vo);
	}
	
	//위시리스트의 리스트
	public List<LodgeVO> listWish(LodgeVO vo) throws Exception{
		return sqlSession.selectList("lodge.getWishList",vo);
	}
	
}





