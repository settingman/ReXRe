package com.hyundai.service;

import java.security.Principal;
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
		mapper.joinUserAuth(member_idid);
	}
//아이디 찾기 기능(반환값 해당 아이디 갯수)
	@Override
	public String findID(String name, String email) {
		String cnt = mapper.findID(name, email);
		return cnt;
	}
//비밀번호 변경
	@Override
	public void pwChange(String id, String pw) {
		String pwd1 = pwencoder.encode(pw);
		mapper.pwChange(id, pwd1);
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
			String member_email3, String member_postNum, String member_address1, String member_address2
			) {
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
		mapper.updateUser(vo);
	}
//회원탈퇴
	@Override
	public void out(String name) {
		mapper.out(name);
	}
	@Override
	public String findPW(String id, String name, String email) {
		
		return mapper.findPW(id, name,email);
	}
	@Override
	public List<String> findMemAl(Principal principal) {
		List<String> list = mapper.findMemAl(principal.getName());
		return list;
	}

}