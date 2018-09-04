package com.kh.iclass.wishlist;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.kh.iclass.common.dao.AbstractDAO;

@Repository
public class WishlistDAO extends AbstractDAO{
	
	//위시리스트 등록
	public void insertWishlist(Map<String, Object> map) throws Exception{
		insert("wish.insertWishlist", map);
	}
	
	//위시리스트 목록 가져오기
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectWishlist(Map<String, Object> map) throws Exception {
		return selectList("wish.selectWishlist", map);
	}
	//위시리시트 중복 체크
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectwish(Map<String, Object> map) throws Exception {
		return selectList("wish.selectwish", map);
	}
	
	//위시 목록 삭제
	public void deleteOneWishlist(Map<String, Object> map) throws Exception{
		delete("wish.deleteOneWishlist", map);
	}
	public void deleteAllWishlist(Map<String, Object> map) throws Exception{
		delete("wish.deleteAllWishlist", map);
	}
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectCheckedWishList(Map<String, Object> map) throws Exception {
		return selectList("wish.selectCheckedWishList", map);
	}

}
