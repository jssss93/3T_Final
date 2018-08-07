package com.kh.iclass.faq.service;

import java.util.Map;

public interface FaqService {

	Map<String, Object> FaqList(Map<String, Object> map) throws Exception;
	
	Map<String, Object> FaqDetail(Map<String, Object> map) throws Exception;
	
	void FaqUpdate(Map<String, Object> map) throws Exception;

	void FaqDelete(Map<String, Object> map) throws Exception;
	
	void FaqInsert(Map<String, Object> map) throws Exception;

	/*void FaqReadCntUp(Map<String, Object> map) throws Exception;*/
	

	

}