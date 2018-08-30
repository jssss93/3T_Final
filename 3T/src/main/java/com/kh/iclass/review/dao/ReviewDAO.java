package com.kh.iclass.review.dao;

import org.springframework.stereotype.Repository;


import java.util.List;
import java.util.Map;
 


import com.kh.iclass.common.dao.AbstractDAO;

@Repository("ReviewDAO")
public class ReviewDAO extends AbstractDAO{
	//리뷰 리스트
	@SuppressWarnings("unchecked")
    public List<Map<String, Object>> ReviewList(Map<String, Object> map) throws Exception{
        return (List<Map<String, Object>>)selectList("review.REVIEW_selectList", map);//selectList는 Mybatis기본 기능으로 리스트를 조회할때 사용
    }
	//리뷰 쓰기
	public void ReviewInsert(Map<String, Object> map) throws Exception{
		insert("review.REVIEW_insert", map);
	}
	//리뷰 상세보기
	@SuppressWarnings("unchecked")
	public Map<String, Object> ReviewDetail(Map<String, Object> map) throws Exception{
		return (Map<String, Object>) selectOne("review.REVIEW_selectDetail", map);
	}
	//리뷰 수정
	public void ReviewUpdate(Map<String, Object> map) throws Exception{
		update("review.REVIEW_update", map);
	}
	//리뷰 삭제
	public void ReviewDelete(Map<String, Object> map) throws Exception{
		update("review.REVIEW_delete", map);
	}
	//리뷰 코멘트 쓰기
	public void ReviewCommentWrite(Map<String, Object> map) throws Exception{
		insert("review.ReviewInsertComment", map);
	}
	//리뷰 코멘트 리스트
	@SuppressWarnings("unchecked")
    public List<Map<String, Object>> ReviewCommentList(Map<String, Object> map) throws Exception{
        return (List<Map<String, Object>>)selectList("review.ReviewCommentSelectList", map);//selectList는 Mybatis기본 기능으로 리스트를 조회할때 사용
    }
	//리뷰 코멘트 삭제
	public void ReviewCommentDelete(Map<String, Object> map) throws Exception{
		update("review.REVIEW_Commentdelete", map);
	}
	//관리자 리뷰 코멘트 삭제
	public void ReviewAdminCommentDelete(Map<String, Object> map) throws Exception{
		update("review.REVIEW_AdminCommentdelete", map);
	}
	//리뷰 검색
	@SuppressWarnings("unchecked")
    public List<Map<String, Object>> ReviewSearchList(Map<String, Object> map) throws Exception{
        return (List<Map<String, Object>>)selectList("review.ReveiwSelectSearchList", map);
    }
	//리뷰 상품 리스트
	@SuppressWarnings("unchecked")
    public List<Map<String, Object>> ReviewGoodsList(Map<String, Object> map) throws Exception{
        return (List<Map<String, Object>>)selectList("review.Review_GoodsSelectList", map);
    }
	//리뷰 상품검색
	@SuppressWarnings("unchecked")
    public List<Map<String, Object>> ReviewGoodsSearch(Map<String, Object> map) throws Exception{
        return (List<Map<String, Object>>)selectList("review.Review_GoodsSearch", map);
    }
	//리뷰 상세보기에 가져올 상품정보	
	@SuppressWarnings("unchecked")
	public Map<String, Object> ReviewGoods(Map<String, Object> map) throws Exception{
		return (Map<String, Object>) selectOne("review.Review_GoodsSelect", map);
	}
	//리뷰 댓글 삭제 비밀번호 체크
	@SuppressWarnings("unchecked")
	public Map<String, Object> ReviewPasswdCheck(Map<String, Object> map) throws Exception{
		return (Map<String, Object>) selectOne("review.ReviewPasswdCheck", map);
	}
	
	
	
}