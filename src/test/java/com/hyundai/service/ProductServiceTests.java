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
	
	//product list 페이징 처리 테스트
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
	//스킨케어에 해당하는 상품의 1페이지 9개의 항목만 출력
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
	
	//getAllergy member1이 1번 상품에 대해 가지고 있는 알러지 정보 추출
	@Test
	public void testGetAllergy() throws Exception {
		List<String> count = service.getAllergies("member1", 1L);
		log.info(count);
	}
	
}