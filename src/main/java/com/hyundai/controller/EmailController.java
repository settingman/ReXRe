/*********************************
 * @function : Security 관련 기능
 * @author : Ilwoo Jo
 * @Date : Jan 6. 2023.
 * @description : 메일 전송 기능
 *********************************/

package com.hyundai.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hyundai.service.MailSendService;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
public class EmailController {
	@Autowired
	private MailSendService mailService;
	
	//인증메일 전송 및 전송 숫자 반환 기능
	@GetMapping("/email.do")
	@ResponseBody
	public String mailCheck(String email) {
		return mailService.joinEmail(email);
	}
}
