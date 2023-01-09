package com.hyundai.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.hyundai.domain.AllergyMapperVO;
import com.hyundai.domain.AllergyVO;
import com.hyundai.domain.MemberVO;

public interface MemberMapper {
	public MemberVO read(String userid);

	public int IDCheck(String member_idid);

	public List<AllergyVO> allergySearch(String allergy);

	public void addal(String allergy);

	public void joinUser(MemberVO vo);

	public void addMemAl(AllergyMapperVO avo);

	public String findID(AllergyMapperVO vo);

	public void pwChange(AllergyMapperVO vo);

	public Integer idid(String member_idid);

	public String PWCheck(@Param("name") String name);

	public void updateUser(MemberVO vo);

	public void out(@Param("name") String name);
}