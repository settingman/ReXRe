package com.hyundai.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.hyundai.domain.Criteria;
import com.hyundai.domain.productDetailVO;
import com.hyundai.domain.productVO;
/*********************************
 * @function : ProductMapper
 * @author : Seeun Lee
 * @Date : Jan. 8. 2023.
 * @description : product Mapper interface Code
 *********************************/
public interface ProductMapper {

	//product List paging
	public List<productVO> getListWithPaging(Criteria cri); 

	public int getTotalCount();

	// product Category paging
	public List<productVO> getCategoryListWithPaging(@Param("cri") Criteria cri,
			@Param("productCategory") String productCategory);

	//category 별 전체 개수
	public int getCategoryTotalCount(@Param("productCategory") String productCategory);

	// NewBest 
	public List<productVO> getNewBestListWithPaging(Criteria cri);

	// NewBest의 전체 개수
	public int getNewBestTotalCount();

	// Product Detail
	public List<productDetailVO> getProductDetail(@Param("productId") Long productId);

	public int getProductDetailCount(Long productId);
	
	//detail allergy 고객아이디와 상품아이디를 매칭하여 알러지 정보를 알려준다
	public List<String> getAllergies(@Param("id") String id, @Param("productId") Long productId);

	//상세페이지에서 사용할 메인 상품 이미지
	public String getProductImage(@Param("productId") Long productId);
	
	//product Name search 상품명으로 검색처리
	public List<productVO> getProductSearch(@Param("cri") Criteria cri, @Param("searchWord") String searchWord);
}