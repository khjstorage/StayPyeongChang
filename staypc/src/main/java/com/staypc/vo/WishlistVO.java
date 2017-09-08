package com.staypc.vo;

import java.util.Date;

public class WishlistVO {

    //  위시리스트넘버
    private Integer wishlistNum;

    //  숙소코드
    private String lodgeCode;

    //  유저아이디
    private String id;

    //  등록일
    private Date regDate;

    public Integer getWishlistNum() {
        return wishlistNum;
    }

    public void setWishlistNum(Integer wishlistNum) {
        this.wishlistNum = wishlistNum;
    }

    public String getLodgeCode() {
        return lodgeCode;
    }

    public void setLodgeCode(String lodgeCode) {
        this.lodgeCode = lodgeCode;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public Date getRegDate() {
        return regDate;
    }

    public void setRegDate(Date regDate) {
        this.regDate = regDate;
    }

    // WishlistVO 모델 복사
    public void CopyData(WishlistVO param)
    {
        this.wishlistNum = param.getWishlistNum();
        this.lodgeCode = param.getLodgeCode();
        this.id = param.getId();
        this.regDate = param.getRegDate();
    }
}