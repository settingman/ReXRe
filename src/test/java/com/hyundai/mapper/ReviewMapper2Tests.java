package com.hyundai.mapper;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.hyundai.domain.Criteria;
import com.hyundai.domain.PageDTO;
import com.hyundai.domain.Review2VO;

import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
@NoArgsConstructor
public class ReviewMapper2Tests {
	@Setter(onMethod_ = @Autowired)
	private ReviewMapper2 mapper;

	
	@Test
	public void testGetReviewListPaging() {
		List<Review2VO> list = mapper.getReview2WithPaging(1L);
		System.out.print("�궗�씠利� :  " + list.size());
		for(int i = 0; i < list.size(); i++) {
			System.out.print(list.get(i));
		}
	}
}