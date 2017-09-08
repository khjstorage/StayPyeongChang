package com.staypc.service.Impl;

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
	public LodgeReviewVO read(int  review_num) throws Exception{
		return dao.read(review_num);
	}
	
	@Override
	public void update(LodgeReviewVO vo) throws Exception{
		dao.update(vo);
	}
	
	@Override
	public void delete(int  review_num) throws Exception{
		dao.delete(review_num);
	}
	
	@Override
	public List<LodgeReviewVO> reviewList(LodgeReviewVO vo) throws Exception{
		return dao.reviewList(vo);
	}
}
