package com.hyundai.mapper;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.hyundai.domain.CartItem;
import com.hyundai.service.CartService;

import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
@NoArgsConstructor
public class ProductMapperTests {

   @Setter(onMethod_ = @Autowired)
   private CartService mapper;


   @Test
   public void testGetList() {
      log.info("helloooo");
      List<CartItem> list = mapper.findCart(255);
      log.info(list.isEmpty());
      log.info(list.size());
//
//      log.info(list.get(0));
//
//      log.info(list);

      list.forEach(product -> log.info(product.getPRODUCT_NAME()));
      // assertEquals(0, 0);
      // mapper.getList().forEach(product -> log.info(product));
   }
   
   
   @Test
   public void update() {
	   
	   log.info("update");
	   mapper.updateQuantity(1, 1234, 255, 1);
      

   }
   
   
   
   

}