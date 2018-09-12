package com.kh.iclass.faq.service;

import java.util.Map;

public interface FaqService {
	//faq 리스트
	Map<String, Object> FaqList(Map<String, Object> map) throws Exception;
	//faq 상세보기
	Map<String, Object> FaqDetail(Map<String, Object> map) throws Exception;
	//faq 수정
	void FaqUpdate(Map<String, Object> map) throws Exception;
	//faq 삭제
	void FaqDelete(Map<String, Object> map) throws Exception;
	//faq 쓰기
	void FaqInsert(Map<String, Object> map) throws Exception;

	/*void FaqReadCntUp(Map<String, Object> map) throws Exception;*/
	//faq 검색
	Map<String, Object> FaqSearchList(Map<String, Object> map) throws Exception;
	

}