
package com.hyundai.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.hyundai.domain.CartItem;
import com.hyundai.domain.OrderDTO;
import com.hyundai.service.CartService;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;



// 박성환
// 주문

@Slf4j
@Controller
@RequiredArgsConstructor
public class OrderController {
	
	private final CartService cartService;
	
	@GetMapping("/shop/order")
	public String CartToOrder(@RequestParam List<Integer> id, Model model) {
		
		System.out.println("들어왔나요?");
		
		for(Integer a : id ) {
			System.out.println(a);
		}
		
		
		// 세션으로 받아오기
		Integer member_id = 255;
		
		List<CartItem> cartItems = cartService.CartToOrder(id, member_id);
	
		model.addAttribute("cartItems", cartItems);
		
		return "order/order";
		

	}
	
	
	
	
	@PostMapping("shop/oredercomplete")
	public String OrederComplete(@RequestParam OrderDTO orderDTO, Model model) {
		
		System.out.println("들어왔나요?");
		
		System.out.println(orderDTO);
		
		
		// 세션으로 받아오기
		Integer member_id = 255;
		
		
		
		
		return "order/orderComplete";
		

	}
	
	
	                   
	
}
