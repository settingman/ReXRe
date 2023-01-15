/*********************************
 * @function : 회원 권한 도메인
 * @author : Ilwoo Jo
 * @Date : Dec 31. 2022.
 * @description : 권한
 *********************************/
package com.hyundai.domain;

import lombok.Data;

@Data
public class AuthVO {
	private String userid;
	private String auth;
}
