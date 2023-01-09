package com.hyundai.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.hyundai.domain.Criteria;
import com.hyundai.domain.productDetailVO;
import com.hyundai.domain.productVO;

public interface ProductMapper {
	
	//��ǰ ��ü
	public List<productVO> getListWithPaging(Criteria cri); // �Ķ���� �޾Ƽ� ����¡ ������ -> xml �θ� ��
	
	public int getTotalCount();
	
	//��ǰ ī�װ�
	public List<productVO> getCategoryListWithPaging(@Param("cri") Criteria cri, @Param("productCategory") String productCategory);
	
	public int getCategoryTotalCount(@Param("productCategory") String productCategory);
	
	//NewBest
	public List<productVO> getNewBestListWithPaging(Criteria cri);
	
	public int getNewBestTotalCount();
	
	//��ǰ��
	public List<productDetailVO> getProductDetail(@Param("productId") Long productId);
	
	public int getProductDetailCount(Long productId);

	public List<String> getAllergies(@Param("id") String id,@Param("productId") Long productId);
}
