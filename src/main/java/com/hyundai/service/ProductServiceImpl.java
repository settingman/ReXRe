package com.hyundai.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hyundai.domain.Criteria;
import com.hyundai.domain.productVO;
import com.hyundai.mapper.ProductMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Service
@Log4j

public class ProductServiceImpl implements ProductService {

	@Setter(onMethod_ = @Autowired)
	private ProductMapper mapper;
	/*
	 * public List<productVO> getList (Criteria cri) {
	 * log.info("getList Criteria .... "); return mapper.getListWithPaging(cri); }
	 */

	@Override
	public List<productVO> getList(Criteria cri) {
		log.info("@@@@@@@@@@@@@@2 getList2 ServiceImple");
		return mapper.getListWithPaging(cri);
	}

	// 쓰레기 코드
	// 게시물의 총 행 개수 get (getTotal)
	@Override
	public int getTotal(Criteria cri) throws Exception {
		log.info(">>> 총 행 개수 가져오는 메서드 시작");
		return mapper.getTotalCount(cri);
	}

	@Override
	public List<productVO> getListWithPaging(Criteria cri) throws Exception {
		log.info(">>> 상품 페이징 처리 list 불러오기 시작" + cri);
		return mapper.getListWithPaging(cri);
	}
	
	

}