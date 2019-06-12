package com.spring.finance.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class CardController {

	@GetMapping("/card/register")
	public String main() {
		System.out.println("card register");
		return "/card/register";
	}
}
