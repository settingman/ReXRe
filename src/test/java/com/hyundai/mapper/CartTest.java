package com.hyundai.mapper;

import static org.assertj.core.api.Assertions.assertThat;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.hyundai.domain.CartItem;
import com.hyundai.service.CartService;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class CartTest {
	
	@Autowired
	CartService cartService;
	
	
	@Test
	public void findCartItem() {
		
		log.info("findCartItem");
		
		CartItem cart = cartService.findCartItem(255,1234);
		
		assertThat(cart.getPRODUCT_ID()).isEqualTo(1234);
		
		
	}
	
	

}
