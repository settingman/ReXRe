
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
import com.hyundai.service.OrderService;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

// 박성환
// OrderController

@Slf4j
@Controller
@RequiredArgsConstructor
public class OrderController {

	private final CartService cartService;
	private final OrderService orderService;

	@GetMapping("/shop/order")
	public String CartToOrder(@RequestParam List<Integer> id, Model model) {

		System.out.println("뿌리기");

		for (Integer a : id) {
			System.out.println(a);
		}

		// principle 로 받거나, or Session
		Integer member_id = 255;

		List<CartItem> cartItems = cartService.CartToOrder(id, member_id);

		model.addAttribute("cartItems", cartItems);

		return "order/order";

	}

	@PostMapping("/shop/oredercomplete")
	public String OrederComplete(OrderDTO orderDTO, Model model) {

		
		Integer member_id = 255;
		
		System.out.println(orderDTO);
		
		
		Integer Order_id = orderService.insertOrder(orderDTO, member_id);
		

		return "order/orderComplete";

	}

}
