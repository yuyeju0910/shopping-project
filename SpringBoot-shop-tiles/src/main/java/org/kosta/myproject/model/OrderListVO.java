package org.kosta.myproject.model;

import java.util.Date;

public class OrderListVO {
/**
 * create table tbl_order(
orderId varchar2(50) not null,
id  varchar2(50) not null,
orderRec varchar2(50) not null,
addr1 varchar2(50) not null,
addr2 varchar2(50) not null,
addr3 varchar2(50) not null,
orderPhon varchar2(50) not null,
amount number not null,
orderDate Date default sysdate,
 */
private String orderId;
private String id;
private String orderRec;
private String addr1;
private String addr2;
private String addr3;
private String orderPhon;
private int amount;
private Date orderDate;

private int orderDetailsNum;
private int gdsNum;
private int cartStock;

private String gdsName;
private String gdsThumbImg;
private  int gdsPrice;
private String delivery;
public String getOrderId() {
	return orderId;
}
public void setOrderId(String orderId) {
	this.orderId = orderId;
}
public String getId() {
	return id;
}
public void setId(String id) {
	this.id = id;
}
public String getOrderRec() {
	return orderRec;
}
public void setOrderRec(String orderRec) {
	this.orderRec = orderRec;
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
public String getOrderPhon() {
	return orderPhon;
}
public void setOrderPhon(String orderPhon) {
	this.orderPhon = orderPhon;
}
public int getAmount() {
	return amount;
}
public void setAmount(int amount) {
	this.amount = amount;
}
public Date getOrderDate() {
	return orderDate;
}
public void setOrderDate(Date orderDate) {
	this.orderDate = orderDate;
}
public int getOrderDetailsNum() {
	return orderDetailsNum;
}
public void setOrderDetailsNum(int orderDetailsNum) {
	this.orderDetailsNum = orderDetailsNum;
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
public String getGdsName() {
	return gdsName;
}
public void setGdsName(String gdsName) {
	this.gdsName = gdsName;
}
public String getGdsThumbImg() {
	return gdsThumbImg;
}
public void setGdsThumbImg(String gdsThumbImg) {
	this.gdsThumbImg = gdsThumbImg;
}
public int getGdsPrice() {
	return gdsPrice;
}
public void setGdsPrice(int gdsPrice) {
	this.gdsPrice = gdsPrice;
}
public String getDelivery() {
	return delivery;
}
public void setDelivery(String delivery) {
	this.delivery = delivery;
}
@Override
public String toString() {
	return "OrderListVO [orderId=" + orderId + ", id=" + id + ", orderRec=" + orderRec + ", addr1=" + addr1 + ", addr2="
			+ addr2 + ", addr3=" + addr3 + ", orderPhon=" + orderPhon + ", amount=" + amount + ", orderDate="
			+ orderDate + ", orderDetailsNum=" + orderDetailsNum + ", gdsNum=" + gdsNum + ", cartStock=" + cartStock
			+ ", gdsName=" + gdsName + ", gdsThumbImg=" + gdsThumbImg + ", gdsPrice=" + gdsPrice + ", delivery="
			+ delivery + "]";
}




}