package org.kosta.myproject.model.mapper;


import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.kosta.myproject.model.CartListVO;
import org.kosta.myproject.model.CartVO;
import org.kosta.myproject.model.GoodsVO;
import org.kosta.myproject.model.OrderDetailVO;
import org.kosta.myproject.model.OrderListVO;
import org.kosta.myproject.model.OrderVO;
import org.kosta.myproject.model.ReplyListVO;
import org.kosta.myproject.model.ReplyVO;
@Mapper
public interface ShopMapper {

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
	void registReply(ReplyVO reply);
	List<ReplyListVO> replyList(int gdsNum);
	void deleteReply(ReplyVO reply);
	String replyUserIdCheck(int repNum);
	List<GoodsVO> findGoods(String gdsName);
	List<GoodsVO> searchGoods(String gdsName);
	List<OrderVO>orderCheckList(OrderVO orderp);
	void deleteOrder(String orderId); 
	public List<OrderListVO> orderView2(OrderVO order);
	
	
}
