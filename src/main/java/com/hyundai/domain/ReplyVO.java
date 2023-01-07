package com.hyundai.domain;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;
@Data
public class ReplyVO {
	private Long replyId; // 댓글 id
	private String replyTitle; // 제목
	private String replyContent; // 내용
	@DateTimeFormat(pattern="yyyy-MM-dd") // 날짜 형식
	private Date replyDate; // 날짜
	private Long boardsBoardId; // 게시판 id
	private Long membersMemberId; // 작성자 id
}