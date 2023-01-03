package com.hyundai.domain;

import java.util.Date;

import lombok.Data;

@Data
public class productDetailVO {
	private int product_id;
	private String product_name;
	private int product_price;
	private String product_volume;
	private String product_from;
	private String product_duration;
	private String product_manu;
	private Date product_regdate;
	private int product_click;
	private int product_quantity;
	private String product_summary;
	private String product_category;
	
	private int image_id;
	private String image_category;
	private String image_path;
}
