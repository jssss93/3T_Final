package com.kh.iclass.cart;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.kh.iclass.common.dao.AbstractDAO;

@Repository("cartDAO")
public class CartDAO extends AbstractDAO {

	// 장바구니 등록
	public void cartInsert(Map<String, Object> map) throws Exception {
		insert("cart.insertCart", map);
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
		return selectList("cart.selectMyCart", map);
	}

	// 세션에서 장바구니 목록 정보 불러오기
	@SuppressWarnings("unchecked")
	public Map<String, Object> sessionCartList(Map<String, Object> map) throws Exception {
		return (Map<String, Object>) selectOne("cart.sessionCartList", map);
	}

	// 장바구니 삭제
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

}
