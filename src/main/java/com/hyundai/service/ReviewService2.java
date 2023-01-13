package com.hyundai.service;

/*********************************
 * @function : Review Service
 * @author : Seeun Lee
 * @Date : Jan 8. 2023.
 * @description : Review Service Interface 
 *********************************/
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.hyundai.domain.Review2VO;

public interface ReviewService2 {
	
	//product Detail Review Paging
	List<Review2VO> getReviewWithPaging(@Param("productId") Long productId) throws Exception;
	
	//product Detail Review Count
	int getReview2TotalCount(@Param("productId") Long productId);
}
