package com.jsplec.bbs.dto;

import java.sql.Timestamp;
public class BDto {
	//Dto는 Bean이므로 database이름과 맞춰주느게 좋다.
	
	int bid;
	String bName;
	String bTitle;
	String bContent;
	Timestamp bDate;
	
	public BDto() {
		// TODO Auto-generated constructor stub
	}
	
	
	
	
	
	public BDto( String bName, String bTitle, String bContent, int bid) {
		super();
		this.bid = bid;
		this.bName = bName;
		this.bTitle = bTitle;
		this.bContent = bContent;
	}





	public BDto(int bid) {
		super();
		this.bid = bid;
	}




	public BDto(int bid, String bName, String bTitle, String bContent, Timestamp bDate) {
		super();
		this.bid = bid;
		this.bName = bName;
		this.bTitle = bTitle;
		this.bContent = bContent;
		this.bDate = bDate;
	}
	public int getBid() {
		return bid;
	}
	public void setBid(int bid) {
		this.bid = bid;
	}
	public String getbName() {
		return bName;
	}
	public void setbName(String bName) {
		this.bName = bName;
	}
	public String getbTitle() {
		return bTitle;
	}
	public void setbTitle(String bTitle) {
		this.bTitle = bTitle;
	}
	public String getbContent() {
		return bContent;
	}
	public void setbContent(String bContent) {
		this.bContent = bContent;
	}
	public Timestamp getbDate() {
		return bDate;
	}
	public void setbDate(Timestamp bDate) {
		this.bDate = bDate;
	}
	
	
	
	
}