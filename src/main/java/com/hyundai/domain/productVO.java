package com.hyundai.domain;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;

@AllArgsConstructor
@Data
public class productVO {

	public productVO(Long productId, String productName) {
		super();
		this.productId = productId;
		this.productName = productName;
	}

	private Long productId; // pk
	private String productName;
	private int productPrice;
	private String productVolume;
	private String productFrom;
	private String productDuration;
	private String productManu;
	private Date productRegdate;
	private int productClick;
	private int productQuantity;
	private String productSummary;
	private String productCategory;

	private int imageId;
	private String imageCategory;
	private String imagePath;

}