/*********************************
 * @function : 알러지 회원 연결 도메인
 * @author : Ilwoo Jo
 * @Date : Dec 31. 2022.
 * @description : 알러지 회원 연결
 *********************************/
package com.hyundai.domain;

import lombok.Data;

@Data
public class AllergyMapperVO {
	private String allergy_name;
	private String member_idid;
}
