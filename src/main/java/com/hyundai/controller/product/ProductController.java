package com.hyundai.controller.product;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.hyundai.domain.Criteria;
import com.hyundai.domain.PageDTO;
import com.hyundai.service.ProductService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/product/*")
@AllArgsConstructor
public class ProductController {
	private ProductService productService;

	
	//product전체상품
	@GetMapping("/productList") 
	public String list(Criteria cri, Model model) throws Exception {
		log.info("product2"+cri);
		//model.addAttribute("productList", productService.getList(cri)); //페이징 처리한 목록 리스트 
				
		int total = productService.getTotal(cri); // 게시글의 개수 표시
		model.addAttribute("count", total); // 게시글의 총 개수
		model.addAttribute("pageMaker",new PageDTO(cri, total)); // 페이징 처리한 값을 pageMaker에 전달
		model.addAttribute("productList", productService.getListWithPaging(cri));
		
		return "products/productList";
	}
	
	//product카테고리
	@GetMapping("/productList/category")
	public String list(@RequestParam("product_category") String category, Criteria cri, Model model) throws Exception {
		log.info("productList/category 들어옴");
		log.info(category);
		
		int total = productService.getTotal(cri);
		model.addAttribute("count", total);
		model.addAttribute("pageMaker", new PageDTO(cri, total));
		model.addAttribute("productList", productService.getCategoryWithPaging(cri, category));
		
		return "/products/productList";
	}
	
	
	//상품상세
	@GetMapping("/productDetail")
	public String list(@RequestParam("product_id") Long product_id, Model model) throws Exception {
		
		log.info("상품상세");
		log.info(product_id);
		
		model.addAttribute("productDetail", productService.getProductDetail(product_id));

		return "/products/productDetail";
	}
	
	
}
