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

	@RequestMapping("list")
	public String getList(Model model, @RequestParam("m")String middleCateCode,@RequestParam("c")String cateCode) {
		List<GoodsVO> list =shopserivce.list(middleCateCode);
		model.addAttribute("list",list);		
		return "shop/list.tiles";
		
	}
	
	
}
