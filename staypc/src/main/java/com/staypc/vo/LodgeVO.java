package com.staypc.vo;

import java.sql.Timestamp;
import java.util.Date;

public class LodgeVO {
    //  숙소코드
    private Integer lodge_Code;

    //  타이틀
    private String title;

    //  숙소명
    private String room_Name;

    //  주소
    private String location;

    //  숙소입실시간
    private Timestamp enter_Time;

    //  숙소퇴실시간
    private Timestamp out_Time;

    //  1박당 숙박료
    private Integer charge;

    //  숙소연락처
    private String room_Phone;

    //  최대인원수
    private Integer max_People;

    //  방타입
    private String room_Type;

    //  건물타입
    private String bulid_Type;

    //  침실개수
    private Integer room_Num;

    //  침대개수
    private Integer bed_Num;

    //  편의시설
    private String convenient;

    //  안전시설
    private String secure;

    //  숙소설명
    private String room_Explain;

    //  환불규정
    private String refund_Provision;

    //  생성일
    private Date reg_Date;

    //  수정일
    private Date update_Date;

    //  체크인
    private Date check_In;

    //  체크아웃
    private Date check_Out;

	public Integer getLodge_Code() {
		return lodge_Code;
	}

	public void setLodge_Code(Integer lodge_Code) {
		this.lodge_Code = lodge_Code;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getRoom_Name() {
		return room_Name;
	}

	public void setRoom_Name(String room_Name) {
		this.room_Name = room_Name;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public Timestamp getEnter_Time() {
		return enter_Time;
	}

	public void setEnter_Time(Timestamp enter_Time) {
		this.enter_Time = enter_Time;
	}

	public Timestamp getOut_Time() {
		return out_Time;
	}

	public void setOut_Time(Timestamp out_Time) {
		this.out_Time = out_Time;
	}

	public Integer getCharge() {
		return charge;
	}

	public void setCharge(Integer charge) {
		this.charge = charge;
	}

	public String getRoom_Phone() {
		return room_Phone;
	}

	public void setRoom_Phone(String room_Phone) {
		this.room_Phone = room_Phone;
	}

	public Integer getMax_People() {
		return max_People;
	}

	public void setMax_People(Integer max_People) {
		this.max_People = max_People;
	}

	public String getRoom_Type() {
		return room_Type;
	}

	public void setRoom_Type(String room_Type) {
		this.room_Type = room_Type;
	}

	public String getBulid_Type() {
		return bulid_Type;
	}

	public void setBulid_Type(String bulid_Type) {
		this.bulid_Type = bulid_Type;
	}

	public Integer getRoom_Num() {
		return room_Num;
	}

	public void setRoom_Num(Integer room_Num) {
		this.room_Num = room_Num;
	}

	public Integer getBed_Num() {
		return bed_Num;
	}

	public void setBed_Num(Integer bed_Num) {
		this.bed_Num = bed_Num;
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

	public String getRoom_Explain() {
		return room_Explain;
	}

	public void setRoom_Explain(String room_Explain) {
		this.room_Explain = room_Explain;
	}

	public String getRefund_Provision() {
		return refund_Provision;
	}

	public void setRefund_Provision(String refund_Provision) {
		this.refund_Provision = refund_Provision;
	}

	public Date getReg_Date() {
		return reg_Date;
	}

	public void setReg_Date(Date reg_Date) {
		this.reg_Date = reg_Date;
	}

	public Date getUpdate_Date() {
		return update_Date;
	}

	public void setUpdate_Date(Date update_Date) {
		this.update_Date = update_Date;
	}

	public Date getCheck_In() {
		return check_In;
	}

	public void setCheck_In(Date check_In) {
		this.check_In = check_In;
	}

	public Date getCheck_Out() {
		return check_Out;
	}

	public void setCheck_Out(Date check_Out) {
		this.check_Out = check_Out;
	}

	@Override
	public String toString() {
		return "LodgeVO [lodge_Code=" + lodge_Code + ", title=" + title + ", room_Name=" + room_Name + ", location="
				+ location + ", enter_Time=" + enter_Time + ", out_Time=" + out_Time + ", charge=" + charge
				+ ", room_Phone=" + room_Phone + ", max_People=" + max_People + ", room_Type=" + room_Type
				+ ", bulid_Type=" + bulid_Type + ", room_Num=" + room_Num + ", bed_Num=" + bed_Num + ", convenient="
				+ convenient + ", secure=" + secure + ", room_Explain=" + room_Explain + ", refund_Provision="
				+ refund_Provision + ", reg_Date=" + reg_Date + ", update_Date=" + update_Date + ", check_In="
				+ check_In + ", check_Out=" + check_Out + "]";
	}


    
}
