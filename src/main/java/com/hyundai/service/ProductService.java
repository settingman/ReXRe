package com.hyundai.service;

import java.util.List;

import com.hyundai.domain.Criteria;
import com.hyundai.domain.productDetailVO;
import com.hyundai.domain.productVO;

public interface ProductService {
	//��ü product ��ȸ
	public List<productVO> getListWithPaging(Criteria cri) throws Exception;
	public int getTotalCount();
	
	//ī�װ� product��ȸ
	public List<productVO> getCategoryListWithPaging(Criteria cri, String productCategory);
	public int getCategoryTotalCount(String productCategory);
	
	//newBest
	public List<productVO> getNewBestListWithPaging(Criteria cri);
	public int getNewBestTotalCount();
	
	//�������� + ��ȸ��
	public List<productDetailVO> getProductDetail(Long productId);
	public List<String> getAllergies(String id, Long productId);
}
