package com.hyundai.mapper;

import static org.assertj.core.api.Assertions.assertThat;

import java.util.List;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.hyundai.domain.OrderDTO2;
import com.hyundai.domain.OrderList;

import lombok.extern.log4j.Log4j;

/**
 * @FileName: OrderMapperTest.java
 * @Project : ReXRe
 * @작성자 : 박성환
 * @설명 : OrderMapper Test Code
 */

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({ "file:src/main/webapp/WEB-INF/spring/root-context.xml",
		"file:src/main/webapp/WEB-INF/spring/security-context.xml" })
@Log4j
public class OrderMapperTest {

	@Autowired
	OrderMapper orderMapper;

	@Test
	public void OrderInsert() {

		OrderDTO2 orderDTO2 = new OrderDTO2("주문자", 8101, "0102927", "주소1", "쥬소2", "요청사항", "지불", 59000, 9999, 1);

		assertThat(orderMapper.insertOrder2(orderDTO2));

	}

	@Test
	public void OrderList() {

		List<OrderList> orderList = orderMapper.OrderList(9999);

		assertThat(orderList.size()).isNotEqualTo(0);

	}

}
