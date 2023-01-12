package com.hyundai.controller;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

import lombok.Setter;
import lombok.extern.log4j.Log4j;
/*********************************
 * @function : ProductControllerTests
 * @author : Seeun Lee
 * @Date : Jan 8. 2023.
 * @description : product Controller Test Code
 *********************************/
@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml", 
	"file:src/main/webapp/WEB-INF/spring/root-context.xml", "file:src/main/webapp/WEB-INF/spring/security-context.xml"})
@Log4j
public class ProductControllerTests {
	@Setter(onMethod_= {@Autowired})
	private WebApplicationContext ctx;
	private MockMvc mockMvc;
	
	@Before
	public void setup() {
		this.mockMvc = MockMvcBuilders.webAppContextSetup(ctx).build();
	}
	//produc List
	@Test
	public void testGetProductList() throws Exception {
		log.info(
				mockMvc.perform(MockMvcRequestBuilders
						.get("/product/productList")
						.param("pageNum", "1").param("amount", "9"))
						.andReturn()
						.getModelAndView().getModelMap());
				
	}
	
	//product Detail
	@Test
	public void testGetProductDetail() throws Exception {
		log.info(
				mockMvc.perform(MockMvcRequestBuilders
						.get("/product/productDetail")
						.param("productId", "1"))
						.andReturn()
						.getModelAndView().getModelMap());
		
	}
	
	//product Category
	@Test
	public void testGetCategory() throws Exception {
		log.info(
				mockMvc.perform(MockMvcRequestBuilders
				.get("/product/productCategory")
				.param("productCategory", "스킨케어").param("pageNum", "1").param("amount", "9"))
				.andReturn()
				.getModelAndView().getModelMap());
	}
}
