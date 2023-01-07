package com.hyundai.service;

import java.util.List;

import com.hyundai.domain.Criteria;
import com.hyundai.domain.productDetailVO;
import com.hyundai.domain.productVO;

public interface ProductService {
	//전체 product 조회
	public List<productVO> getListWithPaging(Criteria cri) throws Exception;
	public int getTotalCount();
	
	//카테고리 product조회
	public List<productVO> getCategoryListWithPaging(Criteria cri, String productCategory);
	public int getCategoryTotalCount(String productCategory);
	
	//newBest
	public List<productVO> getNewBestListWithPaging(Criteria cri);
	public int getNewBestTotalCount();
	
	//상세페이지 + 조회수
	public List<productDetailVO> getProductDetail(Long productId);
}
