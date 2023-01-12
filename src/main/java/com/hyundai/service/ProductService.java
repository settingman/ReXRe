package com.hyundai.service;

import java.util.List;

import com.hyundai.domain.Criteria;
import com.hyundai.domain.productDetailVO;
import com.hyundai.domain.productVO;

public interface ProductService {
	// productListPaging
	public List<productVO> getListWithPaging(Criteria cri) throws Exception;

	public int getTotalCount();

	// product Category Paging
	public List<productVO> getCategoryListWithPaging(Criteria cri, String productCategory);

	public int getCategoryTotalCount(String productCategory);

	// newBest
	public List<productVO> getNewBestListWithPaging(Criteria cri);

	public int getNewBestTotalCount();

	// product Detail
	public List<productDetailVO> getProductDetail(Long productId);

	public List<String> getAllergies(String id, Long productId);

	public String getProductImage(Long productId);

	// productSearch
	public List<productVO> getProductSearch(Criteria cri, String searchWord);
}