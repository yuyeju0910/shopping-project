package org.kosta.myproject;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.junit.jupiter.api.Test;
import org.kosta.myproject.model.CategoryVO;
import org.kosta.myproject.model.mapper.AdminMapper;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class SpringBootStudy4TilesApplicationTests {
	@Resource
	AdminMapper ad;
	
	@Test
	void contextLoads() {
		/*
		 * List<Map<String,String>> list =ad.category(); for(Map<String,String> map
		 * :list) System.out.println(map);
		
		String cateCode="100";
		List<Map<String,String>> list2=ad.categoryMiddle(cateCode);
		for(Map<String,String> map2 :list2)
					System.out.println(map2); */

		String middlecateCode="101";
		List<Map<String,String>> list2=ad.showcategory(middlecateCode);
		for(Map<String,String> map2 :list2)
					System.out.println(map2);
		
		
		
	}
	
		
	


	

}
