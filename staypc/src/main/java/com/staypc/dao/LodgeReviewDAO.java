package com.staypc.dao;

import java.util.HashMap;
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
		sqlSession.insert("staypc.insert",vo );		
	}

	public LodgeReviewVO read(LodgeReviewVO  vo) throws Exception{	
		return sqlSession.selectOne("staypc.read",  vo);
	}

	public void update(LodgeReviewVO vo) throws Exception{
	     sqlSession.update("staypc.update",  vo);
	}
	
	public int delete(LodgeReviewVO  vo) throws Exception{
		return sqlSession.delete("staypc.delete",vo );
	}
	
	public List<LodgeReviewVO> reviewList(LodgeReviewVO vo) throws Exception{
		return sqlSession.selectList("staypc.reviewList",vo);
	}
	
	public int getTotalCount() throws Exception {
		return sqlSession.selectOne("staypc.getTotalCount");
	}
	
	public void updateReplySort(LodgeReviewVO vo) throws Exception {
		sqlSession.update("staypc.updateSort",vo);
	}
	public int insertReply(LodgeReviewVO vo) throws Exception{
		return sqlSession.insert("staypc.insertReply", vo);
	}
	
	public int deleteAll(LodgeReviewVO vo) throws Exception{
		return sqlSession.delete("staypc.deleteAll", vo);
	}
}
