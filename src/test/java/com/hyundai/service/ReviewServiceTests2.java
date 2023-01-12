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
/*********************************
 * @function : Review Service Tests
 * @author : Seeun Lee
 * @Date : Jan 8. 2023.
 * @description : product Detail Review Service
 *********************************/
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/root-context.xml", "file:src/main/webapp/WEB-INF/spring/security-context.xml"})
@Log4j
public class ReviewServiceTests2 {

	@Setter(onMethod_ = @Autowired)
	private ReviewService2 service;
	
	//상품 상세 페이지 리뷰 조회
	@Test
	public void testGetReview() throws Exception {
		List<Review2VO> list = service.getReviewWithPaging(1L);
		for(int i = 0; i < list.size(); i++) {
			System.out.println(list.get(i));
		}
		
	}
}
