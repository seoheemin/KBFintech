package com.spring.finance.product.service;

import com.spring.finance.product.domain.ProductVO;
import com.spring.finance.product.util.Criteria;

public interface ProductService {

	public ProductVO getProductList(Criteria cri);
}
