package com.hyundai.service;

import static org.junit.Assert.assertNotNull;

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

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class ProductServiceTests {
	
	@Setter(onMethod_ = @Autowired)
	private ProductService service;
	
	@Test
	public void testExist() {
		log.info(service);
		assertNotNull(service);
	}
	
	/*
	 * //getList È®ï¿½ï¿½
	 * 
	 * @Test public void testGetList() { log.info("@@@@@@@@@@@getList" );
	 * //log.info(service.getList().get(0)); service.getList().forEach(get ->
	 * log.info(get)); //service.getList().forEach(list -> log.info(list)); }
	 */
	
	@Test
	public void testGetList() {
		List<productVO> list = service.getList(new Criteria(1, 9));

		for (int i = 0; i < list.size(); i++) {
			log.info(list.get(i));
		}
	}
	
	//»ó¼¼ÆäÀÌÁö + Á¶È¸¼ö test
	
	@Test
	public void testGetProductDetail() throws Exception {
		List<productDetailVO> list = service.getProductDetail(1L);
		for(int i = 0; i < list.size(); i++) {
			log.info(list.get(i));
		}
	}
	
	
	//Ä«Å×°í¸®
	@Test
	public void testGetCategory() throws Exception {
		List<productVO> list = service.getCategoryWithPaging(new Criteria(1, 9), "skinCare");
		
		for(int i = 0; i < list.size(); i++) {
			log.info(list.get(i));
		}
	}
}
