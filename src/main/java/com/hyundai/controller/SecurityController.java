package com.hyundai.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hyundai.domain.AllergyVO;
import com.hyundai.service.MailSendService;
import com.hyundai.service.SecurityService;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping("/security")
public class SecurityController {
	@Autowired
	private SecurityService service;

	
	
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
	public String logoutGET() {
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
	public String findpost(@RequestParam("id") String id,
			@RequestParam("email") String email) {
		String cnt = service.findID(id,email);
		if(cnt == "") {
			cnt = "error";
		}
		System.out.println(cnt);
		return cnt;
	}

	@PostMapping("/join")
	@ResponseBody
	public String joinPOST(@RequestParam("member_idid") String member_idid,
			@RequestParam("member_pw") String member_pw,
			@RequestParam("member_name") String member_name,
			@RequestParam("birth1") String birth1,
			@RequestParam("birth2") String birth2,
			@RequestParam("birth3") String birth3,
			@RequestParam("sex") String member_sex,
			@RequestParam("member_phone") String member_phone,
			@RequestParam("email1") String member_email,
			@RequestParam("email2") String member_email2,
			@RequestParam("email3") String member_email3,
			@RequestParam("zip") String member_postNum,
			@RequestParam("addr1") String member_address1,
			@RequestParam("addr2") String member_address2,
			@RequestParam("allergies") List<String> allergies) {
		System.out.println("controller");
		for(String tmp : allergies) {
			System.out.println(tmp);
		}
		service.joinUser(member_idid,member_pw,member_name,birth1,birth2,birth3,
				member_sex,member_phone,member_email,member_email2,member_email3,
				member_postNum,member_address1,member_address2, allergies);
		
		return "/security/welcome";
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
		service.addal(allergy);
	}
	
	@GetMapping("/pwChange")
	public void pwchange(@RequestParam("id") String id ,Model model) {

		model.addAttribute("id", id);
	}

}
