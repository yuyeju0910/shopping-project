package org.kosta.myproject.service;

import java.util.List;

import org.kosta.myproject.model.CartListVO;
import org.kosta.myproject.model.CartVO;
import org.kosta.myproject.model.GoodsVO;
import org.kosta.myproject.model.OrderDetailVO;
import org.kosta.myproject.model.OrderListVO;
import org.kosta.myproject.model.OrderVO;

public interface ShopService {

	List<GoodsVO> categorylist(String cateCode);
	List<GoodsVO> categorylist2(String middlecateCode);
	GoodsVO view(int gNum);
	void addCart(CartVO cart);
	List<CartListVO> cartList(String id);
	void deleteCart(int cartNum);
	void orderInfo(OrderVO order);
	void orderInfo_Details(OrderDetailVO orderDetail);
	void cartAllDelete(String id);
	List<OrderVO> orderList(OrderVO order);
	List <OrderListVO> orderView(OrderVO order);
	void delivery(OrderVO order);
}
