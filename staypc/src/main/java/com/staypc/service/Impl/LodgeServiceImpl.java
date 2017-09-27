package com.staypc.service.Impl;

import com.staypc.dao.LodgeDAO;
import com.staypc.service.LodgeService;
import com.staypc.vo.LodgeVO;
import com.staypc.vo.WishVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


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
   

}

















