package com.hyundai.mapper;

import static org.assertj.core.api.Assertions.assertThat;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.hyundai.domain.CartItem;
import com.hyundai.service.CartService;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({ "file:src/main/webapp/WEB-INF/spring/root-context.xml", "file:src/main/webapp/WEB-INF/spring/security-context.xml" })
@Log4j
public class CartMapperTest {

	@Autowired
	CartService cartService;

	@Autowired
	CartMapper cartMapper;
	
	
	

	// 상품이름 조회
	@Test
	public void find() {
		
		String productName = cartMapper.find(1);
		log.info(productName);

	}

	// 장바구니 리스트 조회
	@Test
	public void findCart() {
		

	}

	// 장바구니 리스트 아이템 조회
	@Test
	public void findCartItem() {

	}

	// 장바구니 입력
	@Test
	public void insertCart() {

	}

	// 장바구니 아이템 개별 삭제
	@Test
	public void deleteOne() {

	}

	// 장바구니 아이템 전체삭제
	@Test
	public void deleteAll() {

	}

	// 장바구니 수량 변경
	@Test
	public void updateQuantity() {

	}

	// 장바구니 체크 변경
	@Test
	public void updateChecked() {

	}



}
