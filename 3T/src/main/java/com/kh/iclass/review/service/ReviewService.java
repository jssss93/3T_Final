package com.kh.iclass.review.service;

import java.util.List;
import java.util.Map;


public interface ReviewService {
	
	 	List<Map<String, Object>> ReviewList(Map<String, Object> map) throws Exception;

	 	void ReviewInsert(Map<String, Object> map) throws Exception;

	 	Map<String, Object> ReviewDetail(Map<String, Object> map) throws Exception;

		void ReviewUpdate(Map<String, Object> map) throws Exception;

		void ReviewDelete(Map<String, Object> map) throws Exception;

		

}