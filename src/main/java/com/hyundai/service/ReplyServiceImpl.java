package com.hyundai.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hyundai.domain.ReplyVO;
import com.hyundai.domain.board.BoardCriteria;
import com.hyundai.mapper.ReplyMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class ReplyServiceImpl implements ReplyService{
	
	@Autowired
	private ReplyMapper mapper;
	//댓글을 삽입해주는 메소드
	@Override
	public int register(ReplyVO vo) throws Exception{
		log.info("register....." + vo);
		return mapper.insert(vo);
	}
	//댓글 하나를 조회하는 메소드
	@Override
	public ReplyVO get(Long replyId) throws Exception{
		log.info("get...."+ replyId);
		return mapper.read(replyId);
	}
	//댓글을 수정하는 메소드
	@Override
	public int modify(ReplyVO vo)throws Exception{
		log.info("modify...."+vo);
		return mapper.update(vo);
	}
	//댓글을 삭제하는 메소드
	@Override
	public int remove(Long replyId)throws Exception{
		log.info("remove...." + replyId);
		return mapper.delete(replyId);
	}
	//댓글의 리스트를 불러오는 메소드
	@Override
	public List<ReplyVO> getList(BoardCriteria cri, Long boardsBoardId) throws Exception{
		log.info("get Reply List of a Board "+boardsBoardId);
		return mapper.getListWithPage(cri, boardsBoardId);
	}	
}