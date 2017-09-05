package com.staypc.vo;

import org.springframework.web.multipart.MultipartFile;

import java.util.Date;


public class LoginVO {
    private String id;
    private String password;
    private String name;
    private String email;
    private String birth_date;
    private String picture;
    private MultipartFile uploadFile;
    private String phone;
    private String gender;
    private String city;
    private String introduction;
    private Date regdate;
    private char verify_email;
    private char verify_phone;
    private char verify_host;
    private int credit;

    @Override
    public String toString() {
        return "LoginVO{" +
                "id='" + id + '\'' +
                ", password='" + password + '\'' +
                ", name='" + name + '\'' +
                ", email='" + email + '\'' +
                ", birth_date='" + birth_date + '\'' +
                ", picture='" + picture + '\'' +
                ", uploadFile=" + uploadFile +
                ", phone='" + phone + '\'' +
                ", gender=" + gender +
                ", city='" + city + '\'' +
                ", introduction='" + introduction + '\'' +
                ", regdate=" + regdate +
                ", verify_email=" + verify_email +
                ", verify_phone=" + verify_phone +
                ", verify_host=" + verify_host +
                ", credit=" + credit +
                '}';
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

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getBirth_date() {
        return birth_date;
    }

    public void setBirth_date(String birth_date) {
        this.birth_date = birth_date;
    }

    public String getPicture() {
        return picture;
    }

    public void setPicture(String picture) {
        this.picture = picture;
    }

    public MultipartFile getUploadFile() {
        return uploadFile;
    }

    public void setUploadFile(MultipartFile uploadFile) {
        this.uploadFile = uploadFile;
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

    public Date getRegdate() {
        return regdate;
    }

    public void setRegdate(Date regdate) {
        this.regdate = regdate;
    }

    public char getVerify_email() {
        return verify_email;
    }

    public void setVerify_email(char verify_email) {
        this.verify_email = verify_email;
    }

    public char getVerify_phone() {
        return verify_phone;
    }

    public void setVerify_phone(char verify_phone) {
        this.verify_phone = verify_phone;
    }

    public char getVerify_host() {
        return verify_host;
    }

    public void setVerify_host(char verify_host) {
        this.verify_host = verify_host;
    }

    public int getCredit() {
        return credit;
    }

    public void setCredit(int credit) {
        this.credit = credit;
    }
}