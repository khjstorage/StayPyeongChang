package com.staypc.service.Impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.staypc.dao.LodgeReviewDAO;
import com.staypc.service.LodgeReviewService;
import com.staypc.vo.LodgeReviewVO;
@Service
public class LodgeReviewServiceImpl implements LodgeReviewService {
	
	@Autowired
	private LodgeReviewDAO dao;
	
	@Override
	public void insert(LodgeReviewVO vo) throws Exception{
		dao.insert(vo);
	}
	@Override
	public LodgeReviewVO read(LodgeReviewVO vo) throws Exception{
		return dao.read(vo);
	}
	
	@Override
	public void update(LodgeReviewVO vo) throws Exception{
		dao.update(vo);
	}
	
	@Override
	public void updateHit(LodgeReviewVO vo)throws Exception{
		dao.updateHit(vo);
	}
	
	@Override
	public int delete(LodgeReviewVO vo) throws Exception{
		return dao.delete(vo);
	}
	
	@Override
	public List<LodgeReviewVO> reviewList(HashMap<String, String> map) throws Exception{
		return dao.reviewList(map);
	}
	
	@Override	
	public int getTotalCount() throws Exception{
		return dao.getTotalCount();
	}
	
	@Override	
	public void updateReplySort(LodgeReviewVO vo) throws Exception {
		dao.updateReplySort(vo);
	}
	
	@Override
	public int insertReply(LodgeReviewVO vo) throws Exception{
		return dao.insertReply(vo);
	}
	
	@Override
	public int deleteAll(LodgeReviewVO vo) throws Exception{
		return dao.deleteAll(vo);
	}
}
