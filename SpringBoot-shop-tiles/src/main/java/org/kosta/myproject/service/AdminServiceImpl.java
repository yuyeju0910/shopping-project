package org.kosta.myproject.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.kosta.myproject.model.GoodsVO;
import org.kosta.myproject.model.mapper.AdminMapper;
import org.springframework.stereotype.Service;


@Service
public class AdminServiceImpl implements AdminService{
	@Resource
	private AdminMapper adminMapper;

	@Override
	public List<Map<String, String>> category() {
		return adminMapper.category();
	}
	@Override
	public List<Map<String, String>> categoryMiddle(String categoryCode){
		return adminMapper.categoryMiddle(categoryCode);
	}
	@Override
	public void registergoods(GoodsVO vo) {
		adminMapper.registergoods(vo);
	}
	
	@Override
	public List<GoodsVO>productList(){
	 return adminMapper.productList();
	}
	@Override
	public GoodsVO view(int gNum) {
		return adminMapper.view(gNum);
	}
	@Override
	public void productUpdate(GoodsVO goods) {
		adminMapper.productUpdate(goods);
	}
	@Override
	public List<Map<String, String>> showcategory(String middlecateCode) {
		return adminMapper.showcategory(middlecateCode);
	}
	
	


	
}

