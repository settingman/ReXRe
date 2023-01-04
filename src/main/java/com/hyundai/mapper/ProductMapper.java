package com.hyundai.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.hyundai.domain.Criteria;
import com.hyundai.domain.productDetailVO;
import com.hyundai.domain.productVO;

public interface ProductMapper {

	public List<productVO> getList();

	public List<productVO> getListWithPaging(Criteria cri); // 파라미터 받아서 페이징 보여줌 -> xml 부를 것

	public int getTotalCount(Criteria cri); // 게시물의 총 개수(getTotalCount) get (쓰레기코드)
	
	//category
	public List<productVO> getCategoryWithPaging(@Param("cri") Criteria cri, @Param("product_category") String product_category);
	
	//productDetail
	public List<productDetailVO> getProductDetail(Long product_id); //product_id로만 연결?
	
	//productDetail Count
	public int getProductDetailCount(Long product_id);
}
