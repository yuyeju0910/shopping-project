package org.kosta.myproject.service;

import java.util.List;
import javax.annotation.Resource;
import org.kosta.myproject.model.GoodsVO;
import org.kosta.myproject.model.mapper.ShopMapper;
import org.springframework.stereotype.Service;


@Service
public class ShopServiceImpl implements ShopService{
	@Resource
	private ShopMapper shopMapper;

	@Override
	public List<GoodsVO> list(String middlecateCode) {
			return shopMapper.list(middlecateCode);
	}




	


	
}

