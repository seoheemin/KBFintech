package com.spring.finance.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/member")
public class MemberController {

	@GetMapping("/login")
	public void login() {
//		log.info("/member/login.................");
	}
	
	@GetMapping("/register")
	public void register() {
//		log.info("/member/register.................");
	}
	
	@GetMapping("/forget")
	public void forget() {
//		log.info("/member/forget.................");
	}
}
