package com.hyundai.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.hyundai.domain.ReplyVO;
import com.hyundai.domain.board.BoardCriteria;

public interface ReplyMapper {
	//댓글의 리스트를 불러오는 메소드
	public List<ReplyVO>getListWithPage(
			@Param("cri")BoardCriteria cri,
			@Param("boardId")Long boardId
			);
	//댓글을 삽입해주는 메소드
	public int insert(ReplyVO reply);
	//댓글 하나를 조회하는 메소드
	public ReplyVO read(Long replyId);
	//댓글을 삭제하는 메소드
	public int delete(Long replyID);
	//댓글을 수정하는 메소드
	public int update(ReplyVO reply);
}