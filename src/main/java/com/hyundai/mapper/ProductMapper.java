package com.hyundai.mapper;

import java.util.List;



import com.hyundai.domain.productVO;

public interface ProductMapper {
	//@Select("select * from products")
	public List<productVO> getList();
}

