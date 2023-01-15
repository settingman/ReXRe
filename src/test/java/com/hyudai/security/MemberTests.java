package com.hyudai.security;

import java.util.List;

import javax.sql.DataSource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.hyundai.domain.AllergyMapperVO;
import com.hyundai.domain.AllergyVO;
import com.hyundai.domain.MemberVO;
import com.hyundai.mapper.MemberMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({ "file:src/main/webapp/WEB-INF/spring/root-context.xml", "file:src/main/webapp/WEB-INF/spring/security-context.xml" })
@Log4j
public class MemberTests {
	@Setter(onMethod_ = @Autowired)
	private PasswordEncoder pwencoder;

	@Setter(onMethod_ = @Autowired)
	private DataSource ds;
	
	@Setter(onMethod_ = @Autowired)
	private MemberMapper mapper;

//	@Test
//	public void testInsertMember() {
//		String sql = "insert into members(member_id,member_idid,member_pw,member_name,member_sex,member_phone,member_email,member_address1,member_address2,member_postnum) "
//				+ "values (memberid_seq.nextval,?,?,?,1,'010-0000-0000','member@member.mem','seoul','dobonggu',12345)";
//
//		for (int i = 0; i < 101; i++) {
//			Connection con = null;
//			PreparedStatement pstmt = null;
//
//			try {
//				con = ds.getConnection();
//				pstmt = con.prepareStatement(sql);
//
//				pstmt.setString(2, pwencoder.encode("pw" + i));
//
//				if (i < 80) {
//					pstmt.setString(1, "member" + i);
//					pstmt.setString(3, "일반사용자" + i);
//
//				} else {
//					pstmt.setString(1, "manager" + i);
//					pstmt.setString(3, "운영자" + i);
//				}
//				pstmt.executeUpdate();
//			} catch (Exception e) {
//				e.printStackTrace();
//			} finally {
//				if (pstmt != null) {
//					try {
//						pstmt.close();
//
//					} catch (Exception e) {
//
//					}
//				}
//				if (con != null) {
//					try {
//						con.close();
//					} catch (Exception e) {
//
//					}
//				}
//			}
//		}
//	}
//
//	@Test
//	public void testInsertMemberAuth() {
//		String sql = "insert into membergrade values (?,?)";
//
//		for (int i = 0; i < 101; i++) {
//			Connection con = null;
//			PreparedStatement pstmt = null;
//
//			try {
//				con = ds.getConnection();
//				pstmt = con.prepareStatement(sql);
//
//
//				if (i < 80) {
//					pstmt.setInt(1, i+253);
//					pstmt.setInt(2, 1);
//
//				} else {
//					pstmt.setInt(1, i+253);
//					pstmt.setInt(2, 2);
//				}
//
//				pstmt.executeUpdate();
//			} catch (Exception e) {
//				e.printStackTrace();
//			} finally {
//				if (pstmt != null) {
//					try {
//						pstmt.close();
//
//					} catch (Exception e) {
//
//					}
//				}
//				if (con != null) {
//					try {
//						con.close();
//					} catch (Exception e) {
//
//					}
//				}
//			}
//		}
//	}
	@Test
	public void testRead() {
		System.out.println(mapper.read("joilwoo"));
	}
	@Test
	public void testIDCheck() {
		System.out.println(mapper.IDCheck("joilwoo"));
	}
	@Test
	public void allergySearchTest(){
		List<AllergyVO> list = mapper.allergySearch("소듐");
		for(AllergyVO vo : list) {
			System.out.println(vo);
		}
	}
	@Test
	public void addallergytest() {
		mapper.addal("낙옆 추출물");
	}
	@Test
	public void joinUserTest() {
		MemberVO vo = new MemberVO();
		vo.setEnabled(1);
		vo.setMember_address1("서울시");
		vo.setMember_address2("동작구");
		vo.setMember_birthday("1995-06-28");
		vo.setMember_email("hi@hi.hi");
		vo.setMember_phone("01020392939");
		vo.setMember_postNum("11111");
		vo.setMember_sex(1);
		vo.setUseridid("hihi1231");
		vo.setUserName("공");
		PasswordEncoder pw = new PasswordEncoder() {
			public String encode(CharSequence rawPassword) {
				return rawPassword.toString();
			}

			@Override
			public boolean matches(CharSequence rawPassword, String encodedPassword) {
				
				return rawPassword.toString().equals(encodedPassword);
			}
		};
		vo.setUserpw(pw.encode("123123123"));
		mapper.joinUser(vo);
	}
	@Test
	public void joinUserAuthTest() {
		mapper.joinUserAuth("hihi1231");
	}
	@Test
	public void addMemAlTest() {
		AllergyMapperVO vo = new AllergyMapperVO();
		vo.setMember_idid("hihi1231");
		vo.setAllergy_name("Test");
		mapper.addMemAl(vo);
	}
	@Test
	public void findIDTest() {
		System.out.println(mapper.findID("공", "hi@hi.hi"));
	}
	@Test
	public void PWCheckTest() {
		System.out.println(mapper.PWCheck("hihi1231"));
	}
	@Test
	public void updateUserTest() {
		MemberVO vo = new MemberVO();
		vo.setEnabled(1);
		vo.setMember_address1("청주시");
		vo.setMember_address2("동작구");
		vo.setMember_birthday("1995-06-28");
		vo.setMember_email("hi@hi.hi");
		vo.setMember_phone("01020392939");
		vo.setMember_postNum("11111");
		vo.setMember_sex(1);
		vo.setUseridid("hihi1231");
		vo.setUserName("공");
		PasswordEncoder pw = new PasswordEncoder() {
			public String encode(CharSequence rawPassword) {
				return rawPassword.toString();
			}

			@Override
			public boolean matches(CharSequence rawPassword, String encodedPassword) {
				
				return rawPassword.toString().equals(encodedPassword);
			}
		};
		vo.setUserpw(pw.encode("123123123"));
		 mapper.updateUser(vo);
	}

	@Test
	public void testPWChange() {
		mapper.pwChange("joilwoo", pwencoder.encode("12312312"));
	}
	
	@Test
	public void findMemAltest() {
		System.out.println(mapper.findMemAl("member1"));
		
	}
	@Test
	public void ididTest() {
		System.out.println(mapper.idid("hihi1231"));
	}
	@Test
	public void findPWTest() {
		System.out.println(mapper.findPW("hihi1231", "공", "hi@hi.hi"));
	}
	@Test
	public void deleteMemAltest() {
		AllergyMapperVO vo = new AllergyMapperVO();
		vo.setAllergy_name("소듐");
		vo.setMember_idid("hihi1231");
		mapper.deleteMemAl(vo);
		
	}
	@Test
	public void outTest() {
		mapper.out("hihi1231");
	}
}
