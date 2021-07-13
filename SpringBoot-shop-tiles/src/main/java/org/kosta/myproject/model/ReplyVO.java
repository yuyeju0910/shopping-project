package org.kosta.myproject.model;

import java.util.Date;

public class ReplyVO {
	
	private int gdsNum;
	private String id;
	private int repNum;
	private String repCon;
	private Date repDate;
	public int getGdsNum() {
		return gdsNum;
	}
	public void setGdsNum(int gdsNum) {
		this.gdsNum = gdsNum;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getRepNum() {
		return repNum;
	}
	public void setRepNum(int repNum) {
		this.repNum = repNum;
	}
	public String getRepCon() {
		return repCon;
	}
	public void setRepCon(String repCon) {
		this.repCon = repCon;
	}
	public Date getRepDate() {
		return repDate;
	}
	public void setRepDate(Date repDate) {
		this.repDate = repDate;
	}
	@Override
	public String toString() {
		return "ReplyVO [gdsNum=" + gdsNum + ", id=" + id + ", repNum=" + repNum + ", repCon=" + repCon + ", repDate="
				+ repDate + "]";
	}
	

}
