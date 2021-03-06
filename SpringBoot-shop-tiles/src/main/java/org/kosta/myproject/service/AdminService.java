package org.kosta.myproject.service;

import java.util.List;
import java.util.Map;

import org.kosta.myproject.model.GoodsViewVO;
import org.kosta.myproject.model.MemberVO;
import org.kosta.myproject.model.OrderListVO;
import org.kosta.myproject.model.OrderVO;
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
	void deletePost(int n);
	List<MemberVO>memberList();
	
}
