package com.hyundai.service;

import java.util.List;

import org.springframework.stereotype.Component;

import com.hyundai.domain.productVO;

@Component
public interface ProductService {
	public List<productVO> getList();
}
