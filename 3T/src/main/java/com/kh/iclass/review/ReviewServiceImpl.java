package com.kh.iclass.review;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;


@Service("ReviewService")
public class ReviewServiceImpl implements ReviewService{
	
	 Logger log = Logger.getLogger(this.getClass());

	 @Resource(name="ReviewDAO")
	 private ReviewDAO ReviewDAO;
	//리뷰 리스트
	@Override
	public Map<String, Object> ReviewList(Map<String, Object> map) throws Exception {
		
		return ReviewDAO.ReviewList(map);
	}
	//faq 공지사항 리스트
	@Override
	public List<Map<String, Object>> review4List(Map<String, Object> map) throws Exception {
			
		return ReviewDAO.review4List(map);
	}
	//리뷰 쓰기
	@Override
	public void ReviewInsert(Map<String, Object> map) throws Exception {
		ReviewDAO.ReviewInsert(map);
	}
	//리뷰 상세보기
	@Override
	public Map<String, Object> ReviewDetail(Map<String, Object> map) throws Exception {
		
		Map<String, Object> resultMap = ReviewDAO.ReviewDetail(map);
		return resultMap;
	}
	//리뷰 수정
	@Override
	public void ReviewUpdate(Map<String, Object> map) throws Exception {
	
		ReviewDAO.ReviewUpdate(map);
		
	}
	//리뷰 삭제
	@Override
	public void ReviewDelete(Map<String, Object> map) throws Exception {
		
		ReviewDAO.ReviewDelete(map);
	}
	//리뷰 코멘트 쓰기
	@Override
	public void ReviewCommentWrite(Map<String, Object> map) throws Exception {
	
		ReviewDAO.ReviewCommentWrite(map);
	}
	//리뷰 코멘트 리스트
	@Override
	public List<Map<String, Object>> ReviewCommentList(Map<String, Object> map) throws Exception {

		return ReviewDAO.ReviewCommentList(map);
		
	}
	//리뷰 코멘트 삭제
	@Override
	public void ReviewDeleteComment(Map<String, Object> map) throws Exception {
		ReviewDAO.ReviewCommentDelete(map);
		
	}
	//리뷰 검색
	@Override
	public Map<String, Object> ReviewSearchList(Map<String, Object> map) throws Exception {
		
		return ReviewDAO.ReviewSearchList(map);
	}
	//리뷰 상품 리스트
	@Override
	public List<Map<String, Object>> ReviewGoodsList(Map<String, Object> map) throws Exception {
	
		return ReviewDAO.ReviewGoodsList(map);
	}
	//리뷰 상품검색
	@Override
	public List<Map<String, Object>> ReviewGoodsSearch(Map<String, Object> map) throws Exception {
	
		return ReviewDAO.ReviewGoodsSearch(map);

	}
	//리뷰 상세보기에 가져올 상품정보	
	@Override
	public Map<String, Object> ReviewGoods(Map<String, Object> map) throws Exception {
		
		Map<String, Object> resultMap = ReviewDAO.ReviewGoods(map);

		return resultMap;
	}
	//리뷰 댓글 삭제 비밀번호 체크
	@Override
	public Map<String, Object> ReviewPasswdCheck(Map<String, Object> map) throws Exception {
	
		Map<String, Object> resultMap = ReviewDAO.ReviewPasswdCheck(map);
		
		return resultMap;
	}
	//관리자 리뷰 코멘트 삭제
	@Override
	public void ReviewAdminDeleteComment(Map<String, Object> map) throws Exception {
		
		ReviewDAO.ReviewAdminCommentDelete(map);
	}

		
	
	

}