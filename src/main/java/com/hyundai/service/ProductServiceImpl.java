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
/*********************************
 * @function : Product Service Implements
 * @author : Seeun Lee
 * @Date : Jan. 8. 2023.
 *********************************/
@Service
@Log4j
public class ProductServiceImpl implements ProductService {

	@Setter(onMethod_ = @Autowired)
	private ProductMapper mapper;

	//product list paging
	@Override
	public List<productVO> getListWithPaging(Criteria cri) throws Exception {
		log.info(">>> getListWithPaging" + cri);
		return mapper.getListWithPaging(cri);
	}

	//getProductTotalCount
	@Override
	public int getTotalCount() {
		log.info(">>> getTotalCount");
		return mapper.getTotalCount();
	}

	//getCategoryPaging
	@Override
	public List<productVO> getCategoryListWithPaging(Criteria cri, String productCategory) {
		log.info(">>> getCategoryListWithPaging");
		return mapper.getCategoryListWithPaging(cri, productCategory);
	}
	
	//getCategoryCount
	@Override
	public int getCategoryTotalCount(String productCategory) {
		log.info(">>>> getCategoryTotalCount");
		return mapper.getCategoryTotalCount(productCategory);
	}
	
	//getNewBestPaging
	@Override
	public List<productVO> getNewBestListWithPaging(Criteria cri) {
		log.info(">>>> getNewBestListWithPaging");
		return mapper.getNewBestListWithPaging(cri);
	}
	
	//getNewBestTotalCount
	@Override
	public int getNewBestTotalCount() {
		log.info(">>>> getNewBestTotalCount");
		return mapper.getNewBestTotalCount();
	}

	//Detail + count
	@Override
	@Transactional
	public List<productDetailVO> getProductDetail(Long productId) {
		int update = mapper.getProductDetailCount(productId);
		log.info(">>>>> getProductDetail");
		return mapper.getProductDetail(productId);
	}

	//memberId, productId getAllergy
	@Override
	public List<String> getAllergies(String id, Long productId) {
		System.out.println("service");
		List<String> list = mapper.getAllergies(id, productId);
		return list;
	}

	//product Detail getImage
	@Override
	public String getProductImage(Long productId) {

		return mapper.getProductImage(productId);
	}
	
	//productName search
	@Override
	public List<productVO> getProductSearch(Criteria cri, String searchWord) {
		// TODO Auto-generated method stub
		return mapper.getProductSearch(cri, searchWord);
	}
}