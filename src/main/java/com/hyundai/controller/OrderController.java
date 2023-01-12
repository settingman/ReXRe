
package com.hyundai.controller;

import java.security.Principal;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.hyundai.domain.CartItem;
import com.hyundai.domain.OrderCompleteDTO;
import com.hyundai.domain.OrderDTO;
import com.hyundai.domain.OrderList;
import com.hyundai.mapper.MemberMapper;
import com.hyundai.service.CartService;
import com.hyundai.service.OrderService;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

/**
 * @FileName: OrderController.java
 * @Project : ReXRe
 * @작성자 : 박성환
 * @설명 : 주문 처리
 */

@Slf4j
@Controller
@RequiredArgsConstructor
public class OrderController {

	private final CartService cartService;
	private final OrderService orderService;
	private final MemberMapper memberMapper;

	// 주문서 요청
	@GetMapping("/shop/order")
	public String CartToOrder(@RequestParam List<Integer> id, Model model, Principal principal) {

		Integer member_id = memberMapper.idid(principal.getName());

		List<CartItem> cartItems = cartService.CartToOrder(id, member_id);

		model.addAttribute("cartItems", cartItems);

		return "order/order";

	}

	// 주문완료 요청
	@PostMapping("/shop/oredercomplete")
	public String OrederComplete(OrderDTO orderDTO, Model model, Principal principal) {

		Integer member_id = memberMapper.idid(principal.getName());

		OrderCompleteDTO orderCompleteDTO = orderService.insertOrder(orderDTO, member_id);

		model.addAttribute("orderCompleteDTO", orderCompleteDTO);

		return "order/orderComplete";

	}

	// 주문내역 조회
	@GetMapping("/shop/orederlist")
	public String OrederList(Model model, Principal principal) {

		Integer member_id = memberMapper.idid(principal.getName());

		List<OrderList> orderList = orderService.OrderList(member_id);

		List<String> itemList = new ArrayList<String>();

		// 주문내역 내용 설정
		for (OrderList i : orderList) {

			List<String> orderListItem = orderService.OrderListItems(i.getOrderId());

			if (orderListItem.size() > 1) {

				itemList.add(orderListItem.get(0) + "외 " + (orderListItem.size() - 1) + "개");
			}

			else {
				itemList.add(orderListItem.get(0));
			}

		}

		model.addAttribute("orderList", orderList);
		model.addAttribute("itemList", itemList);

		return "order/OrderList";

	}

}
