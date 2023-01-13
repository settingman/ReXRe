package com.hyundai.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.hyundai.domain.CartItem;

/**
 * @FileName: CartMapper.java
 * @Project : ReXRe
 * @작성자 : 박성환
 * @설명 : 장바구니 데이터 관리 Mapper
 */

public interface CartMapper {

	// 상품이름 조회
	public String find(Integer product_id);

	// 장바구니 리스트 조회
	public List<CartItem> findCart(Integer member_id);

	// 장바구니 리스트 아이템 조회
	public CartItem findCartItem(@Param("member_id") Integer member_id, @Param("product_id") Integer product_id);

	// 장바구니 입력
	public Integer insertCart(@Param("member_id") Integer member_id, @Param("product_id") Integer product_id,
			@Param("qty") Integer qty);

	// 장바구니 아이템 개별 삭제
	public void deleteOne(@Param("member_id") Integer member_id, @Param("product_id") Integer product_id);

	// 장바구니 아이템 전체삭제
	public void deleteAll(Integer member_id);

	// 장바구니 수량 변경
	public void updateQuantity(@Param("product_qauntity") Integer product_qauntity,
			@Param("product_id") Integer product_id, @Param("member_id") Integer member_id);

	// 장바구니 체크 변경
	public void updateChecked(Integer member_id, Integer product_id, int check);

}
