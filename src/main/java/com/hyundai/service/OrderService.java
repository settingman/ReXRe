package com.hyundai.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hyundai.domain.OrderCompleteDTO;
import com.hyundai.domain.OrderDTO;
import com.hyundai.domain.OrderDTO2;
import com.hyundai.domain.OrderList;
import com.hyundai.mapper.CartMapper;
import com.hyundai.mapper.OrderMapper;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
@RequiredArgsConstructor
public class OrderService {

	private final OrderMapper orderMapper;
	private final CartMapper cartMapper;

	
	@Transactional
	public OrderCompleteDTO insertOrder(OrderDTO orderDto, Integer member_id) {

		List<Integer> product_id = orderDto.getProduct_id();
		List<Integer> Product_Quntity = orderDto.getProduct_Quntity();

		String order_name = orderDto.getOrder_name();
		Integer order_postnum = orderDto.getOrder_postnum();
		String ORDER_PHONE = orderDto.getORDER_PHONE();
		String order_adress1 = orderDto.getOrder_adress1();
		String order_adress2 = orderDto.getOrder_adress2();
		String order_ask = orderDto.getOrder_ask();
		String order_payment = orderDto.getOrder_payment();
		Integer items_price = orderDto.getItems_price();
		Integer deliver_price = orderDto.getDeliver_price();

		
		//최종가격 계산
		Integer totalprice = items_price + deliver_price;
		
		
		// 멤버아이디 불러오기
		
		// 오더 카테고리(맴버 주문)
		Integer order_category = 1;

		
		//DTO2 메퍼에 전달
		OrderDTO2 orderDTO2 = new OrderDTO2(order_name, 1, ORDER_PHONE, "2", order_adress2, order_ask, order_payment,
				totalprice, member_id, order_category);

		
		// 풀맴버오더에 넣기
		orderMapper.insertOrder2(orderDTO2);
		
		
		
		// 주문 id 가져오기
		Integer order_id = orderDTO2.getOrderid();

		
		// 그냥 오더에 넣기
		orderMapper.insertOrder3(orderDTO2);

		
		// 오더디테일 넣기
		// 장바구니 삭제
		for (int i = 0; i < product_id.size(); i++) {
			orderMapper.insertOrderdetail(Product_Quntity.get(i), order_id, product_id.get(i));
			cartMapper.deleteOne(member_id, product_id.get(i));

		}
		
		
		// 오더컴플리트페이지에 필요한 객체 생성
		OrderCompleteDTO orderCompleteDTO = new OrderCompleteDTO(order_id, items_price, deliver_price,
				totalprice);

		return orderCompleteDTO;
	}
	
	
	public List<OrderList> OrderList(Integer member_id) {
		
		
		return orderMapper.OrderList(member_id);
		
		
	}
	
	
	public List<String> OrderListItems(Integer OrderId){
		
		List<String> orderListItems = orderMapper.OrderListItems(OrderId);
		
		return orderListItems;
	}
	

}
