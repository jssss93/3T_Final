package com.kh.iclass.goods.service;

import java.util.Map;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.kh.iclass.common.map.CommandMap;

public interface GoodsService {

	/*
	 * List<Map<String, Object>> selectBoardList(Map<String, Object> map) throws
	 * Exception;
	 */
	// 대신에
	Map<String, Object> goodsList(Map<String, Object> map) throws Exception;

	void goodsWrite(Map<String, Object> map, HttpServletRequest request) throws Exception;
	
	//조회수증가
	/*public void updateHitcnt(Map<String, Object> map) throws Exception;*/
	
	List<Map<String, Object>> selectMainList(Map<String, Object> map) throws Exception;
	
	public List<Map<String, Object>> selectGoodsCategory(Map<String, Object> map) throws Exception;
	
	List<Map<String, Object>> selectGoodsBestCategory(Map<String, Object> map) throws Exception;
	
	List<Map<String, Object>> selectNewList(Map<String, Object> map) throws Exception;
	
	List<Map<String, Object>> selectBestList(Map<String, Object> map) throws Exception;
	
	//상품정보가져오기
	public List<Map<String, Object>> selectGoodsDetail(Map<String, Object> map) throws Exception;
		
	//상품이미지가져오기
	public List<Map<String, Object>> selectGoodsImage(Map<String, Object> map) throws Exception;

	/*List<Object> selectRelatedList(List<Object> list) throws Exception;
*/
	
	
	/*Map<String, Object> goodsDetail(Map<String, Object> map) throws Exception;

	void goodsUpdate(Map<String, Object> map, HttpServletRequest request) throws Exception;

	void goodsDelete(Map<String, Object> map) throws Exception;*/

	// 상품리뷰
	public List<Map<String, Object>> selectGoodsDetail1(Map<String, Object> map) throws Exception;

	// 상품QA
	public List<Map<String, Object>> selectGoodsDetail2(Map<String, Object> map) throws Exception;

	
}