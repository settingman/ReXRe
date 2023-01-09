package com.hyundai.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import com.hyundai.domain.CustomUser;
import com.hyundai.domain.MemberVO;
import com.hyundai.mapper.MemberMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
public class CustomUserDetailsService implements UserDetailsService {

	@Setter(onMethod_ = { @Autowired })
	private MemberMapper memberMapper;

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		log.warn("load user by username : " + username);

		MemberVO vo = memberMapper.read(username);

		log.warn("queried by member mapper: " + vo);
		return vo == null ? null : new CustomUser(vo);
	}

}
