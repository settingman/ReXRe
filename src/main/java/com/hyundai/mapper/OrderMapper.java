package com.hyundai.mapper;

import java.util.List;


import org.apache.ibatis.annotations.Param;

import com.hyundai.domain.CartItem;
import com.hyundai.domain.OrderDTO2;

public interface OrderMapper {

	public Integer insertOrder(@Param("order_id") Integer order_id, @Param("order_name") String order_name,
			@Param("order_postnum") Integer order_postnum, @Param("ORDER_PHONE") String ORDER_PHONE,
			@Param("order_adress1") String order_adress1, @Param("order_adress2") String order_adress2,
			@Param("order_ask") String order_ask, @Param("order_payment") String order_payment,
			@Param("total_price") Integer total_price, @Param("member_id") Integer member_id,
			@Param("order_category") Integer order_category);
	
	public Integer insertOrder2(OrderDTO2 orderDTO2);

	public String find(Integer member_id);

	public List<CartItem> findCart(Integer member_id);

	public CartItem findCartItem(@Param("member_id") Integer member_id, @Param("product_id") Integer product_id);

	public void insertCart(Integer member_id, Integer product_id);

	public void deleteOne(@Param("member_id") Integer member_id, @Param("product_id") Integer product_id);

	public void deleteAll(Integer member_id);

	public void updateQuantity(@Param("product_qauntity") Integer product_qauntity,
			@Param("product_id") Integer product_id, @Param("member_id") Integer member_id);

	public void updateChecked(Integer member_id, Integer product_id, int check);

}
