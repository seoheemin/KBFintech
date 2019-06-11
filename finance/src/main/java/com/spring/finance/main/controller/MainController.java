package com.spring.finance.main.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
public class MainController {

	@GetMapping("/")
	public String main() {
//		log.info("/.................");
		System.out.println("main");
		return "/main/index";
	}

}
