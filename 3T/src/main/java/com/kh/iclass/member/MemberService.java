package com.kh.iclass.member;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

public interface MemberService 
{	
	//회원수정 비밀번호 체크
	String checkPass(String NowPass) throws Exception;
	
	public List<Map<String, Object>> memberInfoList(Map<String, Object> map) throws Exception;
	Map<String, Object> memberInfo(String id) throws Exception;
	
	//회원 탈퇴
	public void deleteMember(Map<String, Object> map) throws Exception;
	
	List<Map<String, Object>> state(Map<String, Object> map) throws Exception;
	
	//주문수, 교환수, 환불수, 총주문수, 메세지수 가져오기
	Map<String, Object> order(Map<String, Object> map) throws Exception;
	Map<String, Object> swap(Map<String, Object> map) throws Exception;
	Map<String, Object> refund(Map<String, Object> map) throws Exception;
	Map<String, Object> orderAll(Map<String, Object> map) throws Exception;
	Map<String, Object> messageAll(Map<String, Object> map) throws Exception;
	
	//쿠폰 수
	Map<String, Object> couponAll(Map<String, Object> map) throws Exception;
	//확인하지 않은 쿠폰 수
	Map<String, Object> noReadCoupon(Map<String, Object> map) throws Exception;
	//내쿠폰정보 가져오기리스트
	List<Map<String, Object>> myCoupon(Map<String, Object> map) throws Exception;
	//내쿠폰정보 가져오기
	Map<String, Object> coupon(Map<String, Object> map) throws Exception;
	// 쿠폰확인
	void readCoupon(Map<String, Object> map, HttpServletRequest request) throws Exception;
	
	// 회원정보수정
	void updateMember(Map<String, Object> map, HttpServletRequest request) throws Exception;
	
	//myBoardQnaList
	List<Map<String, Object>> myBoardQna(Map<String, Object> map) throws Exception;
	//myBoardReviewList
	List<Map<String, Object>> myBoardReview(Map<String, Object> map) throws Exception;
		
	
	//message쓰기
	void insertMessage(Map<String, Object> map, HttpServletRequest request) throws Exception;
	//메세지리스트
	List<Map<String, Object>> myMessage(Map<String, Object> map) throws Exception;
	// 메세지확인
	void readMessage(Map<String, Object> map, HttpServletRequest request) throws Exception;
	//확인하지 않은 메세지 수
	Map<String, Object> noReadMessage(Map<String, Object> map) throws Exception;	
	// 메세지 삭제
	public void deleteMessage(Map<String, Object> map) throws Exception;
	
	/*// 이메일인증시, ID중복체크
	int checkMember(Map<String, Object> map) throws Exception;
	
	//회원가입 id중복체크
	int chekcId(String mem_id) throws Exception;*/
	
	//관리자 메세지 검색 리스트 
	List<Map<String, Object>> AdminSearchmyMessage(Map<String, Object> map) throws Exception;
	
	public void onAuthenticationBinding(Map<String,Object> map) throws NullPointerException;

}