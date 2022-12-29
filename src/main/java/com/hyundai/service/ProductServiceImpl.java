package com.hyundai.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hyundai.domain.productVO;
import com.hyundai.mapper.ProductMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Service
@Log4j

public class ProductServiceImpl implements ProductService {
	
	@Setter(onMethod_= @Autowired)
	private ProductMapper mapper;

	public List<productVO> getList() {
		// TODO Auto-generated method stub
		log.info("getList .... ");

		return mapper.getList();
	}
}
