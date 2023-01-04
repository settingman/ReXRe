package com.hyundai.service;

import java.util.List;

import org.springframework.stereotype.Component;

import com.hyundai.domain.Criteria;
import com.hyundai.domain.productDetailVO;
import com.hyundai.domain.productVO;

@Component
public interface ProductService {
	public List<productVO> getList(Criteria cri);
	public int getTotal(Criteria cri) throws Exception; // 총 행 개수
	
	
	public List<productVO> getListWithPaging(Criteria cri)throws Exception; // 페이징 리스트
	
	//상세페이지 + 조회수
	public List<productDetailVO> getProductDetail(Long product_id);
	
	public List<productVO> getCategoryWithPaging(Criteria cri, String product_category) throws Exception;
}
