package com.kh.iclass.cart;

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
	}
	
	@Override
	public void insertCartAuto(Object attribute) {
		cartDAO.cartInsertAuto(attribute);
		
	}
	@Override
	public List<Map<String, Object>> cartList(Map<String, Object> map) throws Exception {
		return cartDAO.cartList(map);
	}
	@Override
	public List<Map<String, Object>> checkedCartList(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return cartDAO.checkedCartList(map);
	}
	@Override
	public List<Map<String, Object>> allCartList(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return cartDAO.allCartList(map);
	}
	@Override
	public void cartDeleteOne(Map<String, Object> map) throws Exception {
		cartDAO.deleteOne(map);
	}
	@Override
	public void cartDeleteSelect(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		cartDAO.deleteSelect(map);
	}
	@Override
	public void cartDeleteAll(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		cartDAO.deleteAll(map);
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
