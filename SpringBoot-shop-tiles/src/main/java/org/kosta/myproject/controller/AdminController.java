package org.kosta.myproject.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale.Category;
import java.util.Map;

import javax.annotation.Resource;

import org.kosta.myproject.model.CategoryVO;
import org.kosta.myproject.model.GoodsVO;
import org.kosta.myproject.service.AdminService;
import org.springframework.security.access.annotation.Secured;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("admin")
public class AdminController {
	
	@Resource
	private AdminService adminService;
	
	/* 
	 * @Secure 어노테이션: 인가 처리하는 어노테이션 - 권한이 부여된 사람들만 서비스를 제공받도록 설정한다 
	 * @Secured("ROLE_ADMIN") -> ROLE_ADMIN 권한이 있는 접속자만 서비스를 받을 수 있다 
										 인가가 되지 않은 경우에는 WebSecurityConfig에서 설정한 대로 
										 accessDeniedPage("/accessDeniedView") 로 이동한다 
	 */
	@Secured("ROLE_ADMIN")
	@RequestMapping("main")
	public String adminMain() {
		// 구현내용 
		return "admin/main.tiles";
	}
	
	@RequestMapping("goods/registerProductForm")
	public String registerForm(Model model) {
		List<Map<String,String>>category =null;// CatagoryVO 형태의 List형 변수 category 선언
		  category=adminService.category();
		 System.out.println("category:"+ category); 
		 model.addAttribute("category", category);
		return "admin/goods/registerProductForm.tiles";
	}
	
	@RequestMapping("goods/registerAjax")
	@ResponseBody
	public List<Map<String,String>> registerAjax(Model model,String categoryCode) {
		List<Map<String,String>>categoryMiddle =adminService.categoryMiddle(categoryCode); 
		 //model.addAttribute("middleCategory", categoryMiddle); 페이지가아니라 필요한데이터응답만 받아서
		//return "admin/goods/registerProductForm.tiles";
		System.out.println(categoryMiddle);
		return categoryMiddle;
	}
	
	@PostMapping("goods/registergoods")	
	public String registergoods(GoodsVO vo) {
		System.out.println("registergoods 시작");
		adminService.registergoods(vo);
		System.out.println("registergoods 완료");
		return "redirect:/admin/goods/registergoods-result";	
	}
	
	@RequestMapping("goods/registergoods-result")
	public String registerend() {
		return "admin/goods/registergoods-ok.tiles";
	}
	
	@RequestMapping("goods/productList")
	public String productList(Model model) {
		List<GoodsVO>productlist =adminService.productList();
		model.addAttribute("productList", productlist);
		return "admin/goods/productList.tiles";
	}
	
	@RequestMapping("goods/view")
	public String view(@RequestParam("n") int gNum,Model model) {
		GoodsVO  goods = 
		adminService.view(gNum);
		 model.addAttribute("goods", goods);
		return "admin/goods/view.tiles";
	}

	@RequestMapping("goods/productUpdate")//form
	public String productUpdate(@RequestParam("n") int gNum,Model model) {
		List<Map<String,String>>category =null;// CatagoryVO 형태의 List형 변수 category 선언
		GoodsVO vo=adminService.view(gNum);		  
		category=adminService.showcategory(vo.getMiddlecateCode());
		model.addAttribute("goods",vo );
		model.addAttribute("category", category);
		return "admin/goods/productUpdate.tiles";
	}
	

	
	@RequestMapping("goods/productUpdateSuccess")//수정
	public ModelAndView productUpdateSuccess(GoodsVO update,Model model) {
		System.out.println("productUpdate");
		adminService.productUpdate(update);
		return new ModelAndView("redirect:admin/goods/view.tiles?n="
				+ update.getGdsNum());
	}
	
	
	
	
}
