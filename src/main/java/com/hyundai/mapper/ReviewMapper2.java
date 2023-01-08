package com.hyundai.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.hyundai.domain.Review2VO;

public interface ReviewMapper2 {
	List<Review2VO> getReview2WithPaging(@Param("productId") Long productId);
	int getReview2TotalCount(@Param("productId") Long productId);
}
