package com.hyundai.controller.board;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.hyundai.domain.PageMaker;
import com.hyundai.domain.board.BoardVO;
import com.hyundai.service.board.BoardService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

/*********************************
 * @function : BoardController
 * @author : Taeseung Choi
 * @Date : Dec 25. 2022.
 *********************************/
@Controller
@Log4j
@RequestMapping("/board/*")
@AllArgsConstructor
public class BoardController {
	// BoardService ê°ì²´ë¶ˆëŸ¬?˜¤ê¸?
	@Autowired
	private BoardService service;

	/**
	 * ê²Œì‹œ?Œ?—?„œ ê²Œì‹œê¸??˜ ë¦¬ìŠ¤?Š¸ë¥? ë¶ˆëŸ¬?˜¤ê¸? ?œ„?•œ ?•¨?ˆ˜ PageMaker ë¥? ?‚¬?š©?•´ ?˜?´ì§? ì²˜ë¦¬
	 */
	@GetMapping("/list")
	public void list(PageMaker pageMaker, Model model) throws Exception {

		int total = service.getTotal(pageMaker); // ê²Œì‹œê¸??˜ ê°œìˆ˜ ?‘œ?‹œ
		pageMaker.setTotPage(total);
		List<BoardVO> list = service.getListWithPaging(pageMaker);
		System.out.println(" total : " +total);
		
		model.addAttribute("pagination", pageMaker.pagination("list")); // ?˜?´ì§??„¤?´?…˜ ?„¤? •
		log.info("pageMaker >>>>>>>>>>>>>>>>>" + pageMaker.pagination("list"));
		model.addAttribute("count", total); // ê²Œì‹œê¸??˜ ì´? ê°œìˆ˜
		model.addAttribute("pageMaker", pageMaker); // ?˜?´ì§? ì²˜ë¦¬?•œ ê°’ì„ pageMaker?— ? „?‹¬
		model.addAttribute("list", list);
	}

	// ê²Œì‹œ?Œ insert ?˜?´ì§?
	@GetMapping("/insert")
	public void register() {
		log.info("ê²Œì‹œ?Œ ?“±ë¡? ?˜?´ì§? ");
	}

	// ê²Œì‹œê¸? ?“±ë¡? ?˜?´ì§??—?„œ ?“±ë¡? ë²„íŠ¼?„ ?ˆ„ë¥´ë©´ insert ?›„?— ë¦¬ìŠ¤?Š¸ ?˜?´ì§? ì²? ?™”ë©´ìœ¼ë¡? ?´?™ -> insert.jsp
	@PostMapping("/insert")
	public String insert(BoardVO board, RedirectAttributes rttr) throws Exception {
		System.out.println(" insert  : " + board.toString());

		// insert ?‹œ?‘
		service.insert(board);
		rttr.addFlashAttribute("inserted", board.getBoardId());
		return "redirect:list";
	}

	// ê²Œì‹œê¸? ì¡°íšŒ ë°? ?ˆ˜? • -> read.jsp ì¡°íšŒ?•˜ê³? ?‹¶?? ê²Œì‹œê¸??„ ?´ë¦??•˜ë©? boardIdê³? ?˜?´ì§? ? •ë³? ??™ ë°”ì¸?”©
	@GetMapping({ "/read", "/update" })
	public void read(@RequestParam("boardId") long boardId, Model model) throws Exception {
		model.addAttribute("board", service.read(boardId));
	}

	@PostMapping("/update") // ê²Œì‹œê¸? ?ˆ˜? •(update) ?˜?´ì§?. ?ˆ˜? • ë²„íŠ¼?„ ?ˆ„ë¥´ë©´ ?‹¤?–‰?¨
	public String update(BoardVO board, RedirectAttributes rttr) throws Exception {
		// ?ˆ˜? •?˜?Š” ê°’ì´ ?ˆ?œ¼ë©? success ê²°ê³¼ë¥? attribute ê°’ìœ¼ë¡? ? „?†¡?•¨
		if (service.update(board)) {
			rttr.addFlashAttribute("result", "success");
		}
		return "redirect:read?boardId=" + board.getBoardId();
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
	public ResponseEntity<String> delete(@RequestParam("boardId") long boardId, RedirectAttributes rttr) throws Exception {
		// ë°›ì•„?˜¨ boardIdê°’ìœ¼ë¡? ?•´?‹¹?˜?Š” ê²Œì‹œê¸??„ ?‚­? œ?•œ?‹¤
		try {
			service.delete(boardId);
			return new ResponseEntity<>("success", HttpStatus.OK);
//			return ResponseEntity.status(200).body("success");
		} catch (Exception e) {
			return new ResponseEntity<>("delete error", HttpStatus.FORBIDDEN);
//			return ResponseEntity.status(403).body("?‚­? œ ?˜¤ë¥?");
		}
	} // Rest api?¼ ê²½ìš° responseentityë¡? ë°›ìœ¼ë©? ì¢‹ìŒ

}