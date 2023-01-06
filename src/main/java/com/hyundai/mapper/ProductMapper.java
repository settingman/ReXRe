package com.hyundai.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.hyundai.domain.Criteria;
import com.hyundai.domain.productDetailVO;
import com.hyundai.domain.productVO;

public interface ProductMapper {
	
	//상품 전체
	public List<productVO> getListWithPaging(Criteria cri); // 파라미터 받아서 페이징 보여줌 -> xml 부를 것
	
	public int getTotalCount();
	
	//상품 카테고리
	public List<productVO> getCategoryListWithPaging(@Param("cri") Criteria cri, @Param("productCategory") String productCategory);
	
	public int getCategoryTotalCount(@Param("productCategory") String productCategory);
	
	//NewBest
	public List<productVO> getNewBestListWithPaging(Criteria cri);
	
	public int getNewBestTotalCount();
	
	//상품상세
	public List<productDetailVO> getProductDetail(@Param("productId") Long productId);
	
	public int getProductDetailCount(Long productId);
}
