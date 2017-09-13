package com.staypc.vo;

import java.sql.Timestamp;
import java.util.Arrays;
import java.util.Date;

public class LodgeVO {
    //  숙소코드
    private int lodge_Code;
	// 유저아이디
	private String id;
    //  타이틀
    private String title;
    //  숙소명
    private String room_Name;
    //  주소
    private String location;
    //  숙소입실시간
    private String enter_Time;
    //  숙소퇴실시간
    private String out_Time;
	//  체크인
	private String check_In;
	//  체크아웃
	private String check_Out;
    //  1박당 숙박료
    private int charge;
    //  숙소연락처
    private String room_Phone;
    //  최대인원수
    private String max_People;
    //  방타입
    private String room_Type;
    //  건물타입
    private String bulid_Type;
    //  침실개수
    private String room_Num;
    //  침대개수
    private String bed_Num;
    // 침대유형
	private String bed_Type;
    //  편의시설
    private String convenient;
    //  안전시설
    private String secure;
    //  숙소설명
    private String room_Explain;
    //  환불규정
    private String refund_Provision;
    // 이미지
	private String main_Image;
    //  생성일
    private Date reg_Date;
    //  수정일
    private Date update_Date;
    //  방사진
	private String[] files;
	// 날짜 차이
	private int diffDay;
	
	private String book_date;
	
	
	public String getBook_date() {
		return book_date;
	}
	public void setBook_date(String book_date) {
		this.book_date = book_date;
	}
	public int getDiffDay() {
		return diffDay;
	}
	public void setDiffDay(int diffDay) {
		this.diffDay = diffDay;
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
	public String getEnter_Time() {
		return enter_Time;
	}
	public void setEnter_Time(String enter_Time) {
		this.enter_Time = enter_Time;
	}
	public String getOut_Time() {
		return out_Time;
	}
	public void setOut_Time(String out_Time) {
		this.out_Time = out_Time;
	}
	public String getCheck_In() {
		return check_In;
	}
	public void setCheck_In(String check_In) {
		this.check_In = check_In;
	}
	public String getCheck_Out() {
		return check_Out;
	}
	public void setCheck_Out(String check_Out) {
		this.check_Out = check_Out;
	}
	public int getCharge() {
		return charge;
	}
	public void setCharge(int charge) {
		this.charge = charge;
	}
	public String getRoom_Phone() {
		return room_Phone;
	}
	public void setRoom_Phone(String room_Phone) {
		this.room_Phone = room_Phone;
	}
	public String getMax_People() {
		return max_People;
	}
	public void setMax_People(String max_People) {
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
	public String getRoom_Num() {
		return room_Num;
	}
	public void setRoom_Num(String room_Num) {
		this.room_Num = room_Num;
	}
	public String getBed_Num() {
		return bed_Num;
	}
	public void setBed_Num(String bed_Num) {
		this.bed_Num = bed_Num;
	}
	public String getBed_Type() {
		return bed_Type;
	}
	public void setBed_Type(String bed_Type) {
		this.bed_Type = bed_Type;
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

	public String getMain_Image() {
		return main_Image;
	}

	public void setMain_Image(String main_Image) {
		this.main_Image = main_Image;
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

	public String[] getFiles() {
		return files;
	}

	public void setFiles(String[] files) {
		this.files = files;
	}
	
	@Override
	public String toString() {
		return "LodgeVO{" +
				"lodge_Code=" + lodge_Code +
				", id='" + id + '\'' +
				", title='" + title + '\'' +
				", room_Name='" + room_Name + '\'' +
				", location='" + location + '\'' +
				", enter_Time='" + enter_Time + '\'' +
				", out_Time='" + out_Time + '\'' +
				", check_In='" + check_In + '\'' +
				", check_Out='" + check_Out + '\'' +
				", charge=" + charge +
				", room_Phone='" + room_Phone + '\'' +
				", max_People='" + max_People + '\'' +
				", room_Type='" + room_Type + '\'' +
				", bulid_Type='" + bulid_Type + '\'' +
				", room_Num='" + room_Num + '\'' +
				", bed_Num='" + bed_Num + '\'' +
				", bed_Type='" + bed_Type + '\'' +
				", convenient='" + convenient + '\'' +
				", secure='" + secure + '\'' +
				", room_Explain='" + room_Explain + '\'' +
				", refund_Provision='" + refund_Provision + '\'' +
				", main_Image='" + main_Image + '\'' +
				", reg_Date=" + reg_Date +
				", update_Date=" + update_Date +
				", files=" + Arrays.toString(files) +
				'}';
	}

	
}
