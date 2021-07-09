package org.kosta.myproject.model;

import java.util.Date;

public class CartListVO {

	private int cartNum;
	private String id;
	private int gdsNum;
	private int cartStock;
	private Date addDate;
	
	private int num;
	private String gdsName;
	private int gdsPrice;
	private String gdsThumImg;
	public int getCartNum() {
		return cartNum;
	}
	public void setCartNum(int cartNum) {
		this.cartNum = cartNum;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getGdsNum() {
		return gdsNum;
	}
	public void setGdsNum(int gdsNum) {
		this.gdsNum = gdsNum;
	}
	public int getCartStock() {
		return cartStock;
	}
	public void setCartStock(int cartStock) {
		this.cartStock = cartStock;
	}
	public Date getAddDate() {
		return addDate;
	}
	public void setAddDate(Date addDate) {
		this.addDate = addDate;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getGdsName() {
		return gdsName;
	}
	public void setGdsName(String gdsName) {
		this.gdsName = gdsName;
	}
	public int getGdsPrice() {
		return gdsPrice;
	}
	public void setGdsPrice(int gdsPrice) {
		this.gdsPrice = gdsPrice;
	}
	public String getGdsThumImg() {
		return gdsThumImg;
	}
	public void setGdsThumImg(String gdsThumImg) {
		this.gdsThumImg = gdsThumImg;
	}
	@Override
	public String toString() {
		return "CartListVO [cartNum=" + cartNum + ", id=" + id + ", gdsNum=" + gdsNum + ", cartStock=" + cartStock
				+ ", addDate=" + addDate + ", num=" + num + ", gdsName=" + gdsName + ", gdsPrice=" + gdsPrice
				+ ", gdsThumImg=" + gdsThumImg + "]";
	}
	
	

	
	
			
}