package com.spring.finance.util;

import java.nio.charset.Charset;
import java.util.Map;

import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.util.UriComponents;
import org.springframework.web.util.UriComponentsBuilder;

public class RequestAPI {

//	금융감독원 API KEY
	private static String apiKey = "863bf4eefd43f0892c8195120d849da0";
	private static String url = "http://finlife.fss.or.kr/finlifeapi/savingProductsSearch.json";
	private static RestTemplate restTemplate;
	private static HttpHeaders headers;

	static {
		restTemplate = new RestTemplate();
		headers = new HttpHeaders();
		headers.setContentType(new MediaType("application", "json", Charset.forName("UTF-8")));
	}

	public static ResponseEntity<String> getProductList(Map<String, String> param) {

		UriComponents builder = UriComponentsBuilder.fromHttpUrl(url)
				.queryParam("topFinGrpNo", param.get("topFinGrpNo")).queryParam("pageNo", param.get("pageNo"))
				.queryParam("auth", apiKey).build();

		return restTemplate.exchange(builder.toUriString(), HttpMethod.GET, new HttpEntity<String>(headers),
				String.class);

	}

}
