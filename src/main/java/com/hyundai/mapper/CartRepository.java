package com.hyundai.mapper;

import java.util.List;

//import javax.sql.DataSource;

import org.springframework.stereotype.Repository;

import com.hyundai.domain.CartItem;

import lombok.RequiredArgsConstructor;



// �ڼ�ȯ
// ��ٱ��� �����ͺ��̽� ����

@Repository
@RequiredArgsConstructor
public class CartRepository {
	
	

	//private final DataSource dataSource;  // ������.
	
	public List<CartItem> findCart(Long member_id){
		
		// select product_id, product_name, product_price, cart_check, cart_quantity, product_img
		// from cart inner join products on cart_product_id = products_id join img on products_id = img_product_id 
		
		// īƮ���� ���� ã�� ����?
		 	
		
		// �ɹ����̵� �̿��Ͽ� Cart table, Product table join ���Ѽ� CartItem�� ���� ������ ���´�.
		
		String sql = null;		
		return null;
		
	}
	
	
	public void insertCart(Long member_id, Long product_id) {
		
		
		// ��ٱ��ϰ� ����ִٸ�? 
		
		// insert into cart values (1,product_id,member_id,1)		
		
	}
	
	
	// ������ �ϳ� ����
	public void deleteOne(Long member_id, Long product_id) {
		
		// ��� ���̵�� ���δ�Ʈ ���̵� �̿��Ͽ� īƮ ���̵� ���� �� �� ����
		// delete from Cart where members_member_id = member_id and products_product_id = product_id		
		return;                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             
		
	}
	
	
	// ������ ���� ����
	public void deletCheck(Long member_id) {
		
		// ��ٱ��Ͽ��� üũ�� ��ǰ ��ǰ ����
		// delete from Cart where CART_Check=1 and members_member_id = member_id;
		
		// delete �ϰ� �ٽ� ��ü ���̵� �ҷ�����? �ƴϸ� delete�ϰ� findcart ã��?
		
	}
	
	public void deleteAll(Long member_id) {
		
		// �� �ɹ��� �������ִ� ��ٱ��� ��� ����.
		// delete from Cart where members_member_id = member_id;
	}
	
	
	public int updateQuantity(Long member_id, Long product_id, int Stock) {
		
		// update cart set CART_QUANTITY = CART_QUANTITY + stock where members_member_id = member_id and products_product_id = product_id
		// select CART_QUANTITY from cart where members_member_id = member_id and products_product_id = product_id
		// ���ν��� ����
		
		int cart_stock = 0; // return CART_QUANTITY
		
		return cart_stock;
		
	}
	
	public void updateChecked(Long member_id, Long product_id, int check) {
		
		 // update cart set CART_CHECK = check where members_member_id = member_id and products_product_id = product_id
		
		
	}
	
	
	
	
	
	
	

}
