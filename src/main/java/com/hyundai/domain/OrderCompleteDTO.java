package com.hyundai.domain;

import lombok.Getter;
import lombok.Setter;

/**
 * @FileName: OrderCompleteDTO.java
 * @Project : ReXRe
 * @작성자 : 박성환
 * @설명 : 주문완료 페이지 객체
 */

@Getter
@Setter
public class OrderCompleteDTO {

	private Integer order_id;
	private Integer items_price;
	private Integer delivery_price;
	private Integer total_price;

	public OrderCompleteDTO(Integer order_id, Integer items_price, Integer delivery_price, Integer total_price) {

		this.order_id = order_id;
		this.items_price = items_price;
		this.delivery_price = delivery_price;
		this.total_price = total_price;
	}

	@Override
	public String toString() {
		return "OrderCompleteDTO [order_id=" + order_id + ", items_price=" + items_price + ", delivery_price="
				+ delivery_price + ", total_price=" + total_price + "]";
	}

}
