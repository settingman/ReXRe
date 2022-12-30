package com.hyundai.domain;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class CartItem {
	
	private Long product_id;
	private String product_name;
	private Long product_price;
	private Integer cart_check;
	private Long cart_quantity;
	private String product_img;
	
	
	public CartItem() {
		
	}


	public CartItem(Long product_id, String product_name, Long product_price, Integer cart_check, Long cart_quantity,
			String product_img) {
		
		this.product_id = product_id;
		this.product_name = product_name;
		this.product_price = product_price;
		this.cart_check = cart_check;
		this.cart_quantity = cart_quantity;
		this.product_img = product_img;
	}


	


	
	
	
	

}
