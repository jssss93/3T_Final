package com.kh.iclass.wishlist;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

@Service("wishService")
public class WishlistServiceimpl implements WishlistService{
	
	@Resource(name = "wishlistDAO")
	private WishlistDAO wishlistDAO;
	
	@Override
	public void insertWishlist(Map<String, Object> map) throws Exception{
		
		wishlistDAO.insertWishlist(map);
	}
	
	@Override
	public List<Map<String, Object>> selectWishlist(Map<String, Object> map) throws Exception{
		return wishlistDAO.selectWishlist(map);
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
