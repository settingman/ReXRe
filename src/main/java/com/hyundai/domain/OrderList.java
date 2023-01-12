package com.hyundai.domain;

import lombok.Getter;

import lombok.Setter;

/**
 * @FileName: OrderList.java
 * @Project : ReXRe
 * @작성자 : 박성환
 * @설명 : 주문 내역을 위한 객체
 */

@Getter
@Setter
public class OrderList {

	private Integer OrderId;
	private Integer totalPrice;

	public OrderList(Integer orderId, Integer totalPrice) {

		this.OrderId = orderId;
		this.totalPrice = totalPrice;
	}

	@Override
	public String toString() {
		return "OrderList [OrderId=" + OrderId + ", totalPrice=" + totalPrice + "]";
	}

}
