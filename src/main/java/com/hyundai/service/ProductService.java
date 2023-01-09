package com.hyundai.service;

import java.util.List;

import com.hyundai.domain.Criteria;
import com.hyundai.domain.productDetailVO;
import com.hyundai.domain.productVO;

public interface ProductService {
	// 占쏙옙체 product 占쏙옙회
	public List<productVO> getListWithPaging(Criteria cri) throws Exception;

	public int getTotalCount();

	// 카占쌓곤옙 product占쏙옙회
	public List<productVO> getCategoryListWithPaging(Criteria cri, String productCategory);

	public int getCategoryTotalCount(String productCategory);

	// newBest
	public List<productVO> getNewBestListWithPaging(Criteria cri);

	public int getNewBestTotalCount();

	// 占쏙옙占쏙옙占쏙옙占쏙옙 + 占쏙옙회占쏙옙
	public List<productDetailVO> getProductDetail(Long productId);

	public List<String> getAllergies(String id, Long productId);

	public String getProductImage(Long productId);

	// productSearch
	public List<productVO> getProductSearch(Criteria cri, String searchWord);
}