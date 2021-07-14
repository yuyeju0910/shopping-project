package org.kosta.myproject.model.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.kosta.myproject.model.GoodsVO;
import org.kosta.myproject.model.MemberVO;
@Mapper
public interface AdminMapper {

	List<Map<String,String>> category();
	List<Map<String,String>> categoryMiddle(String cateCode);
	void registergoods(GoodsVO vo);
	List<GoodsVO>productList();
	GoodsVO view(int gNum);
	void productUpdate(GoodsVO goods);
	List<Map<String, String>>showcategory(String middlecateCode); 
	void deletePost(int n);
	List<MemberVO>memberList();
}
