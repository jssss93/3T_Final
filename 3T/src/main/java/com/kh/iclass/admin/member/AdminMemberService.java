package com.kh.iclass.admin.member;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

public interface AdminMemberService {

	// 회원 전체목록 불러오기
	Map<String, Object> memberList(Map<String, Object> map) throws Exception;
	Map<String, Object> memberSearchList(Map<String, Object> map) throws Exception;
	
	// 회원 상세정보
	public Map<String, Object> memberDetail(Map<String, Object> map) throws Exception;
	
	// 회원정보수정
	public void updateMember(Map<String, Object> map, HttpServletRequest request) throws Exception;
		
	// 회원강제 탈퇴
	public void deleteMember(Map<String, Object> map) throws Exception;

	//쿠폰주기
	void insertCoupon(Map<String, Object> map, HttpServletRequest request) throws Exception;
}