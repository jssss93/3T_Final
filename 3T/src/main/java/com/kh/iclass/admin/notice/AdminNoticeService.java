package com.kh.iclass.admin.notice;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

public interface AdminNoticeService {

	// 공지사항 목록
	public List<Map<String, Object>> notifyList(Map<String, Object> map) throws Exception;
	
	// 공지사항 상세보기
	public Map<String, Object> notifyDetail(Map<String, Object> map) throws Exception;
	
	// 공지사항 수정
	public void notifyModify(Map<String, Object> map, HttpServletRequest request) throws Exception;
	
	// 공지사항 삭제
	public void notifyDelete(Map<String, Object> map) throws Exception;
	
	// 공지사항 등록
	public void notifyWrite(Map<String, Object> map, HttpServletRequest request) throws Exception;
	
	// 제목으로 공지사항 검색
	public List<Map<String, Object>> notifyTitleSearch(Map<String, Object> map) throws Exception;
	
	// 내용으로 공지사항 검색
	public List<Map<String, Object>> notifyContentSearch(Map<String, Object> map) throws Exception;
	
	// 파일첨부1
	public void notifyImage1(Map<String, Object> map) throws Exception; 
	
	// 조회수 증가
	public void updateHitCnt(Map<String, Object> map) throws Exception;
	
	
}
