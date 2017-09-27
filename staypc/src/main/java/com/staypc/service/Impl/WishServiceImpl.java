package com.staypc.service.Impl;

import com.staypc.dao.WishDAO;
import com.staypc.service.WishService;
import com.staypc.vo.WishVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class WishServiceImpl implements WishService{

    @Autowired
    WishDAO dao;

    @Override
    public int insertWish(WishVO vo) throws Exception {
        return dao.insertWish(vo);
    }

    @Override
    public void deleteWish(WishVO vo) throws Exception {
        dao.deleteWish(vo);
    }

    @Override
    public List<WishVO> listWish(WishVO vo) throws Exception{
        return dao.listWish(vo);
    }

    @Override
    public int getWishItem(WishVO vo) {
        return dao.getWishItem(vo);
    }
}
