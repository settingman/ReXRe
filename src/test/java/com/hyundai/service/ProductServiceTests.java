package com.hyundai.service;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.hyundai.domain.Criteria;
import com.hyundai.domain.productDetailVO;
import com.hyundai.domain.productVO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;
/*********************************
 * @function : ProductServiceTests
 * @author : Seeun Lee
 * @Date : Jan 8. 2023.
 * @description : product Service Test Code
 *********************************/
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/root-context.xml", "file:src/main/webapp/WEB-INF/spring/security-context.xml"})
@Log4j
public class ProductServiceTests {
	
	@Setter(onMethod_ = @Autowired)
	private ProductService service;
	
	//product list
	@Test
	public void testGetPagingList() throws Exception {
		
		List<productVO> list = service.getListWithPaging(new Criteria(1,9));
	
		for(int i = 0; i < list.size(); i++) {
			System.out.println(list.get(i));
		}
	}
	
	//product Total count
	@Test
	public void testGetTotalCount() throws Exception {
		int count = service.getTotalCount();
		System.out.print(count);
	}
	
	//product CategoryList 
	@Test
	public void testGetCategoryList() {

		List<productVO> list = service.getCategoryListWithPaging(new Criteria(1,9), "스킨케어");
		for(int i = 0; i < list.size(); i++) {
			System.out.println(list.get(i));
		}
	}
	
	//product category count
	@Test
	public void testCategoryCount() {
		System.out.println(service.getCategoryTotalCount("스킨케어"));
		
	}
	
	//product NewBest
	@Test
	public void testNewBestList() {
		List<productVO> list = service.getNewBestListWithPaging(new Criteria(1,9));
		for(int i = 0; i < list.size(); i++) {
			System.out.println(list.get(i));
		}
	}
	

	//product Detail
	@Test
	public void testGetProductDetail() throws Exception {
		List<productDetailVO> list = service.getProductDetail(1L);
		for(int i = 0; i < list.size(); i++) {
			log.info(list.get(i));
		}
	}
	
	
}