package org.kosta.myproject.model;

import java.util.Date;

public class OrderVO {
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
@Override
public String toString() {
	return "OrderVO [orderId=" + orderId + ", id=" + id + ", orderRec=" + orderRec + ", addr1=" + addr1 + ", addr2="
			+ addr2 + ", addr3=" + addr3 + ", orderPhon=" + orderPhon + ", amount=" + amount + ", orderDate="
			+ orderDate + "]";
}


}