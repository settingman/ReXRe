package com.hyundai.mapper;

import java.util.List;

import com.hyundai.domain.PageMaker;
import com.hyundai.domain.board.BoardVO;
/*********************************
 * @function : BoardMapper
 * @author : Taeseung Choi
 * @Date : Dec 26. 2022.
 * Mapper for CRUD
*********************************/
public interface BoardMapper {
	
	public List<BoardVO> getList(); 
	public List<BoardVO> getListWithPaging(PageMaker pageMaker); // 페이징 처리된 리스트를 get
	public void insert(BoardVO board); // 등록(insert)
	public BoardVO read(long boardId); // 조회(read)
	public boolean update(BoardVO board); // 수정(update)
	public boolean delete(long boardId); // 삭제(delete)
	public int getTotalCount(PageMaker pageMaker); // 게시물의 총 개수(getTotalCount) get

}
