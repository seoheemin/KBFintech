package com.spring.finance.product.util;

import lombok.extern.log4j.Log4j;

@Log4j
public class TotalPriceCalc {

	// 기본/최대 금리를 기준으로 기본/최대 만기금액을 계산
//	public static ProductDTO getTotalPrice(QuestionDTO questionDTO, ProductVO productVO) {
//		ProductDTO productDTO = new ProductDTO(productVO);
//		productDTO.setTotalPriceByMax(TotalPriceCalc.caclTotalPrice(productVO.getPr_max_interest(),
//				questionDTO.getPeriod(), questionDTO.getPaymentByMonth()));
//		productDTO.setTotalPriceByMin(TotalPriceCalc.caclTotalPrice(productVO.getPr_min_interest(),
//				questionDTO.getPeriod(), questionDTO.getPaymentByMonth()));
//
//		return productDTO;
//	}

	// 적금 복리계산
	public static int caclTotalPrice(double interest, String period, String money) {

		return 100;
	}

}
