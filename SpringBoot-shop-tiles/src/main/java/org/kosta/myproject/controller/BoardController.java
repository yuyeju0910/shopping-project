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
public class BoardController {
	@Resource
	private ShopService shopserivce;
	
	@RequestMapping("views/board/boardList")
	public String boardList() {
		return "board/boardList.tiles";

	}




}
