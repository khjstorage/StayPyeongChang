package com.staypc.vo;

import java.sql.Date;

public class MemberVO {
	private String id, password, email, name, picture, phone, gender, city, introduction, verify_email,email_yn,phone_yn, city_yn,birth_yn;
	private Date birth_date,regdate;
	private int begin, end;
	public int getBegin() {
		return begin;
	}

	public void setBegin(int begin) {
		this.begin = begin;
	}

	public int getEnd() {
		return end;
	}

	public void setEnd(int end) {
		this.end = end;
	}

	@Override
	public String toString() {
		return "MemberVO [id=" + id + ", password=" + password + ", email=" + email + ", name=" + name + ", picture="
				+ picture + ", phone=" + phone + ", gender=" + gender + ", city=" + city + ", introduction="
				+ introduction + ", verify_email=" + verify_email + ", email_yn=" + email_yn + ", phone_yn=" + phone_yn
				+ ", city_yn=" + city_yn + ", birth_yn=" + birth_yn + ", birth_date=" + birth_date + ", regdate="
				+ regdate + ", getClass()=" + getClass() + ", hashCode()=" + hashCode() + ", toString()="
				+ super.toString() + "]";
	}
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPicture() {
		return picture;
	}
	public void setPicture(String picture) {
		this.picture = picture;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getIntroduction() {
		return introduction;
	}
	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}
	public String getVerify_email() {
		return verify_email;
	}
	public void setVerify_email(String verify_email) {
		this.verify_email = verify_email;
	}
	public String getEmail_yn() {
		return email_yn;
	}
	public void setEmail_yn(String email_yn) {
		this.email_yn = email_yn;
	}
	public String getPhone_yn() {
		return phone_yn;
	}
	public void setPhone_yn(String phone_yn) {
		this.phone_yn = phone_yn;
	}
	public String getCity_yn() {
		return city_yn;
	}
	public void setCity_yn(String city_yn) {
		this.city_yn = city_yn;
	}
	public String getBirth_yn() {
		return birth_yn;
	}
	public void setBirth_yn(String birth_yn) {
		this.birth_yn = birth_yn;
	}
	public Date getBirth_date() {
		return birth_date;
	}
	public void setBirth_date(Date birth_date) {
		this.birth_date = birth_date;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	
	
}
