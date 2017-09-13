package com.staypc.vo;

import java.sql.Date;

public class LodgeReviewVO {
	private int review_num;
	private String id;
	private String lodge_code;
	private String content;
	private Date reg_date;
	private Date update_date;
	private int grade;
	private int parent; 
	private int sort; 
	private int tab;
	
	public int getReview_num() {
		return review_num;
	}
	public void setReview_num(int review_num) {
		this.review_num = review_num;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getLodge_code() {
		return lodge_code;
	}
	public void setLodge_code(String lodge_code) {
		this.lodge_code = lodge_code;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getReg_date() {
		return reg_date;
	}
	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}
	public Date getUpdate_date() {
		return update_date;
	}
	public void setUpdate_date(Date update_date) {
		this.update_date = update_date;
	}
	public int getGrade() {
		return grade;
	}
	public void setGrade(int grade) {
		this.grade = grade;
	}
	public int getParent() {
		return parent;
	}
	public void setParent(int parent) {
		this.parent = parent;
	}
	public int getSort() {
		return sort;
	}
	public void setSort(int sort) {
		this.sort = sort;
	}
	public int getTab() {
		return tab;
	}
	public void setTab(int tab) {
		this.tab = tab;
	}
	
	
	@Override
	public String toString() {
		return "LodgeReviewVO [review_num=" + review_num + ", id=" + id + ", lodge_code=" + lodge_code + ", content="
				+ content + ", reg_date=" + reg_date + ", update_date=" + update_date + ", grade=" + grade + ", parent="
				+ parent + ", sort=" + sort + ", tab=" + tab + "]";
	} 
	
	
	
}
