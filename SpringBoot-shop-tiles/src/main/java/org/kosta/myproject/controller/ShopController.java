package org.kosta.myproject.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.kosta.myproject.model.CartListVO;
import org.kosta.myproject.model.CartVO;
import org.kosta.myproject.model.GoodsVO;
import org.kosta.myproject.model.MemberVO;
import org.kosta.myproject.service.ShopService;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

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
	
	
	@PostMapping("views/shop/addCart")
	@ResponseBody
	public int addCart(CartVO cart,HttpSession session) {
		int result =0;
		// 카트에 상품을 담기위해 Spring Security 세션 회원정보를 반환받는다
		MemberVO member = (MemberVO) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		cart.setId(member.getId());
		shopserivce.addCart(cart);
		result =1;		
		return result;		
	}
	@RequestMapping("views/shop/cartList")
	public String  getCartList(Model model) {		
	MemberVO member =(MemberVO) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
	String id= member.getId();
	List<CartListVO>cartList =shopserivce.cartList(id);
	int totalPrice=0;
	for(int i =0; i<cartList.size(); i++) {
	 System.out.println(cartList.get(i).getGdsPrice() *cartList.get(i).getCartStock());
	 int price = cartList.get(i).getGdsPrice() *cartList.get(i).getCartStock();
	 
	 totalPrice+=price;
	}
	System.out.println(totalPrice);
	
	model.addAttribute("totalPrice",totalPrice);
	//${cartList.gdsPrice * cartList.cartStock}"
	model.addAttribute("cartList", cartList);
	//System.out.println(cartList);
	return "shop/cartList.tiles"; 
	}
	/*
	 * @RequestMapping("views/shop/cartList") public String deleteCart(CartVO
	 * cartvo) { shopserivce.deleteCart(cartvo); return "shop/cartList.tiles"; }
	 */
	
	
}
