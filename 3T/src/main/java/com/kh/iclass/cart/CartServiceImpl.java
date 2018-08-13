package com.kh.iclass.cart;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

@Service("cartService")
public class CartServiceImpl implements CartService {

	@Resource(name = "cartDAO")
	private CartDAO cartDAO;

	// 장바구니 등록
	public void insertCart(Map<String, Object> map) throws Exception {

		
		cartDAO.cartInsert(map);
		/*System.out.println("optno[] : " + map.get("optno[]"));
		System.out.println("kinds[] : " + map.get("kinds[]"));
		System.out.println("ea[] : " + map.get("ea[]"));*/

		/*if (map.get("optno[]") instanceof String[]) {
			String[] goodsKind = (String[]) map.get("kinds[]"); // 옷 종류 번호
			String[] goodsAmount = (String[]) map.get("ea[]"); // 옷 수량

			for (int i = 0; i < goodsKind.length; i++) {
				cart.put("GOODS_NUMBER", Integer.parseInt(map.get("GOODS_NUMBER").toString()));
				cart.put("MEMBER_NUMBER", map.get("MEMBER_NUMBER"));
				cart.put("CART_AMOUNT", goodsAmount[i]);
				cart.put("GOODS_KIND_NUMBER", goodsKind[i]);

				if (cartDAO.confirmCart(cart) == null)
					cartDAO.cartInsert(cart);
			}
		} else {*/ // 하나일때?
			/*String goodsKind = (String) map.get("kinds[]"); // 옷 종류 번호
			String goodsAmount = (String) map.get("ea[]"); // 옷 수량
*/			/*cart.put("GOODS_NUMBER", Integer.parseInt(map.get("GOODS_NUMBER").toString()));
			cart.put("MEMBER_NUMBER", map.get("MEMBER_NUMBER"));
			cart.put("GOODS_KIND_NUMBER", goodsKind);
			cart.put("CART_AMOUNT", goodsAmount);

			if (cartDAO.confirmCart(cart) != null)
				return;
			else
				cartDAO.cartInsert(cart);*/

		/*}*/

	}

	// 회원 장바구니 목록
	@Override
	public List<Map<String, Object>> cartList(Map<String, Object> map) throws Exception {
		return cartDAO.cartList(map);
	}
	@Override
	public Map<String, Object> cartNo(Map<String, Object> map)throws Exception{
		return cartDAO.cartNo(map);
	}
	@Override
	public void cartInsert2(Map<String, Object> map) throws Exception {
		if (cartDAO.confirmCart(map) != null)
			return;
		else
			cartDAO.cartInsert(map);
	}

	// 비회원 장바구니 목록
	public Map<String, Object> sessionCartList(Map<String, Object> map) throws Exception {
		return cartDAO.sessionCartList(map);
	}

	// 장바구니 삭제
	@Override
	public void deleteMyCart(Map<String, Object> map) throws Exception {
		cartDAO.deleteMyCart(map);
	}

	// 장바구니 옵션에서 해당 상품에 대한 정보 불러오기
	@Override
	public Map<String, Object> selectOption(Map<String, Object> map) throws Exception {
		return cartDAO.selectOption(map);
	}

	@Override
	public Map<String, Object> sessionOption(Map<String, Object> map) throws Exception {
		return cartDAO.sessionOption(map);
	}

	@Override
	public void updateCarts(Map<String, Object> map) throws Exception {
		cartDAO.updateCarts(map);
	}

	// 3일이상된 장바구니 목록 삭제
	@Override
	public void deleteCarts(Map<String, Object> map) throws Exception {
		cartDAO.deleteCarts(map);
	}
	
	@Override
	public Map<String, Object> buyInCart(Map<String, Object> map) throws Exception {
		return cartDAO.buyInCart(map);
	}

	@Override
	public void insertCartDetail(Map<String, Object> map) throws Exception {
		cartDAO.insertCartDetail(map);
		
	}

}
