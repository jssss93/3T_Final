package com.kh.iclass.notice.service;

import java.util.Map;

public interface NoticeService {

	/*List<Map<String, Object>> selectBoardList(Map<String, Object> map) throws Exception;*/
	//대신에
	Map<String, Object> NoticeList(Map<String, Object> map) throws Exception;
	
	Map<String, Object> NoticeDetail(Map<String, Object> map) throws Exception;
	
	void NoticeUpdate(Map<String, Object> map) throws Exception;

	void NoticeDelete(Map<String, Object> map) throws Exception;
	
	void NoticeInsert(Map<String, Object> map) throws Exception;

	void NoticeReadCntUp(Map<String, Object> map) throws Exception;
	

	

}