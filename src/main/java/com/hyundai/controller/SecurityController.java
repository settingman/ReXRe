package com.hyundai.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
public class SecurityController {
	@GetMapping("/login")
	public void loginInput(String error, String logout, Model model) {
		log.info("error : " + error);
		log.info("logout : " + logout);
		System.out.println(error + "       " +logout);
		if(error != null) {
			model.addAttribute("error", "true");
		}
		if(logout != null) {
			model.addAttribute("logout" , "true");
		}
	}
}
