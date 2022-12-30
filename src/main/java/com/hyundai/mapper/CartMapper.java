package com.hyundai.mapper;

import java.util.List;

import com.hyundai.domain.CartItem;


public interface CartMapper {
	
	public List<Integer> find();

	public List<CartItem> findCart(Long member_id);

	public void insertCart(Long member_id, Long product_id);

	public void deleteOne(Long member_id, Long product_id);

	public void deletCheck(Long member_id);

	public void deleteAll(Long member_id);

	public int updateQuantity(Long member_id, Long product_id, int Stock);

	public void updateChecked(Long member_id, Long product_id, int check);

}
