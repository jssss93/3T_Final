package com.kh.iclass.cart;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.kh.iclass.common.dao.AbstractDAO;
import com.kh.iclass.common.map.CommandMap;

@Repository("cartDAO")
public class CartDAO extends AbstractDAO {

	// 장바구니 등록
	public void cartInsert(Map<String, Object> map) throws Exception {
		insert("cart.insertCart", map);
	}
	public void cartInsert2(CommandMap map) {
		insert("cart.insertCart", map);
	}
	public void cartInsertAuto(Object attribute) {
		insert("cart.insertCartAuto", attribute);
	}
	
	//위시에서 카트추가
		public void insertWishCart(Map<String, Object> map) throws Exception {
			insert("cart.insertWishCart", map);
		}
	
	// 장바구니 등록
	public void insertCartDetail(Map<String, Object> map) throws Exception {
		insert("cart.insertCartDetail", map);
	}

	// 장바구니에 이미 들어있나 확인
	@SuppressWarnings("unchecked")
	public Map<String, Object> confirmCart(Map<String, Object> map) throws Exception {
		return (Map<String, Object>) selectOne("cart.confirmCart", map);
	}

	// 회원 개인의 장바구니 목록 불러오기(OFF된 상품은 제외)
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> cartList(Map<String, Object> map) throws Exception {
		return selectList("cart.selectCartList", map);
	}
	
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> checkedCartList(Map<String, Object> map) throws Exception {
		return selectList("cart.selectCheckedCartList", map);
	}
	
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> allCartList(Map<String, Object> map) throws Exception {
		return selectList("cart.selectAllCartList", map);
	}
	
	public void deleteOne(Map<String, Object> map) throws Exception {
		delete("cart.deleteOne", map);
	}
	public void deleteSelect(Map<String, Object> map) throws Exception {
		delete("cart.deleteSelect", map);
	}
	
	public void deleteAll(Map<String, Object> map) throws Exception {
		delete("cart.deleteAll", map);
	}

	
	// 세션에서 장바구니 목록 정보 불러오기
	@SuppressWarnings("unchecked")
	public Map<String, Object> sessionCartList(Map<String, Object> map) throws Exception {
		return (Map<String, Object>) selectOne("cart.sessionCartList", map);
	}

	// 장바구니 삭제z
	public void deleteMyCart(Map<String, Object> map) throws Exception {
		delete("cart.deleteMyCart", map);
	}

	// 장바구니 옵션에서 해당 상품에 대한 정보 불러오기
	@SuppressWarnings("unchecked")
	public Map<String, Object> selectOption(Map<String, Object> map) throws Exception {
		return (Map<String, Object>) selectOne("cart.selectOption", map);
	}

	@SuppressWarnings("unchecked")
	public Map<String, Object> sessionOption(Map<String, Object> map) throws Exception {
		return (Map<String, Object>) selectOne("cart.sessionOption", map);
	}

	// 장바구니 수정(옵션변경)
	public void updateCarts(Map<String, Object> map) throws Exception {
		update("cart.updateCarts", map);
	}

	// 3일 이후 장바구니 자동삭제
	public void deleteCarts(Map<String, Object> map) throws Exception {
		delete("cart.deleteCarts", map);
	}
	
	@SuppressWarnings("unchecked")
	public Map<String, Object> buyInCart(Map<String, Object> map) throws Exception {
		return (Map<String, Object>) selectOne("cart.buyInCart", map);
	}


	public Map<String, Object> cartNo(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return (Map<String, Object>) selectOne("cart.selectCartNo", map);
	}

	public void countUp(Map<String, Object> map) {
		update("cart.updateCountUp", map);
	}
	
	public void countDown(Map<String, Object> map) {
		update("cart.updateCountDown", map);
	}

	public void countChange(Map<String, Object> map) {
		update("cart.updateCountChange", map);
	}
	public void deleteCartAuto(Map<String, Object> map) {
		delete("cart.deleteCartAuto", map);
	}

	
	

	
	


}
