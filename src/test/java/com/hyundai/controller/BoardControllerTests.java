package com.hyundai.controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.aspectj.lang.annotation.Before;
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
@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration({ "file:src/main/webapp/WEB-INF/spring/root-context.xml",
   "file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml",
   "file:src/main/webapp/WEB-INF/spring/security-context.xml" })
@Log4j
public class BoardControllerTests {   
   @Setter(onMethod_ = {@Autowired})
   
   private WebApplicationContext ctx;
   private MockMvc mockMvc;
   
   @Before(value = "")
   public void setUp() {
      this.mockMvc = MockMvcBuilders.webAppContextSetup(ctx).build();      
   }
   
   //게시판 리스트 불러오기 테스트
   @Test
   public void testList() throws Exception {
      log.info(
            mockMvc.perform(MockMvcRequestBuilders.get("/board/list")
            .param("pageNum","2")
            .param("amount","10"))
            .andReturn().getModelAndView().getModelMap());
      
   }
   
   //게시판 등록 테스트
   @Test
   public void testInsert() throws Exception {
      DateFormat sdFormat = new SimpleDateFormat("yyyy-MM-dd");
      Date nowDate = new Date();
      String today = sdFormat.format(nowDate);
      String resultPage = mockMvc.perform(MockMvcRequestBuilders.post("/board/insert")
            .param("boardid", "99443")
            .param("boardtitle", "테스트 제목")
            .param("boardcontent", "테스트 내용")
            .param("boardCategory", "교환")
            .param("subCategory", "faq")
            .param("boarddate", today)
            ).andReturn().getModelAndView().getViewName();
      log.info(resultPage);      
   }
   
   //게시판 조회 테스트
   @Test
   public void testRead() throws Exception {
      log.info(
            mockMvc.perform(
            MockMvcRequestBuilders.get("/board/read")
            .param("boardid", "99443")            
            ).andReturn()
            .getModelAndView()
            .getModelMap()
            );      
   }//end testList
   //게시판 수정 테스트
   @Test
   public void testUpdate() throws Exception{
      DateFormat sdFormat = new SimpleDateFormat("yyyy-MM-dd");
      Date nowDate = new Date();
      String today = sdFormat.format(nowDate);
      String resultPage = mockMvc
            .perform(MockMvcRequestBuilders.post("/board/update")            
            .param("boardtitle", "수정된 제목")
            .param("boardcontent", "수정된 내용")
            .param("boardenddate", today)
            .param("boardid","99443")
            ).andReturn().getModelAndView().getViewName();
      log.info(resultPage);   
   }
   
   //게시판 삭제 테스트
   @Test
   public void testDelete()throws Exception{
      String resultPage = mockMvc.perform(MockMvcRequestBuilders.post("/board/delete")
            .param("boardid", "2")
      ).andReturn().getModelAndView().getViewName();
      log.info(resultPage);
   }
}