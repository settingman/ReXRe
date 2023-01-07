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
	// BoardService κ°μ²΄λΆλ¬?€κΈ?
	@Autowired
	private BoardService service;

	/**
	 * κ²μ??? κ²μκΈ?? λ¦¬μ€?Έλ₯? λΆλ¬?€κΈ? ?? ?¨? PageMaker λ₯? ?¬?©?΄ ??΄μ§? μ²λ¦¬
	 */
	@GetMapping("/list")
	public void list(PageMaker pageMaker, Model model) throws Exception {

		int total = service.getTotal(pageMaker); // κ²μκΈ?? κ°μ ??
		pageMaker.setTotPage(total);
		List<BoardVO> list = service.getListWithPaging(pageMaker);
		System.out.println(" total : " +total);
		
		model.addAttribute("pagination", pageMaker.pagination("list")); // ??΄μ§??€?΄? ?€? 
		log.info("pageMaker >>>>>>>>>>>>>>>>>" + pageMaker.pagination("list"));
		model.addAttribute("count", total); // κ²μκΈ?? μ΄? κ°μ
		model.addAttribute("pageMaker", pageMaker); // ??΄μ§? μ²λ¦¬? κ°μ pageMaker? ? ?¬
		model.addAttribute("list", list);
	}

	// κ²μ? insert ??΄μ§?
	@GetMapping("/insert")
	public void register() {
		log.info("κ²μ? ?±λ‘? ??΄μ§? ");
	}

	// κ²μκΈ? ?±λ‘? ??΄μ§??? ?±λ‘? λ²νΌ? ?λ₯΄λ©΄ insert ?? λ¦¬μ€?Έ ??΄μ§? μ²? ?λ©΄μΌλ‘? ?΄? -> insert.jsp
	@PostMapping("/insert")
	public String insert(BoardVO board, RedirectAttributes rttr) throws Exception {
		System.out.println(" insert  : " + board.toString());

		// insert ??
		service.insert(board);
		rttr.addFlashAttribute("inserted", board.getBoardId());
		return "redirect:list";
	}

	// κ²μκΈ? μ‘°ν λ°? ??  -> read.jsp μ‘°ν?κ³? ?Ά?? κ²μκΈ?? ?΄λ¦??λ©? boardIdκ³? ??΄μ§? ? λ³? ?? λ°μΈ?©
	@GetMapping({ "/read", "/update" })
	public void read(@RequestParam("boardId") long boardId, Model model) throws Exception {
		model.addAttribute("board", service.read(boardId));
	}

	@PostMapping("/update") // κ²μκΈ? ?? (update) ??΄μ§?. ??  λ²νΌ? ?λ₯΄λ©΄ ?€??¨
	public String update(BoardVO board, RedirectAttributes rttr) throws Exception {
		// ?? ?? κ°μ΄ ??Όλ©? success κ²°κ³Όλ₯? attribute κ°μΌλ‘? ? ?‘?¨
		if (service.update(board)) {
			rttr.addFlashAttribute("result", "success");
		}
		return "redirect:read?boardId=" + board.getBoardId();
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
	public ResponseEntity<String> delete(@RequestParam("boardId") long boardId, RedirectAttributes rttr) throws Exception {
		// λ°μ?¨ boardIdκ°μΌλ‘? ?΄?Ή?? κ²μκΈ?? ?­? ??€
		try {
			service.delete(boardId);
			return new ResponseEntity<>("success", HttpStatus.OK);
//			return ResponseEntity.status(200).body("success");
		} catch (Exception e) {
			return new ResponseEntity<>("delete error", HttpStatus.FORBIDDEN);
//			return ResponseEntity.status(403).body("?­?  ?€λ₯?");
		}
	} // Rest api?Ό κ²½μ° responseentityλ‘? λ°μΌλ©? μ’μ

}