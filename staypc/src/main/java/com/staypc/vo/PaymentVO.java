package com.staypc.vo;

import java.util.Date;

public class PaymentVO {

    //  유저아이디
    private String id;

    //  숙소번호
    private Integer lodgeCode;

    //  카드번호
    private String cardNum;

    //  카드유효기간
    private String cardValid;

    //  카드cvc번호
    private String cardCvc;

    //  체크인
    private Date checkIn;

    //  체크아웃
    private Date checkOut;

    //  총결제금액
    private Integer sumMoney;

    //  결제일
    private Date regDate;

    //  결제취소유무
    private String bookCancle;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public Integer getLodgeCode() {
        return lodgeCode;
    }

    public void setLodgeCode(Integer lodgeCode) {
        this.lodgeCode = lodgeCode;
    }

    public String getCardNum() {
        return cardNum;
    }

    public void setCardNum(String cardNum) {
        this.cardNum = cardNum;
    }

    public String getCardValid() {
        return cardValid;
    }

    public void setCardValid(String cardValid) {
        this.cardValid = cardValid;
    }

    public String getCardCvc() {
        return cardCvc;
    }

    public void setCardCvc(String cardCvc) {
        this.cardCvc = cardCvc;
    }

    public Date getCheckIn() {
        return checkIn;
    }

    public void setCheckIn(Date checkIn) {
        this.checkIn = checkIn;
    }

    public Date getCheckOut() {
        return checkOut;
    }

    public void setCheckOut(Date checkOut) {
        this.checkOut = checkOut;
    }

    public Integer getSumMoney() {
        return sumMoney;
    }

    public void setSumMoney(Integer sumMoney) {
        this.sumMoney = sumMoney;
    }

    public Date getRegDate() {
        return regDate;
    }

    public void setRegDate(Date regDate) {
        this.regDate = regDate;
    }

    public String getBookCancle() {
        return bookCancle;
    }

    public void setBookCancle(String bookCancle) {
        this.bookCancle = bookCancle;
    }

    // PaymentVO 모델 복사
    public void CopyData(PaymentVO param)
    {
        this.id = param.getId();
        this.lodgeCode = param.getLodgeCode();
        this.cardNum = param.getCardNum();
        this.cardValid = param.getCardValid();
        this.cardCvc = param.getCardCvc();
        this.checkIn = param.getCheckIn();
        this.checkOut = param.getCheckOut();
        this.sumMoney = param.getSumMoney();
        this.regDate = param.getRegDate();
        this.bookCancle = param.getBookCancle();
    }
}