package org.kosta.myproject.controller;

import java.util.List;

import javax.annotation.Resource;

import org.kosta.myproject.model.GoodsVO;
import org.kosta.myproject.service.ShopService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	@Resource
	private ShopService shopserivce;
	

	
	@RequestMapping(value={"/","home"})
	public String home() {
		// db, model 과 연동 
		// tiles-config.xml 에 정의된 definition name인 home.tiles를 이용해
		// view를 제공 
		System.out.println("home");
		return "home.tiles";
	}
	
	
	@RequestMapping("accessDeniedView")
	public String accessDeniedView() {
		return "auth/accessDeniedView";
	}
	

	
	@RequestMapping("admin")
	public String admin() {
		return "admin/admin.tiles";
	}
	@RequestMapping("adminLogin")
	public String adminLogin() {
		return "admin/adminLogin.tiles";
	}

	@RequestMapping("product-details")
	public String productDetails() {
		return "product-details.tiles";
	}
	@RequestMapping("cart")
	public String cart() {
		return "cart.tiles";
	}
	
	@RequestMapping("contact")
	public String contact() {
		return "contact.tiles";
	}
	
	@RequestMapping("portfolio")
	public String portfolio() {
		return "portfolio.tiles";
	}
	
	@RequestMapping("about")
	public String about() {
		return "about.tiles";
	}
	

	@RequestMapping("noneTiles")
	public String noneTiles() {
		return "noneTiles"; // .tiles 가 적용되지 않았으므로 기존의 InternalResourceViewResolver가 동작한다 
		// WEB-INF/views/noneTiles.jsp 로 응답된다 
	}
}







