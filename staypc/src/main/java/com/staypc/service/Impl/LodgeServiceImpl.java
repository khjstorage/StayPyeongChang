package com.staypc.service.Impl;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Insert;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.staypc.dao.LodgeDAO;
import com.staypc.service.LodgeService;
import com.staypc.vo.LodgeVO;


@Service
public class LodgeServiceImpl implements LodgeService {
	@Autowired
	private LodgeDAO dao;
	
	@Override
	public List<LodgeVO> listMain() throws Exception {
		return dao.listMain();
	}
	
	@Override
	public int countArticle(String num, String keyword, String sdate, String edate) throws Exception{
		return dao.count(num, keyword, sdate, edate);
	}
	
	@Override
	public List<LodgeVO> listAll(int start, int end, String num, String keyword, String sdate, String edate) throws Exception{
		return dao.listAll(start, end, num, keyword, sdate, edate);
	}
	
	@Override
	public void insert(LodgeVO vo)  throws Exception{
	
	}

	@Override
	public LodgeVO read(int  lodge_Code) throws Exception{
		return dao.read(lodge_Code);
	}
	
	@Override
	public List<LodgeVO> readImg(int lodge_Code ) throws Exception{
		return dao.readImg(lodge_Code);
	}
   
	//위시리스트 
	@Override
	public void insertWish(LodgeVO vo) throws Exception {
		dao.insertWish(vo);
	}
	
	@Override
	public void deleteWish(LodgeVO vo) throws Exception {
		dao.deleteWish(vo);
	}
	
	@Override
	public List<LodgeVO> listWish(LodgeVO vo) throws Exception{
		return dao.listWish(vo);
	}
}

















