package com.kh.iclass.qa.dao;

import org.springframework.stereotype.Repository;


import java.util.List;
import java.util.Map;
 


import com.kh.iclass.common.dao.AbstractDAO;

@Repository("QaDAO")
public class QaDAO extends AbstractDAO{
	
	@SuppressWarnings("unchecked")
    public List<Map<String, Object>> QaList(Map<String, Object> map) throws Exception{
        return (List<Map<String, Object>>)selectList("qa.QA_selectList", map);//selectList는 Mybatis기본 기능으로 리스트를 조회할때 사용
    }
	public void QaInsert(Map<String, Object> map) throws Exception{
		insert("qa.QA_insert", map);
	}
	@SuppressWarnings("unchecked")
	public Map<String, Object> QaDetail(Map<String, Object> map) throws Exception{
		return (Map<String, Object>) selectOne("qa.QA_selectDetail", map);
	}
	
	public void QaUpdate(Map<String, Object> map) throws Exception{
		update("qa.QA_update", map);
	}

	public void QaDelete(Map<String, Object> map) throws Exception{
		update("qa.QA_delete", map);
	}
	//QA 검색
	@SuppressWarnings("unchecked")
    public List<Map<String, Object>> QaSearchList(Map<String, Object> map) throws Exception{
        return (List<Map<String, Object>>)selectList("qa.QA_selectSearchList", map);
    }
	public void QaReplyInsert(Map<String, Object> map) throws Exception{
		insert("qa.QaInsertReply", map);
	}
	public void QaReplyStep(Map<String, Object> map) throws Exception{
		update("qa.QaUpdateReplyStep", map);
	}
	@SuppressWarnings("unchecked")
    public List<Map<String, Object>> QaGoodsList(Map<String, Object> map) throws Exception{
        return (List<Map<String, Object>>)selectList("qa.QA_GoodsSelectList", map);
    }
	//QA 상품검색
	@SuppressWarnings("unchecked")
    public List<Map<String, Object>> QaGoodsSearch(Map<String, Object> map) throws Exception{
        return (List<Map<String, Object>>)selectList("qa.QA_GoodsSearch", map);
    }
	@SuppressWarnings("unchecked")
	public Map<String, Object> QaGoods(Map<String, Object> map) throws Exception{
		return (Map<String, Object>) selectOne("qa.QA_GoodsSelect", map);
	}
	
}
