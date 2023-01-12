package com.hyundai.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.hyundai.domain.AllergyMapperVO;
import com.hyundai.domain.AllergyVO;
import com.hyundai.domain.MemberVO;
import com.hyundai.mapper.MemberMapper;

import lombok.Setter;

@Service
public class SecurityServiceImpl implements SecurityService {

	@Autowired
	private MemberMapper mapper;

	@Setter(onMethod_ = @Autowired)
	private PasswordEncoder pwencoder;
//아이디 중복 검사 (반환값 해당 아이디 갯수)
	@Override
	public int IDCheck(String member_idid) {
		int cnt = mapper.IDCheck(member_idid);
		return cnt;	
	}
//알러지 성분 검색(반환값 알러지 성분 리스트)
	@Override
	public List<AllergyVO> allergySearch(String allergy) {
		List<AllergyVO> list = mapper.allergySearch(allergy);
		return list;
	}
//임의의 알러지 성분 추가
	@Override
	public void addal(String allergy) {
		System.out.println("service addal" + allergy);
		mapper.addal(allergy);
	}
//회원가입 기능
	@Override
	public void joinUser(String member_idid, String member_pw, String member_name, String birth1, String birth2,
			String birth3, String sex, String member_phone, String member_email1, String member_email2,
			String member_email3, String member_postNum, String member_address1, String member_address2,
			List<String> allergies) {
		MemberVO vo = new MemberVO();
		String pw = pwencoder.encode(member_pw);
		String member_birthday = birth1 + "-" + birth2 + "-" + birth3;
		int member_sex = 2;
		String member_email;
		if (sex == "남") {
			member_sex = 1;
		}
		if (member_email2 == "") {
			member_email = member_email1 + "@" + member_email3;
		} else {
			member_email = member_email1 + "@" + member_email2;
		}

		vo.setUseridid(member_idid);
		vo.setUserpw(pw);
		vo.setUserName(member_name);
		vo.setMember_birthday(member_birthday);
		vo.setMember_sex(member_sex);
		vo.setMember_phone(member_phone);
		vo.setMember_email(member_email);
		vo.setMember_postNum(member_postNum);
		vo.setMember_address1(member_address1);
		vo.setMember_address2(member_address2);
		System.out.println("service");
		System.out.println(allergies.toString());
		mapper.joinUser(vo);
		for (String tmp : allergies) {
			AllergyMapperVO avo = new AllergyMapperVO();
			avo.setAllergy_name(tmp);
			avo.setMember_idid(member_idid);
			System.out.println( avo);
			mapper.addMemAl(avo);
		}
	}
//아이디 찾기 기능(반환값 해당 아이디 갯수)
	@Override
	public String findID(String id, String email) {
		AllergyMapperVO vo = new AllergyMapperVO();
		vo.setAllergy_name(id);
		vo.setMember_idid(email);
		String cnt = mapper.findID(vo);
		System.out.println(cnt);
		return cnt;
	}
//비밀번호 변경
	@Override
	public void pwChange(String id, String pw) {
		AllergyMapperVO vo = new AllergyMapperVO();
		vo.setAllergy_name(pwencoder.encode(pw));
		vo.setMember_idid(id);
		mapper.pwChange(vo);
	}
//비밀번호가 맞는지 체크 기능
	@Override
	public boolean PWCheck(String name, String pw) {
		boolean check = pwencoder.matches(pw, mapper.PWCheck(name));
		return check;
	}
//회원정보 수정
	@Override
	public void updateUser(String member_idid, String member_pw, String member_name, String birth1, String birth2,
			String birth3, String sex, String member_phone, String member_email1, String member_email2,
			String member_email3, String member_postNum, String member_address1, String member_address2,
			List<String> allergies) {
		MemberVO vo = new MemberVO();
		String pw = pwencoder.encode(member_pw);
		String member_birthday = birth1 + "-" + birth2 + "-" + birth3;
		int member_sex = 2;
		String member_email;
		if (sex == "남") {
			member_sex = 1;
		}
		if (member_email2 == "") {
			member_email = member_email1 + "@" + member_email3;
		} else {
			member_email = member_email1 + "@" + member_email2;
		}

		vo.setUseridid(member_idid);
		vo.setUserpw(pw);
		vo.setUserName(member_name);
		vo.setMember_birthday(member_birthday);
		vo.setMember_sex(member_sex);
		vo.setMember_phone(member_phone);
		vo.setMember_email(member_email);
		vo.setMember_postNum(member_postNum);
		vo.setMember_address1(member_address1);
		vo.setMember_address2(member_address2);
		System.out.println("service");
		System.out.println(allergies.toString());
		mapper.updateUser(vo);
		for (String tmp : allergies) {
			AllergyMapperVO avo = new AllergyMapperVO();
			avo.setAllergy_name(tmp);
			avo.setMember_idid(member_idid);
			mapper.addMemAl(avo);
		}
	}
//회원탈퇴
	@Override
	public void out(String name) {
		mapper.out(name);
	}

}