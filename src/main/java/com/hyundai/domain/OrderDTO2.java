package com.hyundai.domain;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class OrderDTO2 {

	private Integer orderid;
	private String order_name;
	private Integer order_postnum;
	private String ORDER_PHONE;
	private String order_adress1;
	private String order_adress2;
	private String order_ask;
	private String order_payment;
	private Integer order_category;
	private Integer total_price;
	private Integer member_id;

	public OrderDTO2(String order_name, Integer order_postnum, String ORDER_PHONE, String order_adress1,
			String order_adress2, String order_ask, String order_payment, Integer total_price, Integer member_id,
			Integer order_category) {

		this.order_name = order_name;
		this.order_postnum = order_postnum;
		this.ORDER_PHONE = ORDER_PHONE;
		this.order_adress1 = order_adress1;
		this.order_adress2 = order_adress2;
		this.order_ask = order_ask;
		this.order_payment = order_payment;
		this.total_price = total_price;
		this.member_id = member_id;
		this.order_category = order_category;
	}

	@Override
	public String toString() {
		return "OrderDTO2 [orderid=" + orderid + ", order_name=" + order_name + ", order_postnum=" + order_postnum
				+ ", ORDER_PHONE=" + ORDER_PHONE + ", order_adress1=" + order_adress1 + ", order_adress2="
				+ order_adress2 + ", order_ask=" + order_ask + ", order_payment=" + order_payment + ", order_category="
				+ order_category + ", total_price=" + total_price + ", member_id=" + member_id + "]";
	}

}
