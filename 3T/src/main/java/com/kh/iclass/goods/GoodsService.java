package com.kh.iclass.goods;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

public interface GoodsService {

	/*
	 * List<Map<String, Object>> selectBoardList(Map<String, Object> map) throws
	 * Exception;
	 */
	// 대신에
	//관리자 총 상품 리스트
	Map<String, Object> goodsList(Map<String, Object> map) throws Exception;
	//관리자 카테고리 리스트
	Map<String, Object> goodsCategoryList(Map<String, Object> map) throws Exception;

	void goodsWrite(Map<String, Object> map, HttpServletRequest request) throws Exception;
	
	//조회수증가
	public int updateHitcnt(Map<String, Object> map) throws Exception;
	
	List<Map<String, Object>> selectMainList(Map<String, Object> map) throws Exception;
	//회원 카테고리 리스트
	public Map<String, Object> selectGoodsCategory(Map<String, Object> map) throws Exception;
	
	List<Map<String, Object>> selectGoodsBestCategory(Map<String, Object> map) throws Exception;
	
	List<Map<String, Object>> selectNewList(Map<String, Object> map) throws Exception;
	
	List<Map<String, Object>> selectBestList(Map<String, Object> map) throws Exception;
	
	//상품정보가져오기
	public List<Map<String, Object>> selectGoodsDetail(Map<String, Object> map) throws Exception;
		
	//상품이미지가져오기
	public List<Map<String, Object>> selectGoodsImage(Map<String, Object> map) throws Exception;
	
	List<Map<String, Object>> selectRelatedList(Map<String, Object> map) throws Exception;

	/*List<Object> selectRelatedList(List<Object> list) throws Exception;
*/
	
	
	/*Map<String, Object> goodsDetail(Map<String, Object> map) throws Exception;*/

	void updateGoods(Map<String, Object> map, HttpServletRequest request) throws Exception;

	void deleteAttribute(Map<String, Object> map) throws Exception;
	
	void deleteUpload(Map<String, Object> map) throws Exception;
	
	void deleteGoods(Map<String, Object>map) throws Exception;

	// 상품리뷰
	public List<Map<String, Object>> selectGoodsDetail1(Map<String, Object> map) throws Exception;

	// 상품QA
	public List<Map<String, Object>> selectGoodsDetail2(Map<String, Object> map) throws Exception;
	
	//서치
	public Map<String, Object> goodsSearchList(Map<String, Object> map) throws Exception;
	
	Map<String, Object> goodsAdminSearchList(Map<String, Object> map) throws Exception;
	
}