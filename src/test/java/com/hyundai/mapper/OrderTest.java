package com.hyundai.mapper;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.hyundai.domain.OrderDTO2;
import com.hyundai.domain.OrderList;
import com.hyundai.service.OrderService;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class OrderTest {
	
	@Autowired
	OrderService orderService;
	
	@Autowired
	OrderMapper orderMapper;
	
	
	
	
	@Test
	public void OrderInsert() {
		
		
		
		
		OrderDTO2 orderDTO2= new OrderDTO2( "주문자", 8101, "0102927", "주소1", "쥬소2", "요청사항", "지불", 59000, 255, 1);
		int result = orderMapper.insertOrder2(orderDTO2);
		
		log.info(orderDTO2.getOrderid());
		
		System.out.println(orderDTO2);
		
		
		
		
	}
	

	@Test
	public void OrderList() {
		
		
		
		
		List<OrderList> orderList = orderMapper.OrderList(255);
		
		
		for(OrderList i : orderList) {
			
			System.out.println(i);
			
		}
		
		
		
	}
	
	

}
