package com.kh.iclass.wishlist;

import java.util.Map;
import java.util.List;

public interface WishlistService {
	
	public void insertWishlist(Map<String, Object> map) throws Exception;
	
	public List<Map<String, Object>> selectWishlist(Map<String, Object> map) throws Exception;
	
	//위시 목록 삭제
	public void deleteOneWishlist(Map<String, Object> map) throws Exception;

	public void deleteAllWishlist(Map<String, Object> map) throws Exception;

}
