package com.hyundai.service;

import java.util.List;

import com.hyundai.domain.ReplyVO;
import com.hyundai.domain.board.BoardCriteria;


public interface ReplyService {
	public int register(ReplyVO vo)throws Exception; // 메서드 : 댓글 삽입
	public ReplyVO get(Long replyId)throws Exception; // 댓글 조회 
	//댓글을 수정하는 메소드
	public int modify(ReplyVO vo)throws Exception;
	//댓글을 삭제하는 메소드
	public int remove(Long replyId)throws Exception;
	//댓글의 리스트를 불러오는 메소드
	public List<ReplyVO> getList(BoardCriteria cri, Long boardId)throws Exception;
}