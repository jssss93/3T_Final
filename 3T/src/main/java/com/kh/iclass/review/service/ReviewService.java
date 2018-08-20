package com.kh.iclass.review.service;

import java.util.List;
import java.util.Map;


public interface ReviewService {
	
	 	List<Map<String, Object>> ReviewList(Map<String, Object> map) throws Exception;

	 	void ReviewInsert(Map<String, Object> map) throws Exception;

	 	Map<String, Object> ReviewDetail(Map<String, Object> map) throws Exception;

		void ReviewUpdate(Map<String, Object> map) throws Exception;

		void ReviewDelete(Map<String, Object> map) throws Exception;
		
		//리뷰 댓글
		void ReviewCommentWrite(Map<String, Object> map) throws Exception;
		//리뷰댓글 리스트
		List<Map<String, Object>> ReviewCommentList(Map<String, Object> map) throws Exception;
		
		//리뷰 코멘트 삭제
		void ReviewDeleteComment (Map<String, Object> map) throws Exception;
		//리뷰 검색
		List<Map<String, Object>> ReviewSearchList(Map<String, Object>map)throws Exception;
 
		//상품 리스트
		List<Map<String, Object>> ReviewGoodsList(Map<String, Object> map) throws Exception;
		//리뷰 상품검색
		List<Map<String, Object>> ReviewGoodsSearch(Map<String, Object>map)throws Exception;
				
		Map<String, Object> ReviewGoods(Map<String, Object> map) throws Exception;
		
		Map<String, Object> ReviewPasswdCheck(Map<String, Object> map) throws Exception;
}