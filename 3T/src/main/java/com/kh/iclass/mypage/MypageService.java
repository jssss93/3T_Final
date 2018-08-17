package com.kh.iclass.mypage;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

public interface MypageService 
{	
	//회원정보가저오기
	public List<Map<String, Object>> mypageInfo(Map<String, Object> map) throws Exception;

	
	// 회원정보수정
	void updateMember(Map<String, Object> map, HttpServletRequest request) throws Exception;
	
	//myBoardQnaList
	List<Map<String, Object>> myBoardQna(Map<String, Object> map) throws Exception;
	
	List<Map<String, Object>> myBoardReview(Map<String, Object> map) throws Exception;
	
	
	//coupong
	void insertCoupon(Map<String, Object> map, HttpServletRequest request) throws Exception;
	
	List<Map<String, Object>> myCoupon(Map<String, Object> map) throws Exception;
	
	
	//message
	void insertMessage(Map<String, Object> map, HttpServletRequest request) throws Exception;
	
	List<Map<String, Object>> myMessage(Map<String, Object> map) throws Exception;
	
	/*
	// 회원 정보 수정
		public void modifyMember(Map<String, Object> map) throws Exception;*/
		
	/*// 이메일인증시, ID중복체크
	int checkMember(Map<String, Object> map) throws Exception;
	
	//회원가입 id중복체크
	int chekcId(String mem_id) throws Exception;*/
}
