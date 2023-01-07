package com.hyundai.mapper;

import java.util.List;

import com.hyundai.domain.PageMaker;
import com.hyundai.domain.review.ReviewVO;
/*********************************
 * @function : ReviewMapper
 * @author : Taeseung Choi
 * @Date : 
 * Mapper for CRUD
*********************************/
public interface ReviewMapper {
	
	public List<ReviewVO> getList(); 
	public List<ReviewVO> getListWithPaging(PageMaker pageMaker); // 페이징 처리된 리스트를 get
	public void insert(ReviewVO review); // 등록(insert)
	public ReviewVO read(long reviewId); // 조회(read)
	public boolean update(ReviewVO review); // 수정(update)
	public boolean delete(long reviewId); // 삭제(delete)
	public int getTotalCount(PageMaker pageMaker); // 게시물의 총 개수(getTotalCount) get

}