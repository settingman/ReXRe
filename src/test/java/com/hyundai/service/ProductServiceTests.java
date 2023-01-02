package com.hyundai.service;

import static org.junit.Assert.assertNotNull;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.hyundai.domain.Criteria;
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
	 * //getList Ȯ��
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
	
}
