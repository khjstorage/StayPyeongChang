package com.staypc.vo;

import java.util.Date;

public class LodgeBookVO {

    //  예약코드
    private int bookCode;

    //  숙소코드
    private int lodgeCode;

    //  날짜
    private Date bookDate;

    //  예약가능여부
    private String available;

    public int getBookCode() {
        return bookCode;
    }

    public void setBookCode(int bookCode) {
        this.bookCode = bookCode;
    }

    public int getLodgeCode() {
        return lodgeCode;
    }

    public void setLodgeCode(int lodgeCode) {
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

    @Override
    public String toString() {
        return "LodgeBookVO{" +
                "bookCode=" + bookCode +
                ", lodgeCode=" + lodgeCode +
                ", bookDate=" + bookDate +
                ", available='" + available + '\'' +
                '}';
    }
}