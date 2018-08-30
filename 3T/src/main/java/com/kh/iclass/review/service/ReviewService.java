package com.kh.iclass.review.service;

import java.util.List;
import java.util.Map;


public interface ReviewService {
		//리뷰 리스트
	 	List<Map<String, Object>> ReviewList(Map<String, Object> map) throws Exception;
	 	//리뷰 쓰기
	 	void ReviewInsert(Map<String, Object> map) throws Exception;
	 	//리뷰 상세보기
	 	Map<String, Object> ReviewDetail(Map<String, Object> map) throws Exception;
	 	//리뷰 수정
		void ReviewUpdate(Map<String, Object> map) throws Exception;
		//리뷰 삭제
		void ReviewDelete(Map<String, Object> map) throws Exception;
		
		//리뷰 코멘트 쓰기
		void ReviewCommentWrite(Map<String, Object> map) throws Exception;
		//리뷰 코멘트 리스트
		List<Map<String, Object>> ReviewCommentList(Map<String, Object> map) throws Exception;
		
		//리뷰 코멘트 삭제
		void ReviewDeleteComment (Map<String, Object> map) throws Exception;
		//관리자 리뷰 코멘트 삭제
		void ReviewAdminDeleteComment (Map<String, Object> map) throws Exception;
		//리뷰 검색
		List<Map<String, Object>> ReviewSearchList(Map<String, Object>map)throws Exception;
 
		//리뷰 상품 리스트
		List<Map<String, Object>> ReviewGoodsList(Map<String, Object> map) throws Exception;
		//리뷰 상품검색
		List<Map<String, Object>> ReviewGoodsSearch(Map<String, Object>map)throws Exception;
		//리뷰 상세보기에 가져올 상품정보	
		Map<String, Object> ReviewGoods(Map<String, Object> map) throws Exception;
		//리뷰 댓글 삭제 비밀번호 체크
		Map<String, Object> ReviewPasswdCheck(Map<String, Object> map) throws Exception;
}