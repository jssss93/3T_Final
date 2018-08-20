package com.kh.iclass.admin.notice;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Repository;

import com.kh.iclass.common.dao.AbstractDAO;

@Repository("adminNotifyDAO")
public class AdminNoticeDAO extends AbstractDAO {

	// 공지사항 목록
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> notifyList(Map<String, Object> map) throws Exception {
		return (List<Map<String, Object>>) selectList("notify.notifyList", map);
	}
	
	// 공지사항 상세보기
	@SuppressWarnings("unchecked")
	public Map<String, Object> notifyDetail(Map<String, Object> map) throws Exception {
		return (Map<String, Object>) selectOne("notify.notifyDetail", map);
	}
	
	// 조회수 증가
	public void updateHitCnt(Map<String, Object> map) throws Exception {
		update("notify.notifyUpdateHitCnt", map);
	}
	
	// 공지사항 수정
	public void notifyModify(Map<String, Object> map) throws Exception {
		update("notify.notifyModify", map);
	}
	
	// 공지사항 삭제
	public void notifyDelete(Map<String, Object> map) throws Exception {
		delete("notify.notifyDelete", map);
	}
	
	// 공지사항 등록
	public void notifyWrite(Map<String, Object> map, HttpServletRequest request) throws Exception {
		insert("notify.notifyWrite", map);
	}
	
	// 제목으로 공지사항 검색
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> notifyTitleSearch(Map<String, Object> map) throws Exception {
		return (List<Map<String, Object>>) selectList("notify.notifySearchTitleList", map);
	}
	
	// 내용으로 공지사항 검색
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> notifyContentSearch(Map<String, Object> map) throws Exception {
		return (List<Map<String, Object>>) selectList("notify.notifySearchContentList", map);
	}
	
	// 파일첨부1
	public void notifyImage1(Map<String, Object> map) throws Exception {
		update("notify.notifyImage1", map);
	}
	
	//공지사항 이미지 등록
	public void insertNotifyImage(Map<String, Object> map) throws Exception {
	   update("notify.insertNotifyImage", map);
	}
}