package org.kosta.myproject.service;

import java.util.List;

import org.kosta.myproject.model.GoodsVO;

public interface ShopService {

	List<GoodsVO> list(String middlecateCode);

	List<GoodsVO> list(String cateCode, String middlecateCode);
}
