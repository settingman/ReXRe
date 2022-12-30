package com.hyundai.mapper;

import java.util.List;

//import javax.sql.DataSource;

import org.springframework.stereotype.Repository;

import com.hyundai.domain.CartItem;

import lombok.RequiredArgsConstructor;



// 박성환
// 장바구니 데이터베이스 연결

@Repository
@RequiredArgsConstructor
public class CartRepository {
	
	

	//private final DataSource dataSource;  // 에러남.
	
	public List<CartItem> findCart(Long member_id){
		
		// select product_id, product_name, product_price, cart_check, cart_quantity, product_img
		// from cart inner join products on cart_product_id = products_id join img on products_id = img_product_id 
		
		// 카트에서 먼저 찾는 법은?
		 	
		
		// 맴버아이디를 이용하여 Cart table, Product table join 시켜서 CartItem에 대한 정보를 빼온다.
		
		String sql = null;		
		return null;
		
	}
	
	
	public void insertCart(Long member_id, Long product_id) {
		
		
		// 장바구니가 들어있다면? 
		
		// insert into cart values (1,product_id,member_id,1)		
		
	}
	
	
	// 아이템 하나 삭제
	public void deleteOne(Long member_id, Long product_id) {
		
		// 멤버 아이디와 프로덕트 아이디를 이용하여 카트 아이디에 접근 한 뒤 삭제
		// delete from Cart where members_member_id = member_id and products_product_id = product_id		
		return;                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             
		
	}
	
	
	// 아이템 선택 삭제
	public void deletCheck(Long member_id) {
		
		// 장바구니에서 체크된 상품 상품 제거
		// delete from Cart where CART_Check=1 and members_member_id = member_id;
		
		// delete 하고 다시 전체 아이디 불러오기? 아니면 delete하고 findcart 찾기?
		
	}
	
	public void deleteAll(Long member_id) {
		
		// 이 맴버가 가지고있는 장바구니 모두 삭제.
		// delete from Cart where members_member_id = member_id;
	}
	
	
	public int updateQuantity(Long member_id, Long product_id, int Stock) {
		
		// update cart set CART_QUANTITY = CART_QUANTITY + stock where members_member_id = member_id and products_product_id = product_id
		// select CART_QUANTITY from cart where members_member_id = member_id and products_product_id = product_id
		// 프로시저 생성
		
		int cart_stock = 0; // return CART_QUANTITY
		
		return cart_stock;
		
	}
	
	public void updateChecked(Long member_id, Long product_id, int check) {
		
		 // update cart set CART_CHECK = check where members_member_id = member_id and products_product_id = product_id
		
		
	}
	
	
	
	
	
	
	

}
