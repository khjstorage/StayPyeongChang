package com.staypc.dao;

import com.staypc.vo.LodgeVO;
import com.staypc.vo.WishVO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class WishDAO {

    @Autowired
    SqlSessionTemplate sqlSession;

    //위시리스트 추가
    public int insertWish(WishVO vo) throws Exception{
        int result = sqlSession.insert("wish.insertWish", vo);
        return result;
    }

    //위시리스트 삭제
    public void deleteWish(WishVO vo) throws Exception{
        sqlSession.delete("wish.deleteWish",vo);
    }

    //위시리스트의 리스트
    public List<WishVO> listWish(WishVO vo) throws Exception{
        return sqlSession.selectList("wish.getWishList",vo);
    }

    public int getWishItem(WishVO vo) {
        return sqlSession.selectOne("wish.getWishItem",vo);
    }
}
