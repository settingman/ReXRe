package com.hyundai.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.hyundai.domain.AllergyMapperVO;
import com.hyundai.domain.AllergyVO;
import com.hyundai.domain.MemberVO;

public interface MemberMapper {
//로그인 기능
	public MemberVO read(String userid);
//아이디 중복 검사
	public int IDCheck(String member_idid);
//알러지 성분 검색
	public List<AllergyVO> allergySearch(String allergy);
//임의의 알러지 성분 추가
	public void addal(String allergy);
//회원가입 기능
	public void joinUser(MemberVO vo);
//회원 알러지 성분 추가
	public void addMemAl(AllergyMapperVO avo);
//아이디 찾기 기능
	public String findID(AllergyMapperVO vo);
//비밀번호 변경
	public void pwChange(AllergyMapperVO vo);
//회원 아이디로 회원 번호 찾기
	public Integer idid(String member_idid);
//회원 비밀번호 확인
	public String PWCheck(@Param("name") String name);
//회원 정보 수정
	public void updateUser(MemberVO vo);
//회원 탈퇴
	public void out(@Param("name") String name);
}