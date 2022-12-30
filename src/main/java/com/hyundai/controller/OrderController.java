
package com.hyundai.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;



// 박성환
// 주문

@Slf4j
@Controller
@RequiredArgsConstructor
public class OrderController {
	

	
	// 
	@GetMapping("/shop/order")
	public String showCart(Model model, HttpServletRequest requset) {
		
		HttpSession session = requset.getSession();
		Long memberId = (Long) session.getAttribute("member_id");
		
		System.out.println(memberId);
		
		

		
		
		return "order/order";
		
		
		
	}
	
	
	
	
	
	                   
	
}
