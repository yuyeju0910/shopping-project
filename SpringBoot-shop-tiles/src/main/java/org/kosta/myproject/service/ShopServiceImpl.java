package org.kosta.myproject.service;

import java.util.List;
import javax.annotation.Resource;

import org.kosta.myproject.model.CartListVO;
import org.kosta.myproject.model.CartVO;
import org.kosta.myproject.model.GoodsVO;
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

	

}




	


	


