package com.hyundai.service.review;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hyundai.domain.PageMaker;
import com.hyundai.domain.review.ReviewVO;
import com.hyundai.mapper.ReviewMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class ReviewServiceImpl implements ReviewService {

	@Autowired
	private ReviewMapper mapper;

	// 페이징 처리한 게시물 리스트를 가져옴
	@Override
	public List<ReviewVO> getListWithPaging(PageMaker pageMaker) throws Exception {
		log.info(">>> 게시판 페이징 처리 list 불러오기 시작" + pageMaker.toString());
		List<ReviewVO> reviewvolist= mapper.getListWithPaging(pageMaker);
		
		log.info(reviewvolist.size());
		return reviewvolist;
	}

	// 등록(insert)
	@Override
	public void insert(ReviewVO review) throws Exception {
		log.info(">>> insert 시작");
		// 회원 아이디가 없을 경우 기본 아이디 1로 설정
		if (review.getMembersMemberId() == null)
			review.setMembersMemberId(Long.valueOf(1));
		review.setReviewContent(review.getReviewContent().replace("\r\n", "<br>"));
		mapper.insert(review);
	}

	// 조회(read)
	@Override
	public ReviewVO read(long reviewId) throws Exception {
		log.info(">>> read 시작");
		return mapper.read(reviewId);
	}

	// 수정(update)
	@Override
	public boolean update(ReviewVO review) throws Exception {
		log.info(">>> update 시작");
		// 회원 아이디가 없을 경우 기본 아이디 1로 설정
		if (review.getMembersMemberId() == null)
			review.setMembersMemberId(Long.valueOf(1));
		review.setReviewContent(review.getReviewContent().replace("\r\n", "<br>"));
		return mapper.update(review) == true;
	}

	// 삭제(delete)
	@Override
	public boolean delete(long reviewId) throws Exception {
		log.info(">>> delete 시작");

		return mapper.delete(reviewId) == true;
	}

	// 게시물의 총 행 개수 get (getTotal)
	@Override
	public int getTotal(PageMaker pageMaker) throws Exception {
		log.info(">>> 총 행 개수 가져오는 메서드 시작");
		return mapper.getTotalCount(pageMaker);
	}
}