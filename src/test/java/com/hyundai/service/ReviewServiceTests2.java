package com.hyundai.service;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.hyundai.domain.Review2VO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class ReviewServiceTests2 {

	@Setter(onMethod_ = @Autowired)
	private ReviewService2 service;
	
	@Test
	public void testGetReview() throws Exception {
		List<Review2VO> list = service.getReviewWithPaging(1L);
		for(int i = 0; i < list.size(); i++) {
			System.out.println(list.get(i));
		}
		
	}
}
