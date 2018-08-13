package com.kh.iclass.review.dao;

import org.springframework.stereotype.Repository;


import java.util.List;
import java.util.Map;
 


import com.kh.iclass.common.dao.AbstractDAO;

@Repository("ReviewDAO")
public class ReviewDAO extends AbstractDAO{
	
	@SuppressWarnings("unchecked")
    public List<Map<String, Object>> ReviewList(Map<String, Object> map) throws Exception{
        return (List<Map<String, Object>>)selectList("review.REVIEW_selectList", map);//selectList는 Mybatis기본 기능으로 리스트를 조회할때 사용
    }
	public void ReviewInsert(Map<String, Object> map) throws Exception{
		insert("review.REVIEW_insert", map);
	}
	@SuppressWarnings("unchecked")
	public Map<String, Object> ReviewDetail(Map<String, Object> map) throws Exception{
		return (Map<String, Object>) selectOne("review.REVIEW_selectDetail", map);
	}
	
	public void ReviewUpdate(Map<String, Object> map) throws Exception{
		update("review.REVIEW_update", map);
	}

	public void ReviewDelete(Map<String, Object> map) throws Exception{
		update("review.REVIEW_delete", map);
	}
	
	public void ReviewCommentWrite(Map<String, Object> map) throws Exception{
		insert("review.ReviewInsertComment", map);
	}
	@SuppressWarnings("unchecked")
    public List<Map<String, Object>> ReviewCommentList(Map<String, Object> map) throws Exception{
        return (List<Map<String, Object>>)selectList("review.ReviewCommentSelectList", map);//selectList는 Mybatis기본 기능으로 리스트를 조회할때 사용
    }
	public void ReviewCommentDelete(Map<String, Object> map) throws Exception{
		update("review.REVIEW_Commentdelete", map);
	}
	
}