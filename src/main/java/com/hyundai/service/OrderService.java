package com.hyundai.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.hyundai.domain.OrderDTO;
import com.hyundai.domain.OrderDTO2;
import com.hyundai.mapper.OrderMapper;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
@RequiredArgsConstructor
public class OrderService {

	private final OrderMapper orderMapper;

	public Integer insertOrder(OrderDTO orderDto, Integer member_id) {

		List<Integer> product_id = orderDto.getProduct_id();

		String order_name = orderDto.getOrder_name();
		Integer order_postnum = orderDto.getOrder_postnum();
		String ORDER_PHONE = orderDto.getORDER_PHONE();
		String order_adress1 = orderDto.getOrder_adress1();
		String order_adress2 = orderDto.getOrder_adress2();
		String order_ask = orderDto.getOrder_ask();
		String order_payment = orderDto.getOrder_payment();
		Integer items_price = orderDto.getItems_price();
		Integer deliver_price = orderDto.getDeliver_price();

		Integer totalprice = items_price + deliver_price;

		member_id = 255;
		Integer order_category = 1;

		OrderDTO2 orderDTO2 = new OrderDTO2(order_name, 1, ORDER_PHONE, "2", order_adress2,
				order_ask, order_payment, totalprice, member_id, order_category);
		
		System.out.println(orderDTO2);
		

		int result = orderMapper.insertOrder2(orderDTO2);
		
		System.out.println("sqlafter");
		
		Integer order_id =orderDTO2.getOrderid();

		return null;
	}

}
