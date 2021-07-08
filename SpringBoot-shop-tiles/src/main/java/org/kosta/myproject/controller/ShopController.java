package org.kosta.myproject.controller;

import java.util.List;

import javax.annotation.Resource;

import org.kosta.myproject.model.GoodsVO;
import org.kosta.myproject.service.ShopService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ShopController {
	@Resource
	private ShopService shopserivce;

	@RequestMapping("views/shop/list")
	public String getList(@RequestParam("c") String cateCode, Model model) {
		List<GoodsVO> categorylist = shopserivce.categorylist(cateCode);
		model.addAttribute("list", categorylist);
		return "shop/list.tiles";

	}
	
	@RequestMapping("views/shop/list2")
	public String getList2(@RequestParam("m") String middlecateCode, Model model) {
		List<GoodsVO> categorylist2 = shopserivce.categorylist2(middlecateCode);
		model.addAttribute("list2", categorylist2);
		return "shop/list2.tiles";

	}
	
	// 상품 조회
	@RequestMapping("views/shop/view")
	public String view(@RequestParam("n") int gNum,Model model) {
		GoodsVO  goods = 
				shopserivce.view(gNum);
		 model.addAttribute("goods", goods);
		System.out.println(goods);
		return "shop/view.tiles";
	}


}
