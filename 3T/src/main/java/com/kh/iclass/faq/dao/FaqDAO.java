package com.kh.iclass.faq.dao;

import java.util.Map;

import org.springframework.stereotype.Repository;

import com.kh.iclass.common.dao.AbstractDAO;

@Repository("faqDAO")
public class FaqDAO extends AbstractDAO{

	@SuppressWarnings("unchecked")
	public Map<String, Object> FaqList(Map<String, Object> map) throws Exception{
	    return (Map<String, Object>)selectPagingList("faq.selectList", map);
	}

/*	public void UpdateReadCnt(Map<String, Object> map) throws Exception{
		update("faq.updateReadCnt", map);
	}*/
	
	@SuppressWarnings("unchecked")
	public Map<String, Object> FaqDetail(Map<String, Object> map) throws Exception{
		return (Map<String, Object>) selectOne("faq.selectDetail", map);
	}
	
	public void FaqUpdate(Map<String, Object> map) throws Exception{
		update("faq.update", map);
	}

	public void FaqDelete(Map<String, Object> map) throws Exception{
		update("faq.delete", map);
	}
		
	public void FaqInsert(Map<String, Object> map) throws Exception{
		insert("faq.insert", map);
	}



}
