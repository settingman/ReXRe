
package com.hyundai.controller.cart;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.hyundai.domain.CartItem;
import com.hyundai.service.CartService;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;



@Slf4j
@Controller
@RequiredArgsConstructor
public class CartController {
	
	
	
	
	
	private final CartService cartService;
	
	
	
	
	// 김영한 회원가입 페이지, 아이템 상세정보 Controller 확인
	@GetMapping("/shop/cart")
	public String showCart(Model model, HttpServletRequest requset) {
		
		HttpSession session = requset.getSession();
		Long memberId = (Long) session.getAttribute("member_id");
		
		System.out.println(memberId);
		
		List<CartItem> cartItems = cartService.findCart(255);
		
		model.addAttribute("cartItems", cartItems);
		return "cart/cart2";
		
		
	}
	
	@GetMapping("/shop/cartDelOne")
	public void deleteOne(Model model, HttpServletRequest requset) {
		
		HttpSession session = requset.getSession();
		Integer memberId = (Integer) session.getAttribute("member_id");
		
		// ajax 로 product id를 보내고 받아서 처리.
		Integer product_id = (Integer) session.getAttribute("product_id");
		
		
		System.out.println(memberId);
		
		cartService.deleteOne(255,product_id);
		
		
	}
	
	@GetMapping("/shop/cartDelAll")
	public void deleteAll(Model model, HttpServletRequest requset) {
		
		HttpSession session = requset.getSession();
		Integer memberId = (Integer) session.getAttribute("member_id");
		
		// ajax 로 product id를 보내고 받아서 처리.
		Integer product_id = (Integer) session.getAttribute("product_id");
		
		
		System.out.println(memberId);
		
		cartService.deleteAll(memberId);
		
		
	}
	
	
	
	
	                   
	
}
