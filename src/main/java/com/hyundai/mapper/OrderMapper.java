package com.hyundai.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.hyundai.domain.OrderDTO2;
import com.hyundai.domain.OrderList;

public interface OrderMapper {

	public Integer insertOrder(@Param("order_id") Integer order_id, @Param("order_name") String order_name,
			@Param("order_postnum") Integer order_postnum, @Param("ORDER_PHONE") String ORDER_PHONE,
			@Param("order_adress1") String order_adress1, @Param("order_adress2") String order_adress2,
			@Param("order_ask") String order_ask, @Param("order_payment") String order_payment,
			@Param("total_price") Integer total_price, @Param("member_id") Integer member_id,
			@Param("order_category") Integer order_category);
	
	public Integer insertOrder2(OrderDTO2 orderDTO2);
	
	public Integer insertOrder3(OrderDTO2 orderDTO2);
	
	public Integer insertOrderdetail(@Param("ITEM_QUANTITY") Integer ITEM_QUANTITY, @Param("ORDERS_ORDER_ID") Integer ORDERS_ORDER_ID,
			@Param("PRODUCTS_PRODUCT_ID") Integer PRODUCTS_PRODUCT_ID);
	
	public List<OrderList> OrderList(@Param("member_id") Integer member_id);

	public List<String> OrderListItems(Integer orderId);
	
	

}
