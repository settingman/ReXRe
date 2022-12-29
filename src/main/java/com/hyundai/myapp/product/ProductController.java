package com.hyundai.myapp.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hyundai.domain.productVO;
import com.hyundai.mapper.ProductMapper;
import com.hyundai.service.ProductService;

import lombok.Data;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@RequestMapping("/product/*")
@Controller
public class ProductController {
	
	//Controller에서 service 호출
	@Setter(onMethod_= @Autowired)
	private ProductService productService;
	
	@GetMapping("/newBestList")
	public String newBestList() //jsp 확인 
	{
		log.info("list");
		return "/product/newBestList";
	}
	
	
	//Controller에서 서비스 호출
	@GetMapping("/productList")
	public void productList(Model model)
	{
		log.info("productList");
		model.addAttribute("productList", productService.getList());
		//return "/product/productList";
	}
	
	@ResponseBody
	@GetMapping(value="/list2", produces=MediaType.APPLICATION_JSON_VALUE)
	public List<productVO> productList2()
	{
		log.info("productList");
		return productService.getList();
		
	}
	
	@GetMapping("/productDetail")
	public String productDetail()
	{
		log.info("productDetail");
		return "product/productDetail";
	}
	
	@GetMapping("/cartModal")
	public String cartModal()
	{
		log.info("cartModal");
		return "product/cartModal";
	}
}
