package com.hyundai.domain;

import java.util.List;

import lombok.Getter;
import lombok.Setter;

/**
 * @FileName: OrderDTO.java
 * @Project : ReXRe
 * @작성자 : 박성환
 * @설명 : 주문서 입력 데이터를 저장하기 위한 객체
 */

@Getter
@Setter
public class OrderDTO {

	private List<Integer> product_id;
	private List<Integer> product_Quntity;
	private String order_name;
	private Integer order_postnum;
	private String ORDER_PHONE;
	private String order_adress1;
	private String order_adress2;
	private String order_ask;
	private String order_payment;
	private Integer items_price;
	private Integer deliver_price;

	@Override
	public String toString() {
		return "OrderDTO [product_id=" + product_id + ", product_Quntity=" + product_Quntity + ", order_name="
				+ order_name + ", order_postnum=" + order_postnum + ", ORDER_PHONE=" + ORDER_PHONE + ", order_adress1="
				+ order_adress1 + ", order_adress2=" + order_adress2 + ", order_ask=" + order_ask + ", order_payment="
				+ order_payment + ", items_price=" + items_price + ", deliver_price=" + deliver_price + "]";
	}

	public OrderDTO(List<Integer> product_id, List<Integer> product_Quntity, String order_name, Integer order_postnum,
			String ORDER_PHONE, String order_adress1, String order_adress2, String order_ask, String order_payment,
			Integer items_price, Integer deliver_price) {

		this.product_id = product_id;
		this.product_Quntity = product_Quntity;
		this.order_name = order_name;
		this.order_postnum = order_postnum;
		this.ORDER_PHONE = ORDER_PHONE;
		this.order_adress1 = order_adress1;
		this.order_adress2 = order_adress2;
		this.order_ask = order_ask;
		this.order_payment = order_payment;
		this.items_price = items_price;
		this.deliver_price = deliver_price;
	}

}
