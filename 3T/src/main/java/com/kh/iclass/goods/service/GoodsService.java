package com.kh.iclass.goods.service;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

public interface GoodsService {

	/*
	 * List<Map<String, Object>> selectBoardList(Map<String, Object> map) throws
	 * Exception;
	 */
	// 대신에
	Map<String, Object> goodsList(Map<String, Object> map) throws Exception;

	Map<String, Object> goodsDetail(Map<String, Object> map) throws Exception;

	void goodsUpdate(Map<String, Object> map, HttpServletRequest request) throws Exception;

	void goodsDelete(Map<String, Object> map) throws Exception;

	void goodsWrite(Map<String, Object> map, HttpServletRequest request) throws Exception;

	
}