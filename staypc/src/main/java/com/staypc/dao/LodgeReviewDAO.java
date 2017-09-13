package com.staypc.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.staypc.vo.LodgeReviewVO;


@Repository
public class LodgeReviewDAO {
	@Autowired
	SqlSessionTemplate sqlSession;
	
	
	public void insert(LodgeReviewVO vo) throws Exception{
		sqlSession.insert("review.insertBoard",vo );		
	}

	public LodgeReviewVO read(LodgeReviewVO  vo) throws Exception{	
		return sqlSession.selectOne("review.getBoard",  vo);
	}

	public void update(LodgeReviewVO vo) throws Exception{
	     sqlSession.update("review.update",  vo);
	}
	
	public void updateHit(LodgeReviewVO vo) throws Exception{
		 sqlSession.update("review.updateHit", vo);
	}
	public int delete(LodgeReviewVO  vo) throws Exception{
		return sqlSession.delete("review.deleteBoard",vo );
	}
	
	public List<LodgeReviewVO> reviewList(LodgeReviewVO vo) throws Exception{
		return sqlSession.selectList("review.getBoardList",vo);
	}
	
	public int getTotalCount() throws Exception {
		return sqlSession.selectOne("review.getTotalCount");
	}
	
	public void updateReplySort(LodgeReviewVO vo) throws Exception {
		sqlSession.update("review.updateSort",vo);
	}
	public int insertReply(LodgeReviewVO vo) throws Exception{
		return sqlSession.insert("review.insertReply", vo);
	}
	
	public int deleteAll(LodgeReviewVO vo) throws Exception{
		return sqlSession.delete("review.deleteAll", vo);
	}
}
