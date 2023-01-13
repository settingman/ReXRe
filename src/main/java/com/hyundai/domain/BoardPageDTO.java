package com.hyundai.domain;

import lombok.Getter;
import lombok.ToString;



/*********************************
 * @function : BoardPageDTO
 * @author : Taeseung Choi
 * @Date : Dec 25. 2022.
 * 게시물의 페이징 처리를 위해 만든 DTO
 * 시작 페이지, 끝 페이지, 현재 페이지 등을 가져옴
 *********************************/

@Getter
@ToString
public class BoardPageDTO {
   private int startPage;
   private int endPage;
   private boolean prev, next;
   
   private int firstPage; // 첫 페이지
   private int lastPage; // 마지막 페이지
   
   
   private int total;
   private Criteria cri;
   
   public BoardPageDTO(Criteria cri, int total) {
      
      
      
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
   }
}