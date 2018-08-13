package com.kh.iclass.review.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import com.kh.iclass.review.dao.ReviewDAO;


@Service("ReviewService")
public class ReviewServiceImpl implements ReviewService{
	
	 Logger log = Logger.getLogger(this.getClass());

	 @Resource(name="ReviewDAO")
	 private ReviewDAO ReviewDAO;
	@Override
	public List<Map<String, Object>> ReviewList(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return ReviewDAO.ReviewList(map);
	}
	@Override
	public void ReviewInsert(Map<String, Object> map) throws Exception {
		ReviewDAO.ReviewInsert(map);
	}
	@Override
	public Map<String, Object> ReviewDetail(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		Map<String, Object> resultMap = ReviewDAO.ReviewDetail(map);
		return resultMap;
	}
	@Override
	public void ReviewUpdate(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		ReviewDAO.ReviewUpdate(map);
		
	}
	@Override
	public void ReviewDelete(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		ReviewDAO.ReviewDelete(map);
	}
	@Override
	public void ReviewCommentWrite(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		ReviewDAO.ReviewCommentWrite(map);
	}
	@Override
	public List<Map<String, Object>> ReviewCommentList(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return ReviewDAO.ReviewCommentList(map);
		
	}
	@Override
	public void ReviewDeleteComment(Map<String, Object> map) throws Exception {
		ReviewDAO.ReviewCommentDelete(map);
		
	}
	
	

		
	
	

}