package com.staypc.vo;

import java.util.Date;

public class LodgeBookVO {

    //  예약코드
    private int book_Code;

    //  숙소코드
    private int lodge_Code;

    //  날짜
    private Date book_Date;

    //  예약가능여부
    private String available;

    public int getbook_Code() {
        return book_Code;
    }

    public void setbook_Code(int book_Code) {
        this.book_Code = book_Code;
    }

    public int getlodge_Code() {
        return lodge_Code;
    }

    public void setlodge_Code(int lodge_Code) {
        this.lodge_Code = lodge_Code;
    }

    public Date getbook_Date() {
        return book_Date;
    }

    public void setbook_Date(Date book_Date) {
        this.book_Date = book_Date;
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
                "book_Code=" + book_Code +
                ", lodge_Code=" + lodge_Code +
                ", book_Date=" + book_Date +
                ", available='" + available + '\'' +
                '}';
    }
}