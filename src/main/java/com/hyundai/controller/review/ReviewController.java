package com.hyundai.controller.review;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.hyundai.domain.PageMaker;
import com.hyundai.domain.review.ReviewVO;
import com.hyundai.service.review.ReviewService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
@Controller
@Log4j
@RequestMapping("/review/*")
@AllArgsConstructor
public class ReviewController {
	@Autowired
	private ReviewService service;

	
	@GetMapping("/list")
	public void list(PageMaker pageMaker, Model model) throws Exception {

		int total = service.getTotal(pageMaker); 
		pageMaker.setTotPage(total);
		List<ReviewVO> list = service.getListWithPaging(pageMaker);
		System.out.println(" total : " +total);
		
		
		model.addAttribute("pagination", pageMaker.pagination("list")); 
		log.info("pageMaker >>>>>>>>>>>>>>>>>" + pageMaker.pagination("list"));
		model.addAttribute("count", total); 
		model.addAttribute("pageMaker", pageMaker); 
		model.addAttribute("list", list);
		
		System.out.println("@@@@@@@@@@@@@@@@@@@@@" + pageMaker);
		
	}
	
		@GetMapping("/insert")
		public void register() {
			log.info("게시?�� ?���? ?��?���? ");
		}

		@PostMapping("/insert")
		public String insert(ReviewVO review, RedirectAttributes rttr) throws Exception {
			System.out.println(" insert  : " + review.toString());

			service.insert(review);
			rttr.addFlashAttribute("inserted", review.getReviewId());
			return "redirect:list";
		}
		
		@GetMapping({ "/read", "/update" })
		public void read(@RequestParam("reviewId") long reviewId, Model model) throws Exception {
			model.addAttribute("review", service.read(reviewId));
		}
		
		@PostMapping("/update") 
		public String update(ReviewVO review, RedirectAttributes rttr) throws Exception {
			if (service.update(review)) {
				rttr.addFlashAttribute("result", "success");
			}
			return "redirect:read?boardId=" + review.getReviewId();
		}
	
		/**
		 * Ajax 반환 처리 게시�? 조회 ?��?���??��?�� ?��?�� 버튼?�� ?��를시 ?��?��?��?�� 메서?��
		 * 
		 * @param boardId
		 * @param rttr
		 * @return
		 * @throws Exception
		 */
		@PostMapping("/delete")
		public ResponseEntity<?> delete(@RequestParam("reviewId") long reviewId, RedirectAttributes rttr) throws Exception {
			try {
				service.delete(reviewId);
				return ResponseEntity.status(200).body("success");
			} catch (Exception e) {
				return ResponseEntity.status(403).body("?��?�� ?���?");
			}
		}
	
	

}
