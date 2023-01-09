package com.hyundai.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.hyundai.domain.Criteria;
import com.hyundai.domain.productDetailVO;
import com.hyundai.domain.productVO;

public interface ProductMapper {
	
	//占쏙옙품 占쏙옙체
	public List<productVO> getListWithPaging(Criteria cri); // 占식띰옙占쏙옙占� 占쌨아쇽옙 占쏙옙占쏙옙징 占쏙옙占쏙옙占쏙옙 -> xml 占싸몌옙 占쏙옙
	
	public int getTotalCount();
	
	//占쏙옙품 카占쌓곤옙
	public List<productVO> getCategoryListWithPaging(@Param("cri") Criteria cri, @Param("productCategory") String productCategory);
	
	public int getCategoryTotalCount(@Param("productCategory") String productCategory);
	
	//NewBest
	public List<productVO> getNewBestListWithPaging(Criteria cri);
	
	public int getNewBestTotalCount();
	
	//占쏙옙품占쏙옙
	public List<productDetailVO> getProductDetail(@Param("productId") Long productId);
	
	public int getProductDetailCount(Long productId);

	public List<String> getAllergies(@Param("id") String id,@Param("productId") Long productId);

	public String getProductImage(@Param("productId") Long productId);
}
