package com.kh.iclass.notice.dao;

import java.util.Map;

import org.springframework.stereotype.Repository;

import com.kh.iclass.common.dao.AbstractDAO;

@Repository("noticeDAO")
public class NoticeDAO extends AbstractDAO{

	/*@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectBoardList(Map<String, Object> map) throws Exception{
		return (List<Map<String, Object>>)selectList("sample.selectBoardList", map);
	}*/
	@SuppressWarnings("unchecked")
	public Map<String, Object> NoticeList(Map<String, Object> map) throws Exception{
	    return (Map<String, Object>)selectPagingList("notice.selectList", map);
	}

	public void UpdateReadCnt(Map<String, Object> map) throws Exception{
		update("notice.updateReadCnt", map);
	}
	
	@SuppressWarnings("unchecked")
	public Map<String, Object> NoticeDetail(Map<String, Object> map) throws Exception{
		return (Map<String, Object>) selectOne("notice.selectDetail", map);
	}
	
	public void NoticeUpdate(Map<String, Object> map) throws Exception{
		update("notice.update", map);
	}

	public void NoticeDelete(Map<String, Object> map) throws Exception{
		update("notice.delete", map);
	}
		
	public void NoticeInsert(Map<String, Object> map) throws Exception{
		insert("notice.insert", map);
	}



}
