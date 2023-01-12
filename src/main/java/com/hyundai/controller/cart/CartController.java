
package com.hyundai.controller.cart;

import java.security.Principal;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hyundai.domain.CartItem;
import com.hyundai.mapper.MemberMapper;
import com.hyundai.service.CartService;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

/**
 * @FileName : CartController.java
 * @Project : ReXRe
 * @작성자 : 박성환
 **/

@Slf4j
@Controller
@RequiredArgsConstructor // 의존성 주입
public class CartController {

	private final CartService cartService;
	private final MemberMapper memberMapper;

	// 장바구니 리스트 출력
	@GetMapping("/shop/cart")
	public String showCart(Model model, HttpServletRequest requset, Principal principal) {

		Integer member_id = memberMapper.idid(principal.getName());

		List<CartItem> cartItems = cartService.findCart(member_id);
		model.addAttribute("cartItems", cartItems);

		return "cart/cart2";

	}

	// 장바구니 아이템 개별 삭제
	@ResponseBody
	@GetMapping("/shop/cartDelOne")
	public void deleteOne(@RequestParam("product_id") Integer product_id,
			@RequestParam("member_id") Integer member_id) {

		cartService.deleteOne(member_id, product_id);

	}

	// 장바구니 아이템 선택 삭제
	@ResponseBody
	@GetMapping("/shop/cartDelChecked")
	public void deleteCheked(@RequestParam(value = "chbox[]") List<String> chArr, Principal principal) {

		Integer member_id = memberMapper.idid(principal.getName());

		for (String pro_id : chArr) {
			Integer product_id = Integer.parseInt(pro_id);
			cartService.deleteOne(member_id, product_id);
		}
	}

	// 장바구니 아이템 전체 삭제
	@ResponseBody
	@GetMapping("/shop/cartDelAll")
	public void deleteAll(Model model, HttpServletRequest requset, Principal principal) {

		HttpSession session = requset.getSession();
		Integer member_id = memberMapper.idid(principal.getName());

		cartService.deleteAll(member_id);

	}

	// 장바구니 아이템 수량 변경
	public void upQuantity2(@RequestBody Map<String, Integer> updateData) {

		Integer product_qauntity = updateData.get("product_qauntity");
		Integer product_id = updateData.get("product_id");
		Integer member_id = updateData.get("member_id");

		cartService.updateQuantity(product_qauntity, product_id, member_id);

	}

	// 장바구니 아이템 수량 변경
	@ResponseBody
	@GetMapping("/shop/upQuantity")
	public void upQuantity(@RequestParam("product_qauntity") Integer product_qauntity,
			@RequestParam("product_id") Integer product_id, @RequestParam("member_id") Integer member_id) {

		cartService.updateQuantity(product_qauntity, product_id, member_id);

	}

	// 장바구니 아이템 추가
	@ResponseBody
	@GetMapping("/shop/cartinsert")
	public void insertCart(@RequestParam("productId") Integer product_id, @RequestParam("member_id") Integer member_id,
			@RequestParam("qty") Integer qty) {

		cartService.insertCart(product_id, member_id, qty);

	}

}
