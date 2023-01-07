package com.hyundai.service.review;
import java.util.List;

import org.springframework.stereotype.Service;

import com.hyundai.domain.PageMaker;
import com.hyundai.domain.review.ReviewVO;

/*********************************
 * @function : BoardService
 * @author : Taeseung Choi
 * @Date : 
 * 리뷰에 필요한 DB 처리
 *********************************/
@Service
public interface ReviewService {	
	
	public List<ReviewVO> getListWithPaging(PageMaker pageMaker)throws Exception; // 페이징 리스트
	public void insert(ReviewVO review) throws Exception; // 등록
	public ReviewVO read(long reviewId) throws Exception; // 조회
	public boolean delete(long reviewId) throws Exception; // 삭제
	public boolean update(ReviewVO review) throws Exception; // 수정
	public int getTotal(PageMaker pageMaker) throws Exception; // 총 행 개수
}