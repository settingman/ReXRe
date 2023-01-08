package com.hyundai.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hyundai.domain.Criteria;
import com.hyundai.domain.productDetailVO;
import com.hyundai.domain.productVO;
import com.hyundai.mapper.ProductMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;
@Service
@Log4j
public class ProductServiceImpl implements ProductService {

	@Setter(onMethod_ = @Autowired)
	private ProductMapper mapper;
	
	//��ǰ ��ü list �ҷ�����
	@Override
	public List<productVO> getListWithPaging(Criteria cri) throws Exception {
		log.info(">>> ��ǰ ����¡ ó�� list �ҷ�����" + cri);
		return mapper.getListWithPaging(cri);
	}

	@Override
	public int getTotalCount() {
		log.info(">>> ��ǰ ��ü ����");		
		return mapper.getTotalCount();
	}

	@Override
	public List<productVO> getCategoryListWithPaging(Criteria cri, String productCategory) {
		log.info(">>> ī�װ� ��ǰ ����¡");
		return mapper.getCategoryListWithPaging(cri, productCategory);
	}

	@Override
	public int getCategoryTotalCount(String productCategory) {
		return mapper.getCategoryTotalCount(productCategory);
	}

	@Override
	public List<productVO> getNewBestListWithPaging(Criteria cri) {
		return mapper.getNewBestListWithPaging(cri);
	}

	@Override
	public int getNewBestTotalCount() {
		return mapper.getNewBestTotalCount();
	}

	//�������� ��ȸ + count 
	@Override
	@Transactional
	public List<productDetailVO> getProductDetail(Long productId) {
		int update = mapper.getProductDetailCount(productId);
		return mapper.getProductDetail(productId);
	}

	@Override
	public List<String> getAllergies(String id, Long productId) {
		System.out.println("service");
		List<String> list = mapper.getAllergies(id, productId);
		return list;
	}

}
