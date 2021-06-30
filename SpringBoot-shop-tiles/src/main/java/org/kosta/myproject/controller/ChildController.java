package org.kosta.myproject.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ChildController {
	@RequestMapping("test")
	public String test() {
		return "test.tiles";
	}
}
