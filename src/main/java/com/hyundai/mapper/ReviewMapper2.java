package com.hyundai.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.hyundai.domain.Review2VO;

public interface ReviewMapper2 {
	List<Review2VO> getReview2WithPaging(@Param("productId") Long productId);

	int getReview2TotalCount(@Param("productId") Long productId);
	
	
	public Integer insertReview2(@Param("product_id") Integer product_id, @Param("title") String title,
			@Param("content") String content,@Param("member_id") Integer member_id );
}
