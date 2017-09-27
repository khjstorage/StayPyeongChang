package com.staypc.service;


import com.staypc.vo.WishVO;

import java.util.List;

public interface WishService {
    public int insertWish(WishVO vo) throws Exception;
    public void deleteWish(WishVO vo) throws Exception;
    public List<WishVO> listWish(WishVO vo) throws Exception;
    int getWishItem(WishVO vo);
}
