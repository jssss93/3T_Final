package com.kh.iclass.notice.service;

import java.util.Map;

public interface NoticeService {

	Map<String, Object> NoticeList(Map<String, Object> map) throws Exception;
	
	Map<String, Object> NoticeDetail(Map<String, Object> map) throws Exception;
	
	void NoticeUpdate(Map<String, Object> map) throws Exception;

	void NoticeDelete(Map<String, Object> map) throws Exception;
	
	void NoticeInsert(Map<String, Object> map) throws Exception;

	void NoticeReadCntUp(Map<String, Object> map) throws Exception;
	
	Map<String, Object> NoticeSearchList(Map<String, Object> map) throws Exception;
	

}