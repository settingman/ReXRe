package com.hyundai.domain;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class CartItem {
	
	private Integer product_id;
	private String product_name;
	private Integer product_price;
	private Integer cart_quantity;
	private Integer cart_check;
	private String product_img;
	
	
	public CartItem() {
		
	}


	public CartItem(Integer product_id, String product_name, Integer product_price, Integer cart_quantity,
			Integer cart_check, String product_img) {
		super();
		this.product_id = product_id;
		this.product_name = product_name;
		this.product_price = product_price;
		this.cart_quantity = cart_quantity;
		this.cart_check = cart_check;
		this.product_img = product_img;
	}


	


	

	


	
	
	
	

}
