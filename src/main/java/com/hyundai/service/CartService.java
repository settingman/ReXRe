package com.hyundai.service;

import java.util.List;


import org.springframework.stereotype.Service;

import com.hyundai.domain.CartItem;
import com.hyundai.mapper.CartMapper;
import com.hyundai.mapper.CartRepository;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
@RequiredArgsConstructor
public class CartService {

	private final CartRepository cartRepository;
	
	private final CartMapper cartMapper;
	
	

	public List<CartItem> findCart(Integer member_id) {

		List<CartItem> cartItemList = cartMapper.findCart(member_id);

		return cartItemList;

	}

	public void insertCart(Long member_id, Long product_id) {

		cartRepository.insertCart(member_id, product_id);

		// 장바구니가 들어있다면?

		// insert into cart values (1,product_id,member_id,1)

	}

	// 아이템 하나 삭제
	public void deleteOne(Integer member_id, Integer product_id) {

		cartMapper.deleteOne(member_id, product_id);
		return;

	}

	// 아이템 선택 삭제
	public void deletCheck(Long member_id) {

		cartRepository.deletCheck(member_id);

	}

	public void deleteAll(Integer member_id) {

		cartMapper.deleteAll(member_id);
	}

	public int updateQuantity(Long member_id, Long product_id, int Stock) {

		int cart_stock = cartRepository.updateQuantity(member_id, product_id, Stock);

		return cart_stock;

	}

	public void updateCheck(Long member_id, Long product_id, int check) {

		if (check == 1)
			check = 0;
		else
			check = 0;

		cartRepository.updateChecked(member_id, product_id, check);

	}

}
