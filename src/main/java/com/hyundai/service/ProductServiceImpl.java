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

	// 占쏙옙품 占쏙옙체 list 占쌀뤄옙占쏙옙占쏙옙
	@Override
	public List<productVO> getListWithPaging(Criteria cri) throws Exception {
		log.info(">>> 占쏙옙품 占쏙옙占쏙옙징 처占쏙옙 list 占쌀뤄옙占쏙옙占쏙옙" + cri);
		return mapper.getListWithPaging(cri);
	}

	@Override
	public int getTotalCount() {
		log.info(">>> 占쏙옙품 占쏙옙체 占쏙옙占쏙옙");
		return mapper.getTotalCount();
	}

	@Override
	public List<productVO> getCategoryListWithPaging(Criteria cri, String productCategory) {
		log.info(">>> 카占쌓곤옙 占쏙옙품 占쏙옙占쏙옙징");
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

	// 占쏙옙占쏙옙占쏙옙占쏙옙 占쏙옙회 + count
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

	@Override
	public String getProductImage(Long productId) {

		return mapper.getProductImage(productId);
	}

	@Override
	public List<productVO> getProductSearch(Criteria cri, String searchWord) {
		// TODO Auto-generated method stub
		return mapper.getProductSearch(cri, searchWord);
	}
}