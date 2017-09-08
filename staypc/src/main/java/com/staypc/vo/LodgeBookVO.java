package com.staypc.vo;

import java.util.Date;

public class LodgeBookVO {

    //  예약코드
    private Integer bookCode;

    //  숙소코드
    private Integer lodgeCode;

    //  날짜
    private Date bookDate;

    //  예약가능여부
    private String available;

    public Integer getBookCode() {
        return bookCode;
    }

    public void setBookCode(Integer bookCode) {
        this.bookCode = bookCode;
    }

    public Integer getLodgeCode() {
        return lodgeCode;
    }

    public void setLodgeCode(Integer lodgeCode) {
        this.lodgeCode = lodgeCode;
    }

    public Date getBookDate() {
        return bookDate;
    }

    public void setBookDate(Date bookDate) {
        this.bookDate = bookDate;
    }

    public String getAvailable() {
        return available;
    }

    public void setAvailable(String available) {
        this.available = available;
    }

    // LodgeBookVO 모델 복사
    public void CopyData(LodgeBookVO param)
    {
        this.bookCode = param.getBookCode();
        this.lodgeCode = param.getLodgeCode();
        this.bookDate = param.getBookDate();
        this.available = param.getAvailable();
    }
}