package com.spring.finance.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {

	@GetMapping("/")
	public String main() {
//		log.info("/.................");
		System.out.println("main");
		return "/main/index";
	}

}
