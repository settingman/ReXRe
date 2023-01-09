package com.hyundai.domain;

import java.util.Date;
import java.util.List;

import lombok.Data;

@Data
public class MemberVO {
	private String useridid;
	private String userpw;
	private String userName;
	private int enabled;
	private String member_birthday;
	private int member_sex;
	private String member_phone;
	private	String member_email;
	private String member_postNum;
	private String member_address1;
	private String member_address2;
	private int userid;
	
	private Date regDate;
	private Date updateDate;
	private List<AuthVO> authList;
}
