package com.hyundai.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

/**
 * @FileName: ErrorController.java
 * @Project : ReXRe
 * @작성자 : 박성환
 * @설명 : 	 에러페이지 관리
 */



@Controller
public class ErrorController {
	
	
	// 에러 페이지 관리 (40X ,50X)
	@GetMapping("/error")
	public String error() {
		return "error";
	}

}
