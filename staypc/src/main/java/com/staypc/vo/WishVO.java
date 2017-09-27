package com.staypc.vo;

import java.util.Date;

public class WishVO {
    private int lodge_Code;
    private String id;
    private String title;
    private Date reg_date;

    @Override
    public String toString() {
        return "WishVO{" +
                "lodge_Code=" + lodge_Code +
                ", id='" + id + '\'' +
                ", title='" + title + '\'' +
                ", reg_date=" + reg_date +
                '}';
    }

    public int getLodge_Code() {
        return lodge_Code;
    }

    public void setLodge_Code(int lodge_Code) {
        this.lodge_Code = lodge_Code;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public Date getReg_date() {
        return reg_date;
    }

    public void setReg_date(Date reg_date) {
        this.reg_date = reg_date;
    }
}
