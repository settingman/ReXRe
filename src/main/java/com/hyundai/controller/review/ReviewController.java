package com.hyundai.controller.review;

import java.security.Principal;
import java.util.ArrayList;
import java.util.List;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.hyundai.domain.OrderList;
import com.hyundai.domain.PageMaker;
import com.hyundai.domain.review.ReviewVO;
import com.hyundai.mapper.MemberMapper;
import com.hyundai.mapper.ReviewMapper2;
import com.hyundai.service.OrderService;
import com.hyundai.service.review.ReviewService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

/**
 * @FileName: ReviewController.java
 * @Project : ReXRe
 * @작성자 : 박성환, 이세은
 * @설명 : 리뷰 컨트롤러
 */

@Controller
@Log4j
@RequestMapping("/review/*")
@AllArgsConstructor
public class ReviewController {

	private ReviewService service;
	private MemberMapper memberMapper;
	private ReviewMapper2 reviewmapper;
	private OrderService orderService;

	@GetMapping("/list")
	public void list(PageMaker pageMaker, Model model) throws Exception {

		int total = service.getTotal(pageMaker);
		pageMaker.setTotPage(total);
		List<ReviewVO> list = service.getListWithPaging(pageMaker);
		System.out.println(" total : " + total);

		model.addAttribute("pagination", pageMaker.pagination("list"));
		log.info("pageMaker >>>>>>>>>>>>>>>>>" + pageMaker.pagination("list"));
		model.addAttribute("count", total);
		model.addAttribute("pageMaker", pageMaker);
		model.addAttribute("list", list);

		System.out.println("@@@@@@@@@@@@@@@@@@@@@" + pageMaker);

	}

	@GetMapping("/insert")
	public String register(Principal principal, @RequestParam("id") Integer id, Model model) {

		Integer memberId = memberMapper.idid(principal.getName());
		System.out.println(memberId);

		List<OrderList> orderList = orderService.OrderList(memberId);

		if (orderList.isEmpty()) {
			System.out.println("없어");

			return "redirect:/product/productDetail?productId=" + id;

		} else {

			model.addAttribute("id", id);
			return "/review/insert";
		}

	}

	// 리뷰 작성
	@PostMapping("/insert")
	public String insert(Principal principal, @RequestParam("product_id") Integer porductid,
			@RequestParam("boardTitle") String title, @RequestParam("boardContent") String content, Model model)
			throws Exception {

		Integer memberId = memberMapper.idid(principal.getName());

		reviewmapper.insertReview2(porductid, title, content, memberId);

		return "redirect:/product/productDetail?productId=" + porductid;
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
