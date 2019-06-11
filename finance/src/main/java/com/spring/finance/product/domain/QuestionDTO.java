package com.spring.finance.product.domain;

import lombok.Data;

@Data
public class QuestionDTO {

	private String period; // 가입기간 12, 24, 36.........
	private String paymentByMonth; // 월 납입금
	private String sex; // 성별
	private String birth; // 생년월일
	private String region; // 은행 방문 지역

}
