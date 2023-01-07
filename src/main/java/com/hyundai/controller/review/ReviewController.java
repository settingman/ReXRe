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
	// ReviewService κ°μ²΄ λΆλ¬?€κΈ?
	@Autowired
	private ReviewService service;
	
	/**
	 * λ¦¬λ·° λ¦¬μ€?Έλ₯? λΆλ¬?€? ?¨? PageMaker
	 */
	@GetMapping("/list")
	public void list(PageMaker pageMaker, Model model) throws Exception {

		int total = service.getTotal(pageMaker); // κ²μκΈ?? κ°μ ??
		pageMaker.setTotPage(total);
		List<ReviewVO> list = service.getListWithPaging(pageMaker);
		System.out.println(" total : " +total);
		
		
		model.addAttribute("pagination", pageMaker.pagination("list")); // ??΄μ§??€?΄? ?€? 
		log.info("pageMaker >>>>>>>>>>>>>>>>>" + pageMaker.pagination("list"));
		model.addAttribute("count", total); // κ²μκΈ?? μ΄? κ°μ
		model.addAttribute("pageMaker", pageMaker); // ??΄μ§? μ²λ¦¬? κ°μ pageMaker? ? ?¬
		model.addAttribute("list", list);
		
		System.out.println("@@@@@@@@@@@@@@@@@@@@@" + pageMaker);
		
	}
	
	// κ²μ? insert ??΄μ§?
		@GetMapping("/insert")
		public void register() {
			log.info("κ²μ? ?±λ‘? ??΄μ§? ");
		}

		// κ²μκΈ? ?±λ‘? ??΄μ§??? ?±λ‘? λ²νΌ? ?λ₯΄λ©΄ insert ?? λ¦¬μ€?Έ ??΄μ§? μ²? ?λ©΄μΌλ‘? ?΄? -> insert.jsp
		@PostMapping("/insert")
		public String insert(ReviewVO review, RedirectAttributes rttr) throws Exception {
			System.out.println(" insert  : " + review.toString());

			// insert ??
			service.insert(review);
			rttr.addFlashAttribute("inserted", review.getReviewId());
			return "redirect:list";
		}
		
		// κ²μκΈ? μ‘°ν λ°? ??  -> read.jsp μ‘°ν?κ³? ?Ά?? κ²μκΈ?? ?΄λ¦??λ©? reviewIdκ³? ??΄μ§? ? λ³? ?? λ°μΈ?©
		@GetMapping({ "/read", "/update" })
		public void read(@RequestParam("reviewId") long reviewId, Model model) throws Exception {
			model.addAttribute("review", service.read(reviewId));
		}
		
		@PostMapping("/update") // κ²μκΈ? ?? (update) ??΄μ§?. ??  λ²νΌ? ?λ₯΄λ©΄ ?€??¨
		public String update(ReviewVO review, RedirectAttributes rttr) throws Exception {
			// ?? ?? κ°μ΄ ??Όλ©? success κ²°κ³Όλ₯? attribute κ°μΌλ‘? ? ?‘?¨
			if (service.update(review)) {
				rttr.addFlashAttribute("result", "success");
			}
			return "redirect:read?boardId=" + review.getReviewId();
		}
	
		/**
		 * Ajax λ°ν μ²λ¦¬ κ²μκΈ? μ‘°ν ??΄μ§??? ?­?  λ²νΌ? ?λ₯Όμ ?€??? λ©μ?
		 * 
		 * @param boardId
		 * @param rttr
		 * @return
		 * @throws Exception
		 */
		@PostMapping("/delete")
		public ResponseEntity<?> delete(@RequestParam("reviewId") long reviewId, RedirectAttributes rttr) throws Exception {
			// λ°μ?¨ boardIdκ°μΌλ‘? ?΄?Ή?? κ²μκΈ?? ?­? ??€
			try {
				service.delete(reviewId);
				return ResponseEntity.status(200).body("success");
			} catch (Exception e) {
				return ResponseEntity.status(403).body("?­?  ?€λ₯?");
			}
		}
	
	

}
