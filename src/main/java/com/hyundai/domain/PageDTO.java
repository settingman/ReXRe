package com.hyundai.domain;

public class PageDTO {
	private int startPage;
	private int endPage;
	private boolean prev, next; // 이전, 다음 페이지 있는지 F/T
	private int total;
	private Criteria cri;
	
}
