package com.staypc.vo;

import java.sql.Date;

public class NoticeVO {
	private String list_no;
	private String subject, content, id;
	private Date register_datetime;

	public String getList_no() {
		return list_no;
	}

	public void setList_no(String list_no) {
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

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public Date getRegister_datetime() {
		return register_datetime;
	}

	public void setRegister_datetime(Date register_datetime) {
		this.register_datetime = register_datetime;
	}

	@Override
	public String toString() {
		return "NoticeVO{" +
				"list_no='" + list_no + '\'' +
				", subject='" + subject + '\'' +
				", content='" + content + '\'' +
				", id='" + id + '\'' +
				", register_datetime=" + register_datetime +
				'}';
	}
}
