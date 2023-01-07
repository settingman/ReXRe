package com.hyundai.domain.review;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;

/*********************************
 * @function : ReviewVO
 * @author : Taeseung Choi
 * @Date : 
 * 리뷰 데이터를 담는 VO
 *********************************/
@Data
public class ReviewVO {
	private Long reviewId; // 리뷰 번호
	private String reviewTitle; // 제목
	private String reviewContent; // 내용
	private String reviewCategory; // 카테고리
	private Long membersMemberId; // 작성자(관리자)
	@DateTimeFormat(pattern="yyyy-MM-dd")//날짜 형식
	private Date reviewRegDate;// 날짜
	@DateTimeFormat(pattern="yyyy-MM-dd")//날짜 형식
	private Date reviewUpdateDate; // 날짜2 for push
}

