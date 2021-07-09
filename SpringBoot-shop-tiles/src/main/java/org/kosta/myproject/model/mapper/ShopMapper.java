package org.kosta.myproject.model.mapper;


import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.kosta.myproject.model.CartListVO;
import org.kosta.myproject.model.CartVO;
import org.kosta.myproject.model.GoodsVO;
@Mapper
public interface ShopMapper {

	List<GoodsVO> categorylist(String cateCode);
	List<GoodsVO> categorylist2(String middlecateCode);
	GoodsVO view(int gNum);
	void addCart(CartVO cart);
	List<CartListVO> cartList(String id); 
		
}
