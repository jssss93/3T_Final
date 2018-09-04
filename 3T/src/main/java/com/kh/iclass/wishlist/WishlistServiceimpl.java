package com.kh.iclass.wishlist;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.kh.iclass.cart.CartDAO;
import com.kh.iclass.common.util.WishToCartUtils;

@Service("wishService")
public class WishlistServiceimpl implements WishlistService{
	
	@Resource(name = "wishlistDAO")
	private WishlistDAO wishlistDAO;
	
	@Resource(name = "cartDAO")
	private CartDAO cartDAO;
	
	@Resource(name = "WishToCartUtils")
	private WishToCartUtils WishToCartUtils;
	
	@Override
	public void WishinsertCart(Map<String, Object> map, HttpServletRequest request) throws Exception {
		// TODO Auto-generated method stub

		List<Map<String, Object>> selectwishlist  = WishToCartUtils.parseInsertcart(map, request);
		for (int i = 0; i < selectwishlist.size(); i++) {
			cartDAO.insertWishCart(selectwishlist.get(i));
		}
	}
	
	@Override
	public void insertWishlist(Map<String, Object> map) throws Exception{
		
		wishlistDAO.insertWishlist(map);
	}
	
	@Override
	public List<Map<String, Object>> selectWishlist(Map<String, Object> map) throws Exception{
		return wishlistDAO.selectWishlist(map);
	}
	
	@Override
	public List<Map<String, Object>> selectwish(Map<String, Object> map) throws Exception{
		return wishlistDAO.selectwish(map);
	}
	
	//위시 목록 삭제
	@Override
	public void deleteOneWishlist(Map<String, Object> map) throws Exception {
		wishlistDAO.deleteOneWishlist(map);
	}
	
	@Override
	public void deleteAllWishlist(Map<String, Object> map) throws Exception {
		wishlistDAO.deleteAllWishlist(map);
	}
	
	@Override
	public List<Map<String, Object>> selectCheckedWishList(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return wishlistDAO.selectCheckedWishList(map);
	}

}
