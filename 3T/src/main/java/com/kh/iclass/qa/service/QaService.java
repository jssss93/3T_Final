package com.kh.iclass.qa.service;

import java.util.List;
import java.util.Map;


public interface QaService {
	
	 	List<Map<String, Object>> QaList(Map<String, Object> map) throws Exception;

	 	void QaInsert(Map<String, Object> map) throws Exception;

	 	Map<String, Object> QaDetail(Map<String, Object> map) throws Exception;

		void QaUpdate(Map<String, Object> map) throws Exception;

		void QaDelete(Map<String, Object> map) throws Exception;
		
		List<Map<String, Object>> QaSearchList(Map<String, Object>map)throws Exception;
		
		void QaReplyInsert(Map<String, Object> map) throws Exception;
		
		void QaUpdateReplyStep(Map<String, Object> map) throws Exception;
}