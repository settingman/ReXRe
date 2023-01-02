/*
 * package com.hyundai.controller;
 * 
 * import org.junit.Before; import org.junit.Test; import
 * org.junit.runner.RunWith; import
 * org.springframework.beans.factory.annotation.Autowired; import
 * org.springframework.test.context.ContextConfiguration; import
 * org.springframework.test.context.junit4.SpringJUnit4ClassRunner; import
 * org.springframework.test.context.web.WebAppConfiguration; import
 * org.springframework.test.web.servlet.request.MockMvcRequestBuilders; import
 * org.springframework.test.web.servlet.setup.MockMvcBuilders; import
 * org.springframework.web.context.WebApplicationContext;
 * 
 * import lombok.Setter; import lombok.extern.log4j.Log4j;
 * 
 * @RunWith(SpringJUnit4ClassRunner.class)
 * 
 * @WebAppConfiguration
 * 
 * @ContextConfiguration({
 * "file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml",
 * "file:src/main/webapp/WEB-INF/spring/root-context.xml" })
 * 
 * @Log4j public class ProductControllerTests {
 * 
 * @Setter(onMethod_ = {@Autowired}) private WebApplicationContext
 * ctxApplicationContext;
 * 
 * private MockMvcBuilders mockMvcBuilders;
 * 
 * @Before public void setup() { this.mockMvcBuilders =
 * MockMvcBuilders.webAppContextSetup(ctxApplicationContext).build(); }
 * 
 * @Test public void testList() throws Exception { log.info(
 * mockMvcBuilders.perform(MockMvcRequestBuilders.get("/product/productList"))
 * .andReturn() .getModelAndView() .getModelMap()); } }
 */