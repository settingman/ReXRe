package com.hyundai.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import com.hyundai.domain.CartItem;
import com.hyundai.mapper.CartMapper;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

/**
 * @FileName: CartService.java
 * @Project : ReXRe
 * @작성자 : 박성환
 * @설명 : 장바구니 기능을 위한 서비스 Service
 */
@Service
@RequiredArgsConstructor
public class CartService {

	private final CartMapper cartMapper;

	public List<CartItem> findCart(Integer member_id) {

		List<CartItem> cartItemList = cartMapper.findCart(member_id);

		return cartItemList;

	}

	public CartItem findCartItem(Integer member_id, Integer product_id) {

		CartItem cartItem = cartMapper.findCartItem(member_id, product_id);

		return cartItem;

	}

	public List<CartItem> CartToOrder(List<Integer> chArr, Integer member_id) {

		List<CartItem> OrderItemList = new ArrayList<CartItem>();

		for (Integer pro_id : chArr) {
			Integer product_id = pro_id;
			OrderItemList.add(cartMapper.findCartItem(member_id, product_id));
		}

		return OrderItemList;

	}

	public void insertCart(Integer product_id, Integer member_id, Integer qty) {

		cartMapper.insertCart(member_id, product_id, qty);

	}

	public void deleteOne(Integer member_id, Integer product_id) {

		cartMapper.deleteOne(member_id, product_id);
		return;

	}

	public void deleteAll(Integer member_id) {

		cartMapper.deleteAll(member_id);
	}

	public void updateQuantity(Integer product_qauntity, Integer product_id, Integer member_id) {

		cartMapper.updateQuantity(product_qauntity, product_id, member_id);

	}

}
