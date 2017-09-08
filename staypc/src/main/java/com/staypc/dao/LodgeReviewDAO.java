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
		sqlSession.insert("staypc.insert",vo );		
	}

	public LodgeReviewVO read(int  review_num) throws Exception{	
		return sqlSession.selectOne("staypc.read",  review_num);
	}

	public void update(LodgeReviewVO vo) throws Exception{
	     sqlSession.update("staypc.update",  vo);
	}
	
	public void delete(int  review_num) throws Exception{
		 sqlSession.delete("staypc.delete",review_num );
	}
	
	public List<LodgeReviewVO> reviewList(LodgeReviewVO vo) throws Exception{
		return sqlSession.selectList("staypc.reviewList",vo);
	}
	
}
