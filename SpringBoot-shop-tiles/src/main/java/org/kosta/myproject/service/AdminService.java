package org.kosta.myproject.service;

import java.util.List;
import java.util.Map;

import org.kosta.myproject.model.CategoryVO;
import org.kosta.myproject.model.GoodsVO;

public interface AdminService {
	List<Map<String, String>> category();
	List<Map<String, String>> categoryMiddle(String categoryCode);
	void registergoods(GoodsVO vo);
	List<GoodsVO>productList();
	GoodsVO view(int gNum);
	void productUpdate(GoodsVO goods);
	List<Map<String, String>>showcategory(String middlecateCode); 
}
