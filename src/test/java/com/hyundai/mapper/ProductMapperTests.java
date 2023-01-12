package com.hyundai.mapper;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.hyundai.domain.Criteria;
import com.hyundai.domain.PageDTO;
import com.hyundai.domain.productDetailVO;
import com.hyundai.domain.productVO;

import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;
/*********************************
 * @function : ProductMapperTest
 * @author : Seeun Lee
 * @Date : Jan. 5. 2023.
 * @description : product mapper Test Code
 *********************************/
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/root-context.xml","file:src/main/webapp/WEB-INF/spring/security-context.xml"})
@Log4j
@NoArgsConstructor
public class ProductMapperTests {
	@Setter(onMethod_ = @Autowired)
	private ProductMapper mapper;
	
	
	//product GetListTest
	@Test 
	public void testGetListWithPaging() {
		log.info("getListWith paging");
		int count = mapper.getTotalCount();
		Criteria cri = new Criteria(2,9);
		PageDTO pageDTO = new PageDTO(cri, count);
		List<productVO> list = mapper.getListWithPaging(cri);
		
		for(int i = 0; i < list.size(); i++) {
			System.out.println(list.get(i));
		}
	}
	
	//product
	@Test
	public void testGetTotalCount() {
		log.info("getTotalCount");
		int count = mapper.getTotalCount();
		System.out.println(count);
	}
	
	//product Category Paging
	@Test
	public void testCategoryListWithPaging() {
		log.info("getCategoryListWith paging");
		List<productVO> list = mapper.getCategoryListWithPaging(new Criteria(), "��Ų�ɾ�");
		for(int i = 0; i < list.size(); i++) {
			log.info(list.get(i));
		}
	}
	
	//product Category Count
	@Test
	public void testCategoryTotalCount() {
		log.info("getCategoryListWith paging");
		int count = mapper.getCategoryTotalCount("��Ų�ɾ�");
		log.info(count);
	}
	
	
	//product newBest List
	@Test
	public void testNewBestListWithPaging() {
		log.info("getNewBestWith Paging");
		
		List<productVO> list = mapper.getNewBestListWithPaging(new Criteria());
		for(int i = 0; i < list.size(); i++) {
			log.info(list.get(i));
		}
	}
	
	//product Detail
	@Test
	public void testGetProductDetail() {
		System.out.println("getProductDetail");
		
		List<productDetailVO> list = mapper.getProductDetail(1L);
		for(int i = 0; i < list.size(); i++) {
			log.info(list.get(i));
		}
	}
	
	//productDetailClick +1
	@Test
	public void testGetProductDetailCount() throws Exception {
		log.info("getProductDetailCount");
		int count = mapper.getProductDetailCount(1L);
		log.info(count);
	}
	
	//getAllergy
	@Test
	public void getAler() throws Exception {
		List<String> count = mapper.getAllergies("member1",1L);
		log.info(count);
	}
	
	//getProductImage
	@Test
	public void testGetProductImage() {
		System.out.println("productImage");
		String image = mapper.getProductImage(1L);
		System.out.println(image);
	}
}
