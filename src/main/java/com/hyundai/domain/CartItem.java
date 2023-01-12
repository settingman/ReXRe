package com.hyundai.domain;

import lombok.Getter;
import lombok.Setter;

/**
 * @FileName: CartItem.java
 * @Project : ReXRe
 * @작성자 : 박성환
 * @설명 : 장바구니 아이템 목록을 위한 객체.
 */

@Getter
@Setter
public class CartItem {

	private Integer PRODUCT_ID;
	private String PRODUCT_NAME;
	private Integer PRODUCT_PRICE;
	private Integer CART_QUANTITY;
	private Integer CART_CHECK;
	private String IMAGE_PATH;

	public CartItem() {

	}

	public CartItem(Integer product_id, String product_name, Integer product_price, Integer cart_quantity,
			Integer cart_check, String product_img) {
		this.PRODUCT_ID = product_id;
		this.PRODUCT_NAME = product_name;
		this.PRODUCT_PRICE = product_price;
		this.CART_QUANTITY = cart_quantity;
		this.CART_CHECK = cart_check;
		this.IMAGE_PATH = product_img;
	}

	@Override
	public String toString() {
		return "CartItem [PRODUCT_ID=" + PRODUCT_ID + ", PRODUCT_NAME=" + PRODUCT_NAME + ", PRODUCT_PRICE="
				+ PRODUCT_PRICE + ", CART_QUANTITY=" + CART_QUANTITY + ", CART_CHECK=" + CART_CHECK + ", IMAGE_PATH="
				+ IMAGE_PATH + "]";
	}

}
