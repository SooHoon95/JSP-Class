package com.jsplec.bbs.dto;

public class Dto_findId {

	String findId;
	String findmsg;
	int findchk;
	
	
	
	
	public Dto_findId() {
		// TODO Auto-generated constructor stub
	}
	
	
	
public Dto_findId(String findId, int findchk) {
		super();
		this.findId = findId;
		this.findchk = findchk;
	}



	public Dto_findId(int findchk) {
	super();
	this.findchk = findchk;
}

	


	public Dto_findId(String findId) {
		super();
		this.findId = findId;
	}



	//method
	public String getFindId() {
		return findId;
	}

	public void setFindId(String findId) {
		this.findId = findId;
	}

	public String getFindmsg() {
		return findmsg;
	}

	public void setFindmsg(String findmsg) {
		this.findmsg = findmsg;
	}

	public int getFindchk() {
		return findchk;
	}

	public void setFindchk(int findchk) {
		this.findchk = findchk;
	}
	
	
	
	
	
	
	
}
