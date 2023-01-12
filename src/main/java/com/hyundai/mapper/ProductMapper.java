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

	public int getCategoryTotalCount(@Param("productCategory") String productCategory);

	// NewBest 
	public List<productVO> getNewBestListWithPaging(Criteria cri);

	public int getNewBestTotalCount();

	// Product Detail
	public List<productDetailVO> getProductDetail(@Param("productId") Long productId);

	public int getProductDetailCount(Long productId);
	
	//detail allergy
	public List<String> getAllergies(@Param("id") String id, @Param("productId") Long productId);

	public String getProductImage(@Param("productId") Long productId);
	
	//product Name search
	public List<productVO> getProductSearch(@Param("cri") Criteria cri, @Param("searchWord") String searchWord);
}