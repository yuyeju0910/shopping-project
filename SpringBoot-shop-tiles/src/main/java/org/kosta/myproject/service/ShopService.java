package org.kosta.myproject.service;

import java.util.List;

import org.kosta.myproject.model.GoodsVO;

public interface ShopService {

	List<GoodsVO> categorylist(String cateCode);
	List<GoodsVO> categorylist2(String middlecateCode);
}
