/*********************************
 * @function : 비밀번호 암호화 처리
 * @author : Ilwoo Jo
 * @Date : Jan 2. 2023.
 *********************************/
package com.hyundai.security;

import org.springframework.security.crypto.password.PasswordEncoder;

import lombok.extern.log4j.Log4j;

@Log4j
public class NoOpPasswordEncoder implements PasswordEncoder{@Override
	public String encode(CharSequence rawPassword) {
		return rawPassword.toString();
	}

	@Override
	public boolean matches(CharSequence rawPassword, String encodedPassword) {
		
		return rawPassword.toString().equals(encodedPassword);
	}
	
}
