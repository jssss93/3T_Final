package com.kh.iclass.wishlist;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.kh.iclass.common.map.CommandMap;

import java.util.List;

public interface WishlistService {
	
	public void WishinsertCart(Map<String, Object> map,HttpServletRequest request) throws Exception;
	
	public void insertWishlist(Map<String, Object> map) throws Exception;
	
	public List<Map<String, Object>> selectWishlist(Map<String, Object> map) throws Exception;
	
	public List<Map<String, Object>> selectwish(Map<String, Object> map) throws Exception;
	
	//위시 목록 삭제
	public void deleteOneWishlist(Map<String, Object> map) throws Exception;

	public void deleteAllWishlist(Map<String, Object> map) throws Exception;
	
	public List<Map<String, Object>> selectCheckedWishList(Map<String, Object> map) throws Exception;
	
	public void insertWishlist2(CommandMap map, HttpServletRequest request) throws Exception;


}
