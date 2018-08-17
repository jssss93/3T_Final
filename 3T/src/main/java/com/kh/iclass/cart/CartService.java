package com.kh.iclass.cart;

import java.util.List;
import java.util.Map;

public interface CartService {

	// 장바구니 담기
	public void insertCart(Map<String, Object> map) throws Exception;

	// 장바구니 디테일추가 담기
	public void insertCartDetail(Map<String, Object> map) throws Exception;

	// 회원 장바구니 목록
	public List<Map<String, Object>> cartList(Map<String, Object> map) throws Exception;
	
	public List<Map<String, Object>> checkedCartList(Map<String, Object> map) throws Exception;
	//비회원 장바구니 로그인시 넣기
	public void cartInsert2(Map<String, Object> map) throws Exception;

	// 세션에서 장바구니 목록 불러오기
	public Map<String, Object> sessionCartList(Map<String, Object> map) throws Exception;

	// 장바구니 삭제
	public void deleteMyCart(Map<String, Object> map) throws Exception;

	// 장바구니 옵션에서 상품에 대한 정보 불러오기(회원)
	public Map<String, Object> selectOption(Map<String, Object> map) throws Exception;

	// 장바구니 옵션에서 상품에 대한 정보 불러오기(노회원)
	public Map<String, Object> sessionOption(Map<String, Object> map) throws Exception;

	// 장바구니 수정(옵션변경)
	public void updateCarts(Map<String, Object> map) throws Exception;

	//3일이상된 장바구니 목록 삭제
	public void deleteCarts(Map<String, Object> map) throws Exception;

	Map<String, Object> buyInCart(Map<String, Object> map) throws Exception;
	
	Map<String, Object> cartNo(Map<String, Object> map) throws Exception;
}
