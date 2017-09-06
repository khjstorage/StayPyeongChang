package com.staypc.vo;

public class LodgeVO {
	private int lno; 				         // 숙소번호
	private int charge; 			     // 1박당 숙박료
	private String location; 		     // 군, 면, 읍, 리까지 주소 ex) 강원 평창군 대관령면 횡계리 
	private String location_detail;    // 리 이하 상세주소 ex) 57-1번지 201호
	private int num; 				     // 최대 인원수
	private String title; 			     // 숙소 제목
	private String room_type;        // 룸타입 ex) 집전체, 개인실, 다인실 중 택1
	private String building_type;     // 건물타입 ex) 주택, 빌딩, 기타 중 택1
	private String guest_only;        // 게스트 전용숙소 ex) Y, N 중 택1
	private int bedroom_cnt;   	     // 침실 총 개수
	private int bed_cnt;   			     // 침대 총 개수
	private String bed_type;          // 침대유형 ex) 침대없음, 1인용, 2인용, 2층침대 중 택1
	private String bathroom_cnt;    // 욕실 개수
	private String bath_guest_only; // 게스트 전용욕실 ex) Y, N 중 택1
	private String convenient;        // 편의시설 ex) WiFi, TV, 수영장, 주차, 부엌 중 다중선택
	private String secure;             // 안전시설 ex) 연기감지기, 구급상자, 소화기, 방잠금장치 중 다중선택
	private String picture;             // 숙소사진
	private String content;            // 숙소설명
	private String summary;          // 숙소설명요약
	private String contact;            // 숙소 연락처
	private String regdate;            // 숙소 등록일
	private String check_in_time;    // 숙소 입실시간 ex) 16:00
	private String check_out_time;  // 숙소 퇴실시간 ex) 12:00
	private int res_deadline;          // 숙소 예약기한 ex) 2 일전 예약기한은 0일(당일)~7일까지 설정가능
	private String email;               // 호스트 이메일
	
	public int getLno() {
		return lno;
	}
	public void setLno(int lno) {
		this.lno = lno;
	}
	public int getCharge() {
		return charge;
	}
	public void setCharge(int charge) {
		this.charge = charge;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getLocation_detail() {
		return location_detail;
	}
	public void setLocation_detail(String location_detail) {
		this.location_detail = location_detail;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getRoom_type() {
		return room_type;
	}
	public void setRoom_type(String room_type) {
		this.room_type = room_type;
	}
	public String getBuilding_type() {
		return building_type;
	}
	public void setBuilding_type(String building_type) {
		this.building_type = building_type;
	}
	public String getGuest_only() {
		return guest_only;
	}
	public void setGuest_only(String guest_only) {
		this.guest_only = guest_only;
	}
	public int getBedroom_cnt() {
		return bedroom_cnt;
	}
	public void setBedroom_cnt(int bedroom_cnt) {
		this.bedroom_cnt = bedroom_cnt;
	}
	public int getBed_cnt() {
		return bed_cnt;
	}
	public void setBed_cnt(int bed_cnt) {
		this.bed_cnt = bed_cnt;
	}
	public String getBed_type() {
		return bed_type;
	}
	public void setBed_type(String bed_type) {
		this.bed_type = bed_type;
	}
	public String getBathroom_cnt() {
		return bathroom_cnt;
	}
	public void setBathroom_cnt(String bathroom_cnt) {
		this.bathroom_cnt = bathroom_cnt;
	}
	public String getBath_guest_only() {
		return bath_guest_only;
	}
	public void setBath_guest_only(String bath_guest_only) {
		this.bath_guest_only = bath_guest_only;
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
	public String getPicture() {
		return picture;
	}
	public void setPicture(String picture) {
		this.picture = picture;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getSummary() {
		return summary;
	}
	public void setSummary(String summary) {
		this.summary = summary;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	public String getCheck_in_time() {
		return check_in_time;
	}
	public void setCheck_in_time(String check_in_time) {
		this.check_in_time = check_in_time;
	}
	public String getCheck_out_time() {
		return check_out_time;
	}
	public void setCheck_out_time(String check_out_time) {
		this.check_out_time = check_out_time;
	}
	public int getRes_deadline() {
		return res_deadline;
	}
	public void setRes_deadline(int res_deadline) {
		this.res_deadline = res_deadline;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}

	@Override
	public String toString() {
		return "Staypc_lodgeVO [lno=" + lno + ", charge=" + charge + ", location=" + location + ", location_detail="
				+ location_detail + ", num=" + num + ", title=" + title + ", room_type=" + room_type
				+ ", building_type=" + building_type + ", guest_only=" + guest_only + ", bedroom_cnt=" + bedroom_cnt
				+ ", bed_cnt=" + bed_cnt + ", bed_type=" + bed_type + ", bathroom_cnt=" + bathroom_cnt
				+ ", bath_guest_only=" + bath_guest_only + ", convenient=" + convenient + ", secure=" + secure
				+ ", picture=" + picture + ", content=" + content + ", summary=" + summary + ", contact=" + contact
				+ ", regdate=" + regdate + ", check_in_time=" + check_in_time + ", check_out_time=" + check_out_time
				+ ", res_deadline=" + res_deadline + ", email=" + email + "]";
	}
	
}
