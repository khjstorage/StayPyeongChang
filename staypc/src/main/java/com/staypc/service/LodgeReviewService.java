package com.staypc.service;

import java.util.List;
import com.staypc.vo.LodgeReviewVO;

public interface LodgeReviewService {
	
	public void insert(LodgeReviewVO vo) throws Exception;
	public LodgeReviewVO read(int  review_num) throws Exception;
	public void update(LodgeReviewVO vo) throws Exception;
	public void delete(int  review_num) throws Exception;
	public List<LodgeReviewVO> reviewList(LodgeReviewVO vo) throws Exception;
}
