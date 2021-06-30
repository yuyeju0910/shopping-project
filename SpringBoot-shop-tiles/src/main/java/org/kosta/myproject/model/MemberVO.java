package org.kosta.myproject.model;

import java.util.Date;

public class MemberVO {
	private String id;
	private String password;
	private String name;
	private String phone;
	private String addr1;
	private String addr2;
	private String addr3;
	private  Date   regiDate;
	private String enabled;
	
	
	
	public MemberVO() {
		super();
		// TODO Auto-generated constructor stub
	}



	public MemberVO(String id, String password, String name, String phone, String addr1, String addr2, String addr3,
			Date regiDate, String enabled) {
		super();
		this.id = id;
		this.password = password;
		this.name = name;
		this.phone = phone;
		this.addr1 = addr1;
		this.addr2 = addr2;
		this.addr3 = addr3;
		this.regiDate = regiDate;
		this.enabled = enabled;
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



	public String getPhone() {
		return phone;
	}



	public void setPhone(String phone) {
		this.phone = phone;
	}



	public String getAddr1() {
		return addr1;
	}



	public void setAddr1(String addr1) {
		this.addr1 = addr1;
	}



	public String getAddr2() {
		return addr2;
	}



	public void setAddr2(String addr2) {
		this.addr2 = addr2;
	}



	public String getAddr3() {
		return addr3;
	}



	public void setAddr3(String addr3) {
		this.addr3 = addr3;
	}



	public Date getRegiDate() {
		return regiDate;
	}



	public void setRegiDate(Date regiDate) {
		this.regiDate = regiDate;
	}



	public String getEnabled() {
		return enabled;
	}



	public void setEnabled(String enabled) {
		this.enabled = enabled;
	}



	@Override
	public String toString() {
		return "MemberVO [id=" + id + ", password=" + password + ", name=" + name + ", phone=" + phone + ", addr1="
				+ addr1 + ", addr2=" + addr2 + ", addr3=" + addr3 + ", regiDate=" + regiDate + ", enabled=" + enabled
				+ "]";
	}
	
	
}