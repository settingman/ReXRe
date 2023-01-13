package com.hyundai.mapper;

import static org.assertj.core.api.Assertions.assertThat;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.extern.log4j.Log4j;

/**
 * @FileName: CartMapperTest.java
 * @Project : ReXRe
 * @작성자 : 박성환
 * @설명 : @
 */

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({ "file:src/main/webapp/WEB-INF/spring/root-context.xml",
		"file:src/main/webapp/WEB-INF/spring/security-context.xml" })
@Log4j
public class CartMapperTest {

	@Autowired
	CartMapper cartMapper;

	@Before // 장바구니 입력 및 Before
	public void insertCart() {

		// memberId 9999 is test member
		// productId 9999 is test product
		cartMapper.insertCart(9999, 9999, 1);
	}

	@After // 장바구니 아이템 개별 삭제 및 After
	public void deleteOne() {
		cartMapper.deleteOne(9999, 9999);
	}

	// 상품이름 조회
	@Test
	public void find() {

		String productName = cartMapper.find(9999);
		assertThat(productName).isEqualTo("test");

	}

	// 장바구니 리스트 조회
	@Test
	public void findCart() {

		assertThat(cartMapper.findCart(9999).size()).isEqualTo(1);

	}

	// 장바구니 리스트 아이템 조회
	@Test
	public void findCartItem() {
		assertThat(cartMapper.findCartItem(9999, 9999).getPRODUCT_ID()).isEqualTo(9999);
	}

	// 장바구니 아이템 전체삭제
	@Test
	public void deleteAll() {
		cartMapper.deleteAll(9999);
		assertThat(cartMapper.findCart(9999).size()).isEqualTo(0);

	}

	// 장바구니 수량 변경
	@Test
	public void updateQuantity() {

		cartMapper.updateQuantity(3, 9999, 9999);

		assertThat(cartMapper.findCartItem(9999, 9999).getCART_QUANTITY()).isEqualTo(3);

	}

}
