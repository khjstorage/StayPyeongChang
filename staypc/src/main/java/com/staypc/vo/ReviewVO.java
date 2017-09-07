package com.staypc.vo;

import java.util.Date;

public class ReviewVO {

    //  리뷰코드
    private Integer reviewNum;

    //  유저아이디
    private String id;

    //  숙소코드
    private String lodgeCode;

    //  내용
    private String content;

    //  등록일
    private Date regDate;

    //  수정일
    private Date updateDate;

    //  별점
    private Integer grade;

    public Integer getReviewNum() {
        return reviewNum;
    }

    public void setReviewNum(Integer reviewNum) {
        this.reviewNum = reviewNum;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getLodgeCode() {
        return lodgeCode;
    }

    public void setLodgeCode(String lodgeCode) {
        this.lodgeCode = lodgeCode;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Date getRegDate() {
        return regDate;
    }

    public void setRegDate(Date regDate) {
        this.regDate = regDate;
    }

    public Date getUpdateDate() {
        return updateDate;
    }

    public void setUpdateDate(Date updateDate) {
        this.updateDate = updateDate;
    }

    public Integer getGrade() {
        return grade;
    }

    public void setGrade(Integer grade) {
        this.grade = grade;
    }

    // ReviewVO 모델 복사
    public void CopyData(ReviewVO param)
    {
        this.reviewNum = param.getReviewNum();
        this.id = param.getId();
        this.lodgeCode = param.getLodgeCode();
        this.content = param.getContent();
        this.regDate = param.getRegDate();
        this.updateDate = param.getUpdateDate();
        this.grade = param.getGrade();
    }
}