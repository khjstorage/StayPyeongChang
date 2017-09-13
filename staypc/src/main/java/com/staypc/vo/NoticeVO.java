package com.staypc.vo;

import java.sql.Date;

public class NoticeVO {
	private String list_no;
	private String subject, content, writer, password;
	private Date register_datetime;
	
	public String getlist_no() {
		return list_no;
	}
	public void setNo(String list_no) {
		this.list_no = list_no;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Date getRegister_datetime() {
		return register_datetime;
	}
	public void setRegister_datetime(Date register_datetime) {
		this.register_datetime = register_datetime;
	}
	
	@Override
	public String toString() {
		return "NoticeVO [no=" + list_no + ", subject=" + subject + ", content=" + content + ", writer=" + writer
				+ ", password=" + password + ", register_datetime=" + register_datetime + "]";
	}
}
