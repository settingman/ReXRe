package com.hyundai.service;

import java.security.Principal;
import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import com.hyundai.domain.AllergyVO;
@Transactional
public interface SecurityService {
	//아이디 찾기 기능
	public String findID(String id, String email);
	//아이디 중복 검사
	public int IDCheck(String id);
	//알러지 성분 검색
	public List<AllergyVO> allergySearch(String allergy);
	//알러지 성분 추가
	public void addal(String allergy);
	//회원가입
	public void joinUser(String member_idid, String member_pw, String member_name, String birth1, String birth2,
			String birth3, String member_sex, String member_phone, String member_email, String member_email2,
			String member_email3, String member_postNum, String member_address1, String member_address2,
			List<String> allergies);
	//비밀번호 변경
	public void pwChange(String id, String pw);
	//아이이 비밀번호 일치 확인
	public boolean PWCheck(String name, String pw);
	//회원정보 수정
	public void updateUser(String member_idid, String member_pw, String member_name, String birth1, String birth2,
			String birth3, String member_sex, String member_phone, String member_email, String member_email2,
			String member_email3, String member_postNum, String member_address1, String member_address2);
	//회원탈퇴
	public void out(String name);
	//회원 비밀번호 찾기
	public String findPW(String id, String name, String email);
	//회원 알러지 찾기
	public List<String> findMemAl(Principal principal);

}