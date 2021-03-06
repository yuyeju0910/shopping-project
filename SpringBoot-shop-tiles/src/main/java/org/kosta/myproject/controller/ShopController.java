package org.kosta.myproject.controller;

import java.text.DecimalFormat;
import java.util.Calendar;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.kosta.myproject.model.CartListVO;
import org.kosta.myproject.model.CartVO;
import org.kosta.myproject.model.GoodsVO;
import org.kosta.myproject.model.MemberVO;
import org.kosta.myproject.model.OrderDetailVO;
import org.kosta.myproject.model.OrderListVO;
import org.kosta.myproject.model.OrderVO;
import org.kosta.myproject.model.ReplyListVO;
import org.kosta.myproject.model.ReplyVO;
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

	// ์ํ ์กฐํ
	@RequestMapping("views/shop/view")
	public String view(@RequestParam("n") int gNum, Model model) {
		GoodsVO goods = shopserivce.view(gNum);
		model.addAttribute("goods", goods);
	
		/*
		 * List<ReplyListVO> reply =shopserivce.replyList(gNum);
		 * model.addAttribute("reply", reply);
		 * System.out.println(reply);
		 */
		
		
		return "shop/view.tiles";
	}

	@PostMapping("views/shop/addCart")
	@ResponseBody
	public int addCart(CartVO cart, HttpSession session) {
		int result = 0;
		// ์นดํธ์ ์ํ์ ๋ด๊ธฐ์ํด Spring Security ์ธ์ ํ์์?๋ณด๋ฅผ ๋ฐํ๋ฐ๋๋ค
		MemberVO member = (MemberVO) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		cart.setId(member.getId());
		shopserivce.addCart(cart);
		result = 1;
		return result;
	}

	@RequestMapping("views/shop/cartList")
	public String getCartList(Model model) {
		MemberVO member = (MemberVO) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		String id = member.getId();
		List<CartListVO> cartList = shopserivce.cartList(id);
		int totalPrice = 0;
		for (int i = 0; i < cartList.size(); i++) {
			System.out.println(cartList.get(i).getGdsPrice() * cartList.get(i).getCartStock());
			int price = cartList.get(i).getGdsPrice() * cartList.get(i).getCartStock();

			totalPrice += price;
		}
		System.out.println(totalPrice);

		model.addAttribute("totalPrice", totalPrice);
		// ${cartList.gdsPrice * cartList.cartStock}"
		model.addAttribute("cartList", cartList);
		// System.out.println(cartList);
		return "shop/cartList.tiles";
	}
	/*
	 * @RequestMapping("views/shop/cartList") public String deleteCart(CartVO
	 * cartvo) { shopserivce.deleteCart(cartvo); return "shop/cartList.tiles"; }
	 */

	@RequestMapping("views/shop/deleteCart")
	public String deleteCart(int cartNum) {
		shopserivce.deleteCart(cartNum);
		return "redirect:deleteProduct";

	}

	@RequestMapping("views/shop/deleteProduct")
	public String deleteProduct() {
		return "shop/deleteProduct.tiles";
	}

	@RequestMapping("/views/shop/orderpage") //form
	public  String orderForm(Model model) {
		MemberVO member = (MemberVO) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		String id = member.getId();
		List<CartListVO> cartList = shopserivce.cartList(id);
		int totalPrice = 0;
		for (int i = 0; i < cartList.size(); i++) {
			System.out.println(cartList.get(i).getGdsPrice() * cartList.get(i).getCartStock());
			int price = cartList.get(i).getGdsPrice() * cartList.get(i).getCartStock();

			totalPrice += price;
		}
		System.out.println(totalPrice);
		model.addAttribute("totalPrice", totalPrice);
		// ${cartList.gdsPrice * cartList.cartStock}"
		model.addAttribute("cartList", cartList);
		// System.out.println(cartList);
		return "shop/orderpage.tiles";
		
}
	
	@RequestMapping("/views/shop/order") 
	public  String order(Model model,OrderVO order, OrderDetailVO orderDetail) {
		MemberVO member = (MemberVO) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		String id = member.getId();
		
		Calendar cal = Calendar.getInstance();
		 int year = cal.get(Calendar.YEAR);
		 String ym = year + new DecimalFormat("00").format(cal.get(Calendar.MONTH) + 1);
		 String ymd = ym +  new DecimalFormat("00").format(cal.get(Calendar.DATE));
		 String subNum = "";
		 
		 for(int i = 1; i <= 6; i ++) {
		  subNum += (int)(Math.random() * 10);
		 }
		 
		 String orderId =ymd+"_"+subNum;
		 order.setOrderId(orderId);
		 order.setId(id);
		 
		 shopserivce.orderInfo(order);
		  
		 orderDetail.setOrderId(orderId);
		 shopserivce.orderInfo_Details(orderDetail);
		 
		 shopserivce.cartAllDelete(id);
		return "redirect:register-ok";
		
}
	
	@RequestMapping("/views/shop/register-ok")
	public String registerOk() {
		return "shop/register-ok.tiles";
	}
	
	//์ฃผ๋ฌธ ๋ชฉ๋ก
	@RequestMapping("/views/shop/orderList")
	public String getOrderList(OrderVO order, Model model) {
		MemberVO member = (MemberVO) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		String id =member.getId();
		order.setId(id);
		List<OrderVO> orderList =shopserivce.orderList(order);
		
		List<CartListVO> cartList = shopserivce.cartList(id);
		int totalPrice = 0;
		for (int i = 0; i < cartList.size(); i++) {
			System.out.println(cartList.get(i).getGdsPrice() * cartList.get(i).getCartStock());
			int price = cartList.get(i).getGdsPrice() * cartList.get(i).getCartStock();

			totalPrice += price;
		}
		System.out.println(totalPrice);
		model.addAttribute("totalPrice", totalPrice);
		model.addAttribute("orderList", orderList);
		return "shop/orderList.tiles";
	
		
	}
	
	@RequestMapping("/views/shop/orderCheckList")
	public String orderCheckList(OrderVO order, Model model) {
		MemberVO member = (MemberVO) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		String id =member.getId();
		order.setId(id);
		List<OrderVO> orderCheckList =shopserivce.orderCheckList(order);
		System.out.println(orderCheckList);
		List<CartListVO> cartList = shopserivce.cartList(id);
		int totalPrice = 0;
		for (int i = 0; i < cartList.size(); i++) {
			System.out.println(cartList.get(i).getGdsPrice() * cartList.get(i).getCartStock());
			int price = cartList.get(i).getGdsPrice() * cartList.get(i).getCartStock();

			totalPrice += price;
		}
		System.out.println(totalPrice);
		model.addAttribute("totalPrice", totalPrice);
		model.addAttribute("orderCheckList", orderCheckList);
		return "shop/orderCheckList.tiles";
	
		
	}
	
	
	
	
	
	
	
	@RequestMapping("/views/shop/orderView")
	public String getOrderList(@RequestParam("n") String orderId,OrderVO order, Model model) {
		MemberVO member = (MemberVO) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		String id =member.getId();
		
		order.setId(id);
		order.setOrderId(orderId);
		
		List<OrderListVO> orderView =shopserivce.orderView(order);
		
		model.addAttribute("orderView", orderView);
		
		return "shop/orderView.tiles";
		
		
	}

	// ์ฃผ๋ฌธ ์์ธ ๋ชฉ๋ก
	@RequestMapping("/views/shop/orderView2")
	public String getOrderList2(@RequestParam("n") String orderId,
							OrderVO order, Model model) throws Exception {
	
		
		order.setOrderId(orderId);		
		List<OrderListVO> orderView2 = shopserivce.orderView2(order);
		
		model.addAttribute("orderView", orderView2);
		return "shop/orderView2.tiles";
	}
	
	
	
	
	
	
	
	
	//์ฃผ๋ฌธ์๋ง
	@RequestMapping("/views/shop/orderUserList")
	public String orderUserList(@RequestParam("n") String orderId,OrderVO order, Model model) {
		MemberVO member = (MemberVO) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		String id =member.getId();
		
		order.setId(id);
		order.setOrderId(orderId);
		
		List<OrderListVO> orderView =shopserivce.orderView(order);
		
		model.addAttribute("orderView", orderView);
		
		return "shop/orderView.tiles";
		
		
	}
	
	
	// ์ฃผ๋ฌธ ์์ธ ๋ชฉ๋ก - ์ํ ๋ณ๊ฒฝ
	@RequestMapping("/views/shop/orderViewdelivery")
	public String delivery(OrderVO order) throws Exception {
	 shopserivce.delivery(order);
	 return  "shop/register.tiles";
		/* return "redirect:/shop/orderView?n=" + order.getOrderId(); */
	}
	
	@RequestMapping("/views/shop/registReplyForm")
	public String registReplyForm() {
		return "shop/view.tiles";
		
	}
	
	/*
	 * @RequestMapping("/views/shop/registReply") public String registReply(ReplyVO
	 * reply) { MemberVO member = (MemberVO)
	 * SecurityContextHolder.getContext().getAuthentication().getPrincipal();
	 * reply.setId(member.getId()); shopserivce.registReply(reply); return
	 * "redirect:/shop/view?n=" + reply.getGdsNum();
	 * 
	 * }
	 */
	
	@RequestMapping("/views/shop/registReply")
	@ResponseBody
	public void registReply(ReplyVO reply) throws Exception {
	 MemberVO member = (MemberVO) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		 reply.setId(member.getId());
	 shopserivce.registReply(reply);
	 
	} 
	
	@RequestMapping("views/shop/deleteOrder")
	public  String deleteOrder(String orderId) {
		shopserivce.deleteOrder(orderId);
		return "redirect:deleteOrderProduct";
		
	}
	
	@RequestMapping("views/shop/deleteOrderProduct")
	public String deleteOrderProduct() {
		return "shop/deleteOrder.tiles";
	}

	
	
	@RequestMapping("/views/shop/replyList")
	@ResponseBody
	public List<ReplyListVO> getReplyList(@RequestParam("n") int gdsNum) {
   
	 List<ReplyListVO> reply = shopserivce.replyList(gdsNum);
	 return reply;
	} 
	
	@RequestMapping("/views/shop/deleteReply")
	@ResponseBody
	public int getReplyList(ReplyVO reply) {
		
		int result =0;
		MemberVO member = (MemberVO) SecurityContextHolder.getContext().getAuthentication().getPrincipal();	
		String id= shopserivce.replyUserIdCheck(reply.getRepNum());
		 if(member.getId().equals(id)) {
			 
			 reply.setId(member.getId());
			 shopserivce.deleteReply(reply);
			 result =1;
			 
		 }
		 
		 return result;
		
		
	}
	@RequestMapping("/views/shop/searchGoods")
	
public String searchGoods(@RequestParam("gdsName")String gdsName,Model model)
{
		model.addAttribute("searchGoods",shopserivce.searchGoods(gdsName));
	  return "shop/searchList.tiles";
}

	
	
	
	
	
	
	




}
