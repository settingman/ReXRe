package com.hyundai.mapper;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.hyundai.domain.CartItem;
import com.hyundai.domain.Criteria;
import com.hyundai.domain.productVO;

import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
@NoArgsConstructor
public class ProductMapperTests {

   @Setter(onMethod_ = @Autowired)
   private ProductMapper mapper;
   
   @Setter(onMethod_ = @Autowired)
   
   private CartMapper carmapper;


   @Test
   public void testGetList() {
      log.info("helloooo");
      List<productVO> list = mapper.getList();
      log.info(list.isEmpty());
      log.info(list.size());
//
//      log.info(list.get(0));
//
//      log.info(list);

      list.forEach(product -> log.info(product));
      // assertEquals(0, 0);
      // mapper.getList().forEach(product -> log.info(product));
   }

   
   @Test
   public void testgetListWithPaging() {
	   log.info("getListwith paging");
	   Criteria criteria = new Criteria();
	   criteria.setPageNum(2);
	   criteria.setAmount(9);
	   List<productVO> list = mapper.getListWithPaging(criteria);
   }
   
   @Test
   public void CartList() {
	   log.info("CartList paging");
	   List<CartItem> list = carmapper.findCart(255);
	   log.info(list.isEmpty());
	      log.info(list.size());
	   
   }
   
   
   
}