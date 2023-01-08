package com.hyundai.service;

import java.util.List;

import com.hyundai.domain.AllergyVO;

public interface SecurityService {
	public String findID(String id,String email);

	public int IDCheck(String id);

	 public List<AllergyVO> allergySearch(String allergy);

	public void addal(String allergy);

	public void joinUser(String member_idid, String member_pw, String member_name, String birth1, String birth2, String birth3, String member_sex,
			String member_phone, String member_email,  String member_email2, String member_email3,
			String member_postNum, String member_address1, String member_address2, List<String> allergies);

}
