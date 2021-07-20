package org.kosta.myproject.service;

import java.util.List;
import javax.annotation.Resource;

import org.kosta.myproject.model.CartListVO;
import org.kosta.myproject.model.CartVO;
import org.kosta.myproject.model.GoodsVO;
import org.kosta.myproject.model.OrderDetailVO;
import org.kosta.myproject.model.OrderListVO;
import org.kosta.myproject.model.OrderVO;
import org.kosta.myproject.model.ReplyListVO;
import org.kosta.myproject.model.ReplyVO;
import org.kosta.myproject.model.mapper.ShopMapper;
import org.springframework.stereotype.Service;


@Service
public class ShopServiceImpl implements ShopService{
	@Resource
	private ShopMapper shopMapper;

	@Override
	public List<GoodsVO> categorylist(String cateCode) {
		
		return shopMapper.categorylist(cateCode);
	}

	@Override
	public List<GoodsVO> categorylist2(String middlecateCode) {
		
		return shopMapper.categorylist2(middlecateCode);
	}

	@Override
	public GoodsVO view(int gNum) {
		
		return shopMapper.view(gNum);
	}

	@Override
	public void addCart(CartVO cart) {
		 shopMapper.addCart(cart);
	}

	@Override
	public List<CartListVO> cartList(String id) {
		
		return shopMapper.cartList(id);
	}

	@Override
	public void deleteCart(int cartNum) {
		 shopMapper.deleteCart(cartNum);
	}

	@Override
	public void orderInfo(OrderVO order) {
		shopMapper.orderInfo(order);
	}

	@Override
	public void orderInfo_Details(OrderDetailVO orderDetail) {
		shopMapper.orderInfo_Details(orderDetail);
	}

	@Override
	public void cartAllDelete(String id) {
		shopMapper.cartAllDelete(id);
	}

	@Override
	public List<OrderVO> orderList(OrderVO order) {
		
		return shopMapper.orderList(order);
	}

	@Override
	public List<OrderListVO> orderView(OrderVO order) {
		
		return shopMapper.orderView(order);
	}

	@Override
	public void delivery(OrderVO order) {
		shopMapper.delivery(order);
	}

	@Override
	public void registReply(ReplyVO reply) {
		shopMapper.registReply(reply);
		
	}

	@Override
	public List<ReplyListVO> replyList(int gdsNum) {
		
		return shopMapper.replyList(gdsNum);
	}

	@Override
	public void deleteReply(ReplyVO reply) {
		shopMapper.deleteReply(reply);
	}

	@Override
	public String replyUserIdCheck(int repNum) {
		
		return shopMapper.replyUserIdCheck(repNum);
	}

	@Override
	public List<GoodsVO> findGoods(String gdsName) {
		
		return shopMapper.findGoods(gdsName);
	}

	@Override
	public List<GoodsVO> searchGoods(String gdsName) {
		
		return shopMapper.searchGoods(gdsName);
	}

	@Override
	public List<OrderVO> orderCheckList(OrderVO orderp) {
		
		return shopMapper.orderCheckList(orderp);
	}

	@Override
	public void deleteOrder(String orderId) {
		shopMapper.deleteOrder(orderId);
	}


	@Override
	public List<OrderListVO> orderView2(OrderVO order) {
		
		return shopMapper.orderView2(order);
	}


	


	

}




	


	


