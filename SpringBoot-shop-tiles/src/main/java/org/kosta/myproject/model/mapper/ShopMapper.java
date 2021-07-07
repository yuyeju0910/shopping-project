package org.kosta.myproject.model.mapper;


import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.kosta.myproject.model.GoodsVO;
@Mapper
public interface ShopMapper {

	List<GoodsVO> list(String middlecateCode);

	
}
