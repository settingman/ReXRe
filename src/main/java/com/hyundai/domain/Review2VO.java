package com.hyundai.domain;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class Review2VO {
	public Long reviewId;
	public String reviewTitle;
	public String reviewContent;
	public String reviewCategory;
	public Date reviewRegDate;
	public Long membersMemberId;
	public int reviewScore;
	public Long productId;
	public Date reviewEndDate;
	
	public Long imageId;
	public String imgeCategory;
	public String imagePath;
	public Long reviewsBoardId;
}
