
package com.hyundai.controller.cart;

import java.util.List;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.hyundai.domain.CartItem;
import com.hyundai.mapper.CartMapper;
import com.hyundai.service.CartService;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;



@Slf4j
@Controller
@RequiredArgsConstructor
public class CartController {
	
	
	
	
	
	private final CartService cartService;
	
	
	@GetMapping("/find")
	public void findbno() {
		
		System.out.println("안대");
		
		log.info("cartcontroller");
		
		
		List<Integer> a = cartService.find();
		System.out.println(a.get(0));
		
	}
	
	
	// 김영한 회원가입 페이지, 아이템 상세정보 Controller 확인
	@GetMapping("/shop/cart")
	public String showCart(Model model, HttpServletRequest requset) {
		
		HttpSession session = requset.getSession();
		Long memberId = (Long) session.getAttribute("member_id");
		
		System.out.println(memberId);
		
		List<CartItem> cartItems = cartService.findCart(memberId);
		
		model.addAttribute("cartItems", cartItems);
		
		
		return "cart";
		
		
		
	}
	
	
	
	
	
	                   
	
}
