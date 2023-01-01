package com.hyundai.mapper;

import java.util.List;

import com.hyundai.domain.CartItem;


public interface CartMapper {
	
	public String find(Integer member_id);

	public List<CartItem> findCart(Integer member_id);

	public void insertCart(Integer member_id, Integer product_id);

	public void deleteOne(Integer member_id, Integer product_id);

	public void deletCheck(Integer member_id);

	public void deleteAll(Integer member_id);

	public int updateQuantity(Integer member_id, Integer product_id, int Stock);

	public void updateChecked(Integer member_id, Integer product_id, int check);

}
