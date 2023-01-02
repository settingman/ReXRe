package com.hyundai.domain;

import lombok.Getter;
import lombok.ToString;

@Getter
@ToString
public class PageDTO {
	private int startPage;
	private int endPage;
	private boolean prev, next;
	
	private int firstPage; // 첫 페이지 쓰레기
	private int lastPage; // 마지막 페이지 쓰레기
	
	
	private int total;
	private Criteria cri;
	
	public PageDTO(Criteria cri, int total) { //(현재페이지, 표현할 갯수/ 전체개수)
		
		
		
		this.total = total;
		this.cri = cri;
		this.endPage = (int) (Math.ceil( cri.getPageNum() /10.0)) * 10;		
		this.startPage = this.endPage - 9;		
		int realEnd = (int)  Math.ceil( (total * 1.0) / cri.getAmount() ) ;
		this.firstPage = 1; 
		this.lastPage = realEnd;
		
		System.out.println("realEnd : "+ realEnd);		
		if ( realEnd < this.endPage) {
			this.endPage = realEnd;
		} 
		this.prev = (this.startPage > 1);		
		this.next = (this.endPage < realEnd);	
		
		
		/* 원래코드
		 * this.cri = cri; this.total = total; this.endPage = (int)
		 * (Math.ceil(cri.getPageNum() / 9.0)) * 9; //9개 보여주기
		 * 
		 * this.startPage = this.endPage - 8;
		 * 
		 * int realEnd = (int) (Math.ceil((total * 1.0)/ cri.getAmount()));
		 * 
		 * if(realEnd < this.endPage) { this.endPage = realEnd; }
		 * 
		 * this.prev = this.startPage > 1; this.next = this.endPage < realEnd;
		 */
	}
}