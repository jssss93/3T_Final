package com.kh.iclass.member;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

public interface MemberService 
{	
	//회원정보가저오기
	public List<Map<String, Object>> mypageInfo(Map<String, Object> map) throws Exception;

	List<Map<String, Object>> state(Map<String, Object> map) throws Exception;
	
	//총주문수, 메세지수 가져오기
	Map<String, Object> orderAll(Map<String, Object> map) throws Exception;
	Map<String, Object> messageAll(Map<String, Object> map) throws Exception;
	
	// 회원정보수정
	void updateMember(Map<String, Object> map, HttpServletRequest request) throws Exception;
	
	//myBoardQnaList
	List<Map<String, Object>> myBoardQna(Map<String, Object> map) throws Exception;
	//myBoardReviewList
	List<Map<String, Object>> myBoardReview(Map<String, Object> map) throws Exception;
	
	
	//내쿠폰정보 가져오기
	List<Map<String, Object>> myCoupon(Map<String, Object> map) throws Exception;
	
	
	//message쓰기
	void insertMessage(Map<String, Object> map, HttpServletRequest request) throws Exception;
	
	List<Map<String, Object>> myMessage(Map<String, Object> map) throws Exception;
	
		
	/*// 이메일인증시, ID중복체크
	int checkMember(Map<String, Object> map) throws Exception;
	
	//회원가입 id중복체크
	int chekcId(String mem_id) throws Exception;*/
}
