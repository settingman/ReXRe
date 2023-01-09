
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

// 박성환
// OrderController

@Slf4j
@Controller
@RequiredArgsConstructor
public class OrderController {

	private final CartService cartService;
	private final OrderService orderService;
	private final MemberMapper memberMapper;

	@GetMapping("/shop/order")
	public String CartToOrder(@RequestParam List<Integer> id, Model model, Principal principal) {

		System.out.println("뿌리기");

		for (Integer a : id) {
			System.out.println(a);
		}

		// principle 로 받거나, or Session
		Integer member_id = memberMapper.idid(principal.getName());

		List<CartItem> cartItems = cartService.CartToOrder(id, member_id);

		model.addAttribute("cartItems", cartItems);

		return "order/order";

	}

	@PostMapping("/shop/oredercomplete")
	public String OrederComplete(OrderDTO orderDTO, Model model, Principal principal) {

		System.out.println("ordercomplete");

		// 세션에서 맴버 받아오기.
		Integer member_id = memberMapper.idid(principal.getName());

		OrderCompleteDTO orderCompleteDTO = orderService.insertOrder(orderDTO, member_id);

		System.out.println(orderCompleteDTO);

		model.addAttribute("orderCompleteDTO", orderCompleteDTO);

		return "order/orderComplete";

	}

	// 주문 조회ㅍ
	@GetMapping("/shop/orederlist")
	public String OrederList(Model model, Principal principal) {

		System.out.println("orderList");

		// 세션에서 맴버 받아오기.
		Integer member_id = memberMapper.idid(principal.getName());

		System.out.println(member_id);

		List<OrderList> orderList = orderService.OrderList(member_id);

		List<String> itemList = new ArrayList<String>();

		for (OrderList i : orderList) {

			List<String> orderListItem = orderService.OrderListItems(i.getOrderId());

			if (orderListItem.size() > 1) {

				itemList.add(orderListItem.get(0) + "외 " + (orderListItem.size() - 1) + "개");
			}

			else {
				itemList.add(orderListItem.get(0));
			}

		}

		for (String i : itemList) {
			System.out.println(i);
		}

		model.addAttribute("orderList", orderList);
		model.addAttribute("itemList", itemList);

		return "order/OrderList";

	}

}
