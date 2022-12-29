package com.hyundai.myapp;

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


import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;


@NoArgsConstructor
@Log4j
@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml", "file:src/main/webapp/WEB-INF/spring/root-context.xml"})
public class ProductControllerTests {
	
	@Setter(onMethod_= @Autowired)
	private WebApplicationContext ctx; //외부에서 injection
	private MockMvc mockMvc;
	
	@Before //junit 초기화
	public void setup() {
		this.mockMvc = MockMvcBuilders.webAppContextSetup(ctx).build();
	}
	
	
	@Test
	public void testGetList() throws Exception {
		log.info("hellooooo");
		log.info(mockMvc.perform(MockMvcRequestBuilders.get("/product/productList")));
		/*
		 * log.info( mockMvc.perform(MockMvcRequestBuilders.get("/product/productList"))
		 * .andReturn() .getModelAndView() .getModelMap() );
		 */
	}
}
