package com.hyundai.service;

import java.util.List;

import com.hyundai.domain.Criteria;
import com.hyundai.domain.productDetailVO;
import com.hyundai.domain.productVO;
/*********************************
 * @function : ProductService
 * @author : Seeun Lee
 * @Date : Jan. 8. 2023.
 * @description : product Service interface Code
 *********************************/
public interface ProductService {
	// 전체 상품 페이징 처리
	public List<productVO> getListWithPaging(Criteria cri) throws Exception;

	public int getTotalCount();

	// 카테고리 페이징 처리
	public List<productVO> getCategoryListWithPaging(Criteria cri, String productCategory);

	// 카테고리 별 전체 개수 
	public int getCategoryTotalCount(String productCategory);

	// newBest 페이징 처리
	public List<productVO> getNewBestListWithPaging(Criteria cri);

	// newBest 전체 개수
	public int getNewBestTotalCount();

	// product Detail 상품 상세 페이지
	public List<productDetailVO> getProductDetail(Long productId);
	
	//상품과 고객 아이디를 비교해 알러지 정보를 추출
	public List<String> getAllergies(String id, Long productId);

	//상세페이지 상품 정보 중 상품 이미지를 보여주기 위함
	public String getProductImage(Long productId);

	// productSearch 상품명으로 검색 
	public List<productVO> getProductSearch(Criteria cri, String searchWord);
}