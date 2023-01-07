package com.hyundai.domain.review;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;


/*********************************
 * @function : BoardCriteria
 * @author : Taeseung Choi
 * @Date : 
 * 게시물의 페이징 처리를 위해 만든 VO
 * 1페이지에 10개의 게시물을 보여줌
*********************************/

@Getter
@Setter
@ToString
public class ReviewCriteria {
	private int pageNum; // 몇 페이지인지
	private int amount; //페이지마다 보여주는 게시글의 수
	
	public ReviewCriteria() {
		this(1,10);
	}
	public ReviewCriteria(int pageNum, int amount) {
		this.pageNum = pageNum;
		this.amount = amount;
	}
}