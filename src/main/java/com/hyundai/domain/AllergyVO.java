/*********************************
 * @function : 알러지 성분 도메인
 * @author : Ilwoo Jo
 * @Date : Dec 31. 2022.
 * @description : 알러지 성분
 *********************************/
package com.hyundai.domain;

import lombok.Data;

@Data
public class AllergyVO {
	private int allergy_id;
	private String allergy_name;
}
