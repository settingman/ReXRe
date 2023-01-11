package com.hyundai.controller;

import java.security.Principal;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hyundai.domain.AllergyVO;
import com.hyundai.domain.OrderList;
import com.hyundai.mapper.MemberMapper;
import com.hyundai.service.OrderService;
import com.hyundai.service.SecurityService;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping("/security")
public class SecurityController {
	@Autowired
	private SecurityService service;
	@Autowired
	private MemberMapper mapper;
	@Autowired
	private OrderService orderService;

	@GetMapping("/login")
	public void loginInput(String error, String logout, Model model) {
		log.info("error : " + error);
		log.info("logout : " + logout);
		System.out.println(error + "       " + logout);
		if (error != null) {
			model.addAttribute("error", "true");
		}
		if (logout != null) {
			model.addAttribute("logout", "true");
		}
	}

	@PostMapping("/login")
	public String loginPost() {
		return "/home";
	}

	@PostMapping("/logout")
	public String logoutPost() {
		log.info("logout");
		return "/home";
	}

	@GetMapping("/join")
	public void join() {

	}

	@GetMapping("/find")
	public void findget() {

	}

	@PostMapping("/findID.do")
	@ResponseBody
	public String findpost(@RequestParam("id") String id, @RequestParam("email") String email) {
		String cnt = service.findID(id, email);
		if (cnt == "") {
			cnt = "error";
		}
		System.out.println(cnt);
		return cnt;
	}

	@PostMapping("/join")
	public String joinPOST(@RequestParam("member_idid") String member_idid, @RequestParam("member_pw") String member_pw,
			@RequestParam("member_name") String member_name, @RequestParam("birth1") String birth1,
			@RequestParam("birth2") String birth2, @RequestParam("birth3") String birth3,
			@RequestParam("sex") String member_sex, @RequestParam("member_phone") String member_phone,
			@RequestParam("email1") String member_email, @RequestParam("email2") String member_email2,
			@RequestParam("email3") String member_email3, @RequestParam("zip") String member_postNum,
			@RequestParam("addr1") String member_address1, @RequestParam("addr2") String member_address2,
			@RequestParam("allergies") List<String> allergies) {
		service.joinUser(member_idid, member_pw, member_name, birth1, birth2, birth3, member_sex, member_phone,
				member_email, member_email2, member_email3, member_postNum, member_address1, member_address2,
				allergies);

		return "security/welcome";
	}

	@PostMapping("/IDCheck.do")
	@ResponseBody
	public int IDCheck(@RequestParam("id") String member_idid) {
		int cnt = service.IDCheck(member_idid);
		return cnt;
	}

	@GetMapping("/alsear.do")
	@ResponseBody
	public List<AllergyVO> allergySearch(@RequestParam("allergy") String allergy) {
		List<AllergyVO> list = service.allergySearch(allergy);
		return list;
	}

	@GetMapping("/addal.do")
	@ResponseBody
	public void addal(@RequestParam("allergy") String allergy) {
		System.out.println("addal conroller");
		service.addal(allergy);
	}

	@GetMapping("/pwChange")
	public void pwchange(@RequestParam("id") String id, Model model) {

		model.addAttribute("id", id);
	}

	@PostMapping("/changePW")
	public String changPW(@RequestParam("id") String id, @RequestParam("pwd1") String pw) {
		service.pwChange(id, pw);
		return "security/pwChanged";
	}

	@GetMapping("/welcome")
	public void welcome() {

	}

	@GetMapping("/mypage")
	public void OrederList1(Model model, Principal principal) {
		// 세션에서 맴버 받아오기.
		Integer member_id = mapper.idid(principal.getName());

		List<OrderList> orderList = orderService.OrderList(member_id);

		model.addAttribute("orderList", orderList);
	}

//	@PostMapping("/pwModify")
//	public String pwmodify(@RequestParam(value = "pwd") String pw, Principal principal, Model model) {
//
//		if (service.PWCheck(principal.getName(), pw)) {
//
//			System.out.println("pass");
//
//			return "security/join";
//		} else {
//			System.out.println("nonpass");
//			model.addAttribute("error", 1);
//			return "security/pwmodi";
//
//		}
//	}
	@PostMapping("/pwModify")
	public boolean pwmodify(@RequestParam(value = "pwd") String pw, Principal principal) {
		System.out.println(principal.getName()+"    "+pw);
		return service.PWCheck(principal.getName(), pw);

	}

	@GetMapping("/pwmodi")
	public void pwmodi() {

	}

	@PostMapping("/update")
	public String pwdkfs(@RequestParam("member_idid") String member_idid, @RequestParam("member_pw") String member_pw,
			@RequestParam("member_name") String member_name, @RequestParam("birth1") String birth1,
			@RequestParam("birth2") String birth2, @RequestParam("birth3") String birth3,
			@RequestParam("sex") String member_sex, @RequestParam("member_phone") String member_phone,
			@RequestParam("email1") String member_email, @RequestParam("email2") String member_email2,
			@RequestParam("email3") String member_email3, @RequestParam("zip") String member_postNum,
			@RequestParam("addr1") String member_address1, @RequestParam("addr2") String member_address2,
			@RequestParam("allergies") List<String> allergies) {
		System.out.println("update");
		service.updateUser(member_idid, member_pw, member_name, birth1, birth2, birth3, member_sex, member_phone,
				member_email, member_email2, member_email3, member_postNum, member_address1, member_address2,
				allergies);

		return "home";
	}

	@GetMapping("/memberout")
	public void outout() {

	}

	@PostMapping("/out")
	public String out(@RequestParam(value = "pwd") String pw, Principal principal, Model model) {

		if (service.PWCheck(principal.getName(), pw)) {
			service.out(principal.getName());
			
			System.out.println("머야");
			return "shop/cart2";
		} else {
			System.out.println("nonpass");
			model.addAttribute("error", 1);
			return "security/memberout";

		}
	}
}