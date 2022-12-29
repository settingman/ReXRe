package com.hyundai.domain;

import java.util.Date;

import lombok.Data;

@Data
public class productVO {
	private Long product_id; //pk
	private String product_name;
	private int product_price;
	private int product_volume;
	private String product_from;
	private int product_duration;
	private String product_manu;
	private Date product_regdate;
}
