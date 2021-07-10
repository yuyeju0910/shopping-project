package org.kosta.myproject.service;

import java.util.List;

import org.kosta.myproject.model.CartListVO;
import org.kosta.myproject.model.CartVO;
import org.kosta.myproject.model.GoodsVO;

public interface ShopService {

	List<GoodsVO> categorylist(String cateCode);
	List<GoodsVO> categorylist2(String middlecateCode);
	GoodsVO view(int gNum);
	void addCart(CartVO cart);
	List<CartListVO> cartList(String id);
	void deleteCart(int cartNum);
}
