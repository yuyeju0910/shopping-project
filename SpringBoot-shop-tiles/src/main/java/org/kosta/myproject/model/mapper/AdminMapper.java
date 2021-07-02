package org.kosta.myproject.model.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
@Mapper
public interface AdminMapper {

	List<Map<String,String>> category();
	List<Map<String,String>> categoryMiddle(String cateCode);
}
