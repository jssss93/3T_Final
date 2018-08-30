package com.kh.iclass.qa.dao;

import org.springframework.stereotype.Repository;


import java.util.List;
import java.util.Map;
 


import com.kh.iclass.common.dao.AbstractDAO;

@Repository("QaDAO")
public class QaDAO extends AbstractDAO{
	//QA 리스트
	@SuppressWarnings("unchecked")
    public List<Map<String, Object>> QaList(Map<String, Object> map) throws Exception{
        return (List<Map<String, Object>>)selectList("qa.QA_selectList", map);//selectList는 Mybatis기본 기능으로 리스트를 조회할때 사용
    }
	@SuppressWarnings("unchecked")
    public List<Map<String, Object>> QaAdminList(Map<String, Object> map) throws Exception{
        return (List<Map<String, Object>>)selectList("qa.QA_AdminSelectList", map);//selectList는 Mybatis기본 기능으로 리스트를 조회할때 사용
    }
	//QA 쓰기
	public void QaInsert(Map<String, Object> map) throws Exception{
		insert("qa.QA_insert", map);
	}
	//QA 상세보기
	@SuppressWarnings("unchecked")
	public Map<String, Object> QaDetail(Map<String, Object> map) throws Exception{
		return (Map<String, Object>) selectOne("qa.QA_selectDetail", map);
	}
	@SuppressWarnings("unchecked")
	public Map<String, Object> QaDetail2(Map<String, Object> map) throws Exception{
		return (Map<String, Object>) selectOne("qa.QA_selectDetail2", map);
	}
	//QA 수정
	public void QaUpdate(Map<String, Object> map) throws Exception{
		update("qa.QA_update", map);
	}
	//QA 삭제
	public void QaDelete(Map<String, Object> map) throws Exception{
		update("qa.QA_delete", map);
	}
	//QA 검색
	@SuppressWarnings("unchecked")
    public List<Map<String, Object>> QaSearchList(Map<String, Object> map) throws Exception{
        return (List<Map<String, Object>>)selectList("qa.QA_selectSearchList", map);
    }
	//QA 답글 쓰기
	public void QaReplyInsert(Map<String, Object> map) throws Exception{
		insert("qa.QaInsertReply", map);
	}
	//QA 답글 쓰기 시 RE_STEP 증가
	public void QaReplyStep(Map<String, Object> map) throws Exception{
		update("qa.QaUpdateReplyStep", map);
	}
	//QA 상품 리스트
	@SuppressWarnings("unchecked")
    public List<Map<String, Object>> QaGoodsList(Map<String, Object> map) throws Exception{
        return (List<Map<String, Object>>)selectList("qa.QA_GoodsSelectList", map);
    }
	//QA 상품검색
	@SuppressWarnings("unchecked")
    public List<Map<String, Object>> QaGoodsSearch(Map<String, Object> map) throws Exception{
        return (List<Map<String, Object>>)selectList("qa.QA_GoodsSearch", map);
    }
	//QA 상세보기에 가져올 상품정보
	@SuppressWarnings("unchecked")
	public Map<String, Object> QaGoods(Map<String, Object> map) throws Exception{
		return (Map<String, Object>) selectOne("qa.QA_GoodsSelect", map);
	}
	//QA 비밀글 비밀번호 체크
	@SuppressWarnings("unchecked")
	public Map<String, Object> QaPasswdCheck(Map<String, Object> map) throws Exception{
		return (Map<String, Object>) selectOne("qa.QaPasswdCheck", map);
	}
	//QA 답변쓰기후 list로 이동할때 카테고리,비밀글여부,상품번호를 보냄
	@SuppressWarnings("unchecked")
	public Map<String, Object> QaSel(Map<String, Object> map) throws Exception{
		return (Map<String, Object>) selectOne("qa.QaReplySel", map);
	}
	
	public void QaUpdateRe_level(Map<String, Object> map) throws Exception{
		update("QA_updateRe_level", map);
	}
}
