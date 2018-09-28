package com.kh.iclass.faq.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.kh.iclass.common.dao.AbstractDAO;

@Repository("faqDAO")
public class FaqDAO extends AbstractDAO{
	//faq 리스트
	@SuppressWarnings("unchecked")
	public Map<String, Object> FaqList(Map<String, Object> map) throws Exception{
	    return (Map<String, Object>)selectPagingList("faq.selectList", map);
	}
	//faq 공지 리스트
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> Faq2List(Map<String, Object> map) throws Exception{
	    return selectList("faq.faq2List", map);
	}

/*	public void UpdateReadCnt(Map<String, Object> map) throws Exception{
		update("faq.updateReadCnt", map);
	}*/
	//faq 상세보기
	@SuppressWarnings("unchecked")
	public Map<String, Object> FaqDetail(Map<String, Object> map) throws Exception{
		return (Map<String, Object>) selectOne("faq.selectDetail", map);
	}
	//faq 수정
	public void FaqUpdate(Map<String, Object> map) throws Exception{
		update("faq.update", map);
	}
	//faq 삭제
	public void FaqDelete(Map<String, Object> map) throws Exception{
		update("faq.delete", map);
	}
	//faq 쓰기
	public void FaqInsert(Map<String, Object> map) throws Exception{
		insert("faq.insert", map);
	}
	//faq 검색
	@SuppressWarnings("unchecked")
	public Map<String, Object> FaqSearchList(Map<String, Object> map) throws Exception{
	    return (Map<String, Object>)selectPagingList("faq.selectSearchList", map);
	}


}
