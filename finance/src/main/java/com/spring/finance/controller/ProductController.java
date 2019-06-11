package com.spring.finance.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.finance.domain.PageDTO;
import com.spring.finance.domain.ProductVO;
import com.spring.finance.domain.QuestionDTO;
import com.spring.finance.service.ProductService;
import com.spring.finance.util.Criteria;

@Controller
@RequestMapping("/product")
public class ProductController {

	@Autowired
	private ProductService service;

	@PostMapping("list")
	public String list(Model model, QuestionDTO questionDTO, Criteria cri) {

		ProductVO productVO = service.getProductList(cri);
		model.addAttribute("product", productVO);
		model.addAttribute("pageMaker", new PageDTO(cri, Integer.parseInt(productVO.getTotal_count())));
		return "/product/list";
	}

	@GetMapping("/question")
	public void question() {
	}

}
