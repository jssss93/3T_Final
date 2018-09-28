package com.kh.iclass.notice;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.kh.iclass.common.dao.AbstractDAO;

@Repository("noticeDAO")
public class NoticeDAO extends AbstractDAO{
	//공지사항 리스트
	@SuppressWarnings("unchecked")
	public Map<String, Object> NoticeList(Map<String, Object> map) throws Exception{
	    return (Map<String, Object>)selectPagingList("notice.selectList", map);
	}
	//공지사항 전체 리스트
	@SuppressWarnings("unchecked")
	public Map<String, Object> NoticeAllList(Map<String, Object> map) throws Exception{
		return (Map<String, Object>)selectPagingList("notice.selectAllList", map);
	}
	//공지사항의 공지 리스트
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> notice1List(Map<String, Object> map) throws Exception{
		return selectList("notice.notice1List", map);
	}
	//공지사항 조회수
	public void UpdateReadCnt(Map<String, Object> map) throws Exception{
		update("notice.updateReadCnt", map);
	}
	//공지사항 상세보기
	@SuppressWarnings("unchecked")
	public Map<String, Object> NoticeDetail(Map<String, Object> map) throws Exception{
		return (Map<String, Object>) selectOne("notice.selectDetail", map);
	}
	//공지사항 수정
	public void NoticeUpdate(Map<String, Object> map) throws Exception{
		update("notice.update", map);
	}
	//공지사항 삭제
	public void NoticeDelete(Map<String, Object> map) throws Exception{
		update("notice.delete", map);
	}
	//공지사항 쓰기
	public void NoticeInsert(Map<String, Object> map) throws Exception{
		insert("notice.insert", map);
	}
	//공지사항 검색
	@SuppressWarnings("unchecked")
	public Map<String, Object> NoticeSearchList(Map<String, Object> map) throws Exception{
	    return (Map<String, Object>)selectPagingList("notice.NoticeSelectSearchList", map);
	}


}
