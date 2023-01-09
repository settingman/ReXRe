package com.hyundai.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.hyundai.domain.CartItem;

public interface CartMapper {

	public String find(Integer member_id);

	public List<CartItem> findCart(Integer member_id);

	public CartItem findCartItem(@Param("member_id") Integer member_id, @Param("product_id") Integer product_id);

	public Integer insertCart(@Param("member_id") Integer member_id, @Param("product_id") Integer product_id,
			@Param("qty") Integer qty);

	public void deleteOne(@Param("member_id") Integer member_id, @Param("product_id") Integer product_id);

	public void deleteAll(Integer member_id);

	public void updateQuantity(@Param("product_qauntity") Integer product_qauntity,
			@Param("product_id") Integer product_id, @Param("member_id") Integer member_id);

	public void updateChecked(Integer member_id, Integer product_id, int check);

}
