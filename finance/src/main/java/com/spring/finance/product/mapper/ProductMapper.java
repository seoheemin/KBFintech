package com.spring.finance.product.mapper;

import java.util.List;

import com.spring.finance.product.domain.ProductVO;
import com.spring.finance.product.domain.QuestionDTO;

public interface ProductMapper {
	
	List<ProductVO> getProductList();

}
