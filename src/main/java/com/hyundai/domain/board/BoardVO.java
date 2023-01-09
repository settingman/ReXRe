package com.hyundai.domain.board;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;

/*********************************
 * @function : BoardVO
 * @author : Taeseung Choi
 * @Date : Dec 26. 2022. 게시글 데이터를 담는 VO
 *********************************/
@Data
public class BoardVO {
	private Long boardId; // 게시글 번호
	private String boardTitle; // 제목
	private String boardContent; // 내용
	private String boardCategory; // 카테고리
	private Long membersMemberId; // 작성자(관리자)
	private String boardSubcategory; // 하위카테고리
	@DateTimeFormat(pattern = "yyyy-MM-dd") // 날짜 형식
	private Date boardRegDate;// 날짜
	@DateTimeFormat(pattern = "yyyy-MM-dd") // 날짜 형식
	private Date boardEndDate; // 날짜2 for push

	// 썸네일
	private String faqsThumbImg;
	private String faqsImg;

	public String getFaqsThumbImg() {
		return faqsThumbImg;
	}

	public void setFaqsThumbImg(String faqsThumbImg) {
		this.faqsThumbImg = faqsThumbImg;
	}

}