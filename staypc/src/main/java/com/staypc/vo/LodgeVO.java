package com.staypc.vo;

import java.sql.Timestamp;
import java.util.Date;

public class LodgeVO {
    //  숙소코드
    private Integer lodgeCode;

    //  타이틀
    private String title;

    //  숙소명
    private String roomName;

    //  주소
    private String location;

    //  숙소입실시간
    private Timestamp enterTime;

    //  숙소퇴실시간
    private Timestamp outTime;

    //  1박당 숙박료
    private Integer charge;

    //  숙소연락처
    private String roomPhone;

    //  최대인원수
    private Integer maxPeople;

    //  방타입
    private String roomType;

    //  건물타입
    private String bulidType;

    //  침실개수
    private Integer roomNum;

    //  침대개수
    private Integer bedNum;

    //  편의시설
    private String convenient;

    //  안전시설
    private String secure;

    //  숙소설명
    private String roomExplain;

    //  환불규정
    private String refundProvision;

    //  생성일
    private Date regDate;

    //  수정일
    private Date updateDate;

    //  체크인
    private Date checkIn;

    //  체크아웃
    private Date checkOut;

    public Integer getLodgeCode() {
        return lodgeCode;
    }

    public void setLodgeCode(Integer lodgeCode) {
        this.lodgeCode = lodgeCode;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getRoomName() {
        return roomName;
    }

    public void setRoomName(String roomName) {
        this.roomName = roomName;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public Timestamp getEnterTime() {
        return enterTime;
    }

    public void setEnterTime(Timestamp enterTime) {
        this.enterTime = enterTime;
    }

    public Timestamp getOutTime() {
        return outTime;
    }

    public void setOutTime(Timestamp outTime) {
        this.outTime = outTime;
    }

    public Integer getCharge() {
        return charge;
    }

    public void setCharge(Integer charge) {
        this.charge = charge;
    }

    public String getRoomPhone() {
        return roomPhone;
    }

    public void setRoomPhone(String roomPhone) {
        this.roomPhone = roomPhone;
    }

    public Integer getMaxPeople() {
        return maxPeople;
    }

    public void setMaxPeople(Integer maxPeople) {
        this.maxPeople = maxPeople;
    }

    public String getRoomType() {
        return roomType;
    }

    public void setRoomType(String roomType) {
        this.roomType = roomType;
    }

    public String getBulidType() {
        return bulidType;
    }

    public void setBulidType(String bulidType) {
        this.bulidType = bulidType;
    }

    public Integer getRoomNum() {
        return roomNum;
    }

    public void setRoomNum(Integer roomNum) {
        this.roomNum = roomNum;
    }

    public Integer getBedNum() {
        return bedNum;
    }

    public void setBedNum(Integer bedNum) {
        this.bedNum = bedNum;
    }

    public String getConvenient() {
        return convenient;
    }

    public void setConvenient(String convenient) {
        this.convenient = convenient;
    }

    public String getSecure() {
        return secure;
    }

    public void setSecure(String secure) {
        this.secure = secure;
    }

    public String getRoomExplain() {
        return roomExplain;
    }

    public void setRoomExplain(String roomExplain) {
        this.roomExplain = roomExplain;
    }

    public String getRefundProvision() {
        return refundProvision;
    }

    public void setRefundProvision(String refundProvision) {
        this.refundProvision = refundProvision;
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

    public Date getCheckIn() {
        return checkIn;
    }

    public void setCheckIn(Date checkIn) {
        this.checkIn = checkIn;
    }

    public Date getCheckOut() {
        return checkOut;
    }

    @Override
    public String toString() {
        return "LodgeVO{" +
                "lodgeCode=" + lodgeCode +
                ", title='" + title + '\'' +
                ", roomName='" + roomName + '\'' +
                ", location='" + location + '\'' +
                ", enterTime=" + enterTime +
                ", outTime=" + outTime +
                ", charge=" + charge +
                ", roomPhone='" + roomPhone + '\'' +
                ", maxPeople=" + maxPeople +
                ", roomType='" + roomType + '\'' +
                ", bulidType='" + bulidType + '\'' +
                ", roomNum=" + roomNum +
                ", bedNum=" + bedNum +
                ", convenient='" + convenient + '\'' +
                ", secure='" + secure + '\'' +
                ", roomExplain='" + roomExplain + '\'' +
                ", refundProvision='" + refundProvision + '\'' +
                ", regDate=" + regDate +
                ", updateDate=" + updateDate +
                ", checkIn=" + checkIn +
                ", checkOut=" + checkOut +
                '}';
    }


}
