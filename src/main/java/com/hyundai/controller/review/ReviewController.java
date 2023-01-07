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
	// ReviewService ê°ì²´ ë¶ˆëŸ¬?˜¤ê¸?
	@Autowired
	private ReviewService service;
	
	/**
	 * ë¦¬ë·° ë¦¬ìŠ¤?Š¸ë¥? ë¶ˆëŸ¬?˜¤?Š” ?•¨?ˆ˜ PageMaker
	 */
	@GetMapping("/list")
	public void list(PageMaker pageMaker, Model model) throws Exception {

		int total = service.getTotal(pageMaker); // ê²Œì‹œê¸??˜ ê°œìˆ˜ ?‘œ?‹œ
		pageMaker.setTotPage(total);
		List<ReviewVO> list = service.getListWithPaging(pageMaker);
		System.out.println(" total : " +total);
		
		
		model.addAttribute("pagination", pageMaker.pagination("list")); // ?˜?´ì§??„¤?´?…˜ ?„¤? •
		log.info("pageMaker >>>>>>>>>>>>>>>>>" + pageMaker.pagination("list"));
		model.addAttribute("count", total); // ê²Œì‹œê¸??˜ ì´? ê°œìˆ˜
		model.addAttribute("pageMaker", pageMaker); // ?˜?´ì§? ì²˜ë¦¬?•œ ê°’ì„ pageMaker?— ? „?‹¬
		model.addAttribute("list", list);
		
		System.out.println("@@@@@@@@@@@@@@@@@@@@@" + pageMaker);
		
	}
	
	// ê²Œì‹œ?Œ insert ?˜?´ì§?
		@GetMapping("/insert")
		public void register() {
			log.info("ê²Œì‹œ?Œ ?“±ë¡? ?˜?´ì§? ");
		}

		// ê²Œì‹œê¸? ?“±ë¡? ?˜?´ì§??—?„œ ?“±ë¡? ë²„íŠ¼?„ ?ˆ„ë¥´ë©´ insert ?›„?— ë¦¬ìŠ¤?Š¸ ?˜?´ì§? ì²? ?™”ë©´ìœ¼ë¡? ?´?™ -> insert.jsp
		@PostMapping("/insert")
		public String insert(ReviewVO review, RedirectAttributes rttr) throws Exception {
			System.out.println(" insert  : " + review.toString());

			// insert ?‹œ?‘
			service.insert(review);
			rttr.addFlashAttribute("inserted", review.getReviewId());
			return "redirect:list";
		}
		
		// ê²Œì‹œê¸? ì¡°íšŒ ë°? ?ˆ˜? • -> read.jsp ì¡°íšŒ?•˜ê³? ?‹¶?? ê²Œì‹œê¸??„ ?´ë¦??•˜ë©? reviewIdê³? ?˜?´ì§? ? •ë³? ??™ ë°”ì¸?”©
		@GetMapping({ "/read", "/update" })
		public void read(@RequestParam("reviewId") long reviewId, Model model) throws Exception {
			model.addAttribute("review", service.read(reviewId));
		}
		
		@PostMapping("/update") // ê²Œì‹œê¸? ?ˆ˜? •(update) ?˜?´ì§?. ?ˆ˜? • ë²„íŠ¼?„ ?ˆ„ë¥´ë©´ ?‹¤?–‰?¨
		public String update(ReviewVO review, RedirectAttributes rttr) throws Exception {
			// ?ˆ˜? •?˜?Š” ê°’ì´ ?ˆ?œ¼ë©? success ê²°ê³¼ë¥? attribute ê°’ìœ¼ë¡? ? „?†¡?•¨
			if (service.update(review)) {
				rttr.addFlashAttribute("result", "success");
			}
			return "redirect:read?boardId=" + review.getReviewId();
		}
	
		/**
		 * Ajax ë°˜í™˜ ì²˜ë¦¬ ê²Œì‹œê¸? ì¡°íšŒ ?˜?´ì§??—?„œ ?‚­? œ ë²„íŠ¼?„ ?ˆ„ë¥¼ì‹œ ?‹¤?–‰?˜?Š” ë©”ì„œ?“œ
		 * 
		 * @param boardId
		 * @param rttr
		 * @return
		 * @throws Exception
		 */
		@PostMapping("/delete")
		public ResponseEntity<?> delete(@RequestParam("reviewId") long reviewId, RedirectAttributes rttr) throws Exception {
			// ë°›ì•„?˜¨ boardIdê°’ìœ¼ë¡? ?•´?‹¹?˜?Š” ê²Œì‹œê¸??„ ?‚­? œ?•œ?‹¤
			try {
				service.delete(reviewId);
				return ResponseEntity.status(200).body("success");
			} catch (Exception e) {
				return ResponseEntity.status(403).body("?‚­? œ ?˜¤ë¥?");
			}
		}
	
	

}
