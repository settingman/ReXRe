package com.hyundai.service.board;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hyundai.domain.PageMaker;
import com.hyundai.domain.board.BoardVO;
import com.hyundai.mapper.BoardMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class BoardServiceImpl implements BoardService {

	@Autowired
	private BoardMapper mapper;

	// 페이징 처리한 게시물 리스트를 가져옴
	@Override
	public List<BoardVO> getListWithPaging(PageMaker pageMaker) throws Exception {
		log.info(">>> 게시판 페이징 처리 list 불러오기 시작" + pageMaker.toString());
		return mapper.getListWithPaging(pageMaker);
	}

	// 등록(insert)
	@Override
	public void insert(BoardVO board) throws Exception {
		log.info(">>> insert 시작");
		// 회원 아이디가 없을 경우 기본 아이디 1로 설정
		if (board.getMembersMemberId() == null)
			board.setMembersMemberId(Long.valueOf(1));
		board.setBoardContent(board.getBoardContent().replace("\r\n", "<br>"));
		mapper.insert(board);
	}

	// 조회(read)
	@Override
	public BoardVO read(long boardId) throws Exception {
		log.info(">>> read 시작");
		return mapper.read(boardId);
	}

	// 수정(update)
	@Override
	public boolean update(BoardVO board) throws Exception {
		log.info(">>> update 시작");
		// 회원 아이디가 없을 경우 기본 아이디 1로 설정
		if (board.getMembersMemberId() == null)
			board.setMembersMemberId(Long.valueOf(1));
		board.setBoardContent(board.getBoardContent().replace("\r\n", "<br>"));
		return mapper.update(board) == true;
	}

	// 삭제(delete)
	@Override
	public boolean delete(long boardId) throws Exception {
		log.info(">>> delete 시작");

		return mapper.delete(boardId) == true;
	}

	// 게시물의 총 행 개수 get (getTotal)
	@Override
	public int getTotal(PageMaker pageMaker) throws Exception {
		log.info(">>> 총 행 개수 가져오는 메서드 시작");
		return mapper.getTotalCount(pageMaker);
	}

	@Override
	public List<BoardVO> getList2(PageMaker pageMaker) throws Exception {
		log.info("@@@@@@@@@@@@@@2 getList2 ServiceImple");
		return mapper.getListWithPaging(pageMaker);
	}

	

}