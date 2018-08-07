package com.kh.iclass.faq;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.kh.iclass.common.dao.AbstractDAO;

@Repository("faqDAO")
public class faqDAO extends AbstractDAO{

	/*@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectBoardList(Map<String, Object> map) throws Exception{
		return (List<Map<String, Object>>)selectList("sample.selectBoardList", map);
	}*/
	@SuppressWarnings("unchecked")
	public Map<String, Object> selectfaqList(Map<String, Object> map) throws Exception{
	    return (Map<String, Object>)selectPagingList("faq.selectList", map);
	}

	/*public void updateReadCnt(Map<String, Object> map) throws Exception{
		update("faq.updateReadCnt", map);
	}
	
	@SuppressWarnings("unchecked")
	public Map<String, Object> selectGoodsDetail(Map<String, Object> map) throws Exception{
		return (Map<String, Object>) selectOne("goods.selectDetail", map);
	}
	
	public void updateGoods(Map<String, Object> map) throws Exception{
		update("goods.update", map);
	}

	public void deleteGoods(Map<String, Object> map) throws Exception{
		update("goods.delete", map);
	}*/
		
	public void insertFaq(Map<String, Object> map) throws Exception{
		insert("faq.insert", map);
	}
	/*public void insertFile(Map<String, Object> map) throws Exception{
	    insert("goods.insertFile", map);
	}
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectFileList(Map<String, Object> map) throws Exception{
	    return (List<Map<String, Object>>)selectList("goods.selectFileList", map);
	}
	public void deleteFileList(Map<String, Object> map) throws Exception{
	    update("goods.deleteFileList", map);
	}
	 
	public void updateFile(Map<String, Object> map) throws Exception{
	    update("goods.updateFile", map);
	}*/



	

}
