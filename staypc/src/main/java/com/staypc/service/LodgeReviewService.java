package com.staypc.service;

import java.util.List;
import com.staypc.vo.LodgeReviewVO;

public interface LodgeReviewService {
	
	public void insert(LodgeReviewVO vo) throws Exception;
	public LodgeReviewVO read(LodgeReviewVO vo) throws Exception;
	public void update(LodgeReviewVO vo) throws Exception;
	public int delete(LodgeReviewVO  vo) throws Exception;
	public List<LodgeReviewVO> reviewList(LodgeReviewVO vo) throws Exception;
	public int getTotalCount() throws Exception;
	public void updateReplySort(LodgeReviewVO vo) throws Exception ;
	public int insertReply(LodgeReviewVO vo) throws Exception;
	public int deleteAll(LodgeReviewVO vo) throws Exception;
}
