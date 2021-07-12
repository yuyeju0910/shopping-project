package org.kosta.myproject.service;

import java.util.List;
import javax.annotation.Resource;

import org.kosta.myproject.model.CartListVO;
import org.kosta.myproject.model.CartVO;
import org.kosta.myproject.model.GoodsVO;
import org.kosta.myproject.model.OrderDetailVO;
import org.kosta.myproject.model.OrderListVO;
import org.kosta.myproject.model.OrderVO;
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


	

}




	


	


