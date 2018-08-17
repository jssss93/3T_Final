package com.kh.iclass.qa.service;

import java.util.List;
import java.util.Map;


public interface QaService {
	
	 	List<Map<String, Object>> QaList(Map<String, Object> map) throws Exception;

	 	void QaInsert(Map<String, Object> map) throws Exception;

	 	Map<String, Object> QaDetail(Map<String, Object> map) throws Exception;

		void QaUpdate(Map<String, Object> map) throws Exception;

		void QaDelete(Map<String, Object> map) throws Exception;
		//QA검색
		List<Map<String, Object>> QaSearchList(Map<String, Object>map)throws Exception;
		
		void QaReplyInsert(Map<String, Object> map) throws Exception;
		
		void QaUpdateReplyStep(Map<String, Object> map) throws Exception;

		List<Map<String, Object>> QaGoodsList(Map<String, Object> map) throws Exception;
		//QA상품검색
		List<Map<String, Object>> QaGoodsSearch(Map<String, Object>map)throws Exception;
		
		Map<String, Object> QaGoods(Map<String, Object> map) throws Exception;
		
		Map<String, Object> QaPasswdCheck(Map<String, Object> map) throws Exception;
		
		Map<String, Object> QaSel(Map<String, Object> map) throws Exception;
}