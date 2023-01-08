package com.hyundai.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.hyundai.domain.Review2VO;

public interface ReviewService2 {
	List<Review2VO> getReviewWithPaging(@Param("productId") Long productId) throws Exception;
}
