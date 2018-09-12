package com.kh.iclass.notice.service;

import java.util.Map;

public interface NoticeService {
	//공지사항 리스트
	Map<String, Object> NoticeList(Map<String, Object> map) throws Exception;
	//공지사항 상세보기
	Map<String, Object> NoticeDetail(Map<String, Object> map) throws Exception;
	//공지사항 수정
	void NoticeUpdate(Map<String, Object> map) throws Exception;
	//공지사항 삭제
	void NoticeDelete(Map<String, Object> map) throws Exception;
	//공지사항 쓰기
	void NoticeInsert(Map<String, Object> map) throws Exception;
	//공지사항 조회수
	void NoticeReadCntUp(Map<String, Object> map) throws Exception;
	//공지사항 검색
	Map<String, Object> NoticeSearchList(Map<String, Object> map) throws Exception;
	

}