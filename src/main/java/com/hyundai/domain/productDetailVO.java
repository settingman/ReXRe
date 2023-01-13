package com.hyundai.domain;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
/*********************************
 * @function : ProductDetailVO
 * @author : Seeun Lee
 * @Date : Jan. 8. 2023.
 *********************************/
//상품 상세 페이지에 필요한 변수
@Data
@AllArgsConstructor
public class productDetailVO {
	private int productId;
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
