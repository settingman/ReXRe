package com.hyundai.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
//pageNum, amount의 값을 전달해주는 파라미터 용도
public class Criteria {
	private int pageNum;
	private int amount;
	
	public Criteria() {
		this(1,9); // 1페이지에 9개씩;
	}
	
	public Criteria(int pageNum, int amount) {
		this.pageNum = pageNum;
		this.amount = amount;
	}
}
