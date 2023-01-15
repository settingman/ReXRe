/*********************************
 * @function : 로그인 성공 처리
 * @author : Ilwoo Jo
 * @Date : Jan 2. 2023.
 *********************************/
package com.hyundai.security;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

import lombok.extern.log4j.Log4j;

@Log4j
public class LoginSuccessHandler implements AuthenticationSuccessHandler{@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response, Authentication auth)
			throws IOException, ServletException {
		log.warn("Login Success");
		List<String> roleNames = new ArrayList<>();
		
		auth.getAuthorities().forEach(authority -> {roleNames.add(authority.getAuthority());});
		
		response.sendRedirect("/");
	}
}
