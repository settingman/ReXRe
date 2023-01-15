/*********************************
 * @function : Security 관련 tests
 * @author : Ilwoo Jo
 * @Date : Dec 31. 2022.
 *********************************/
package com.hyudai.security;

import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.sql.DataSource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.hyundai.domain.AllergyMapperVO;
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

	@Test
	public void testInsertMember() {
		String sql = "insert into members(member_id,member_idid,member_pw,member_name,member_sex,member_phone,member_email,member_address1,member_address2,member_postnum) "
				+ "values (memberid_seq.nextval,?,?,?,1,'010-0000-0000','member@member.mem','seoul','dobonggu',12345)";

		for (int i = 0; i < 101; i++) {
			Connection con = null;
			PreparedStatement pstmt = null;

			try {
				con = ds.getConnection();
				pstmt = con.prepareStatement(sql);

				pstmt.setString(2, pwencoder.encode("pw" + i));

				if (i < 80) {
					pstmt.setString(1, "member" + i);
					pstmt.setString(3, "일반사용자" + i);

				} else {
					pstmt.setString(1, "manager" + i);
					pstmt.setString(3, "운영자" + i);
				}
				pstmt.executeUpdate();
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				if (pstmt != null) {
					try {
						pstmt.close();

					} catch (Exception e) {

					}
				}
				if (con != null) {
					try {
						con.close();
					} catch (Exception e) {

					}
				}
			}
		}
	}

	@Test
	public void testInsertMemberAuth() {
		String sql = "insert into membergrade values (?,?)";

		for (int i = 0; i < 101; i++) {
			Connection con = null;
			PreparedStatement pstmt = null;

			try {
				con = ds.getConnection();
				pstmt = con.prepareStatement(sql);


				if (i < 80) {
					pstmt.setInt(1, i+253);
					pstmt.setInt(2, 1);

				} else {
					pstmt.setInt(1, i+253);
					pstmt.setInt(2, 2);
				}

				pstmt.executeUpdate();
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				if (pstmt != null) {
					try {
						pstmt.close();

					} catch (Exception e) {

					}
				}
				if (con != null) {
					try {
						con.close();
					} catch (Exception e) {

					}
				}
			}
		}
	}
	@Test
	public void testPWChange() {
		mapper.pwChange("joilwoo", pwencoder.encode("12312312"));
	}
	
	@Test
	public void read() {
		System.out.println(mapper.read("123123123"));
	}
	
	@Test
	public void joinUserAuth123() {
		
		mapper.joinUserAuth("joilwoo");
	}
	@Test
	public void findMemAltest() {
		System.out.println(mapper.findMemAl("member1"));
		
	}
	@Test
	public void deleteMemAltest() {
		AllergyMapperVO vo = new AllergyMapperVO();
		vo.setAllergy_name("나트륨");
		vo.setMember_idid("member1");
		mapper.deleteMemAl(vo);
		
	}
}
