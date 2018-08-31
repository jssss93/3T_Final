package com.kh.iclass.member.join;


import java.security.Key;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

public interface JoinService {

	// 회원가입 폼으로 이동
	// 회원가입시, ID중복체크 폼으로 이동

	// 회원정보를 DB에 등록(회원가입)
	void insertMember(Map<String, Object> map, HttpServletRequest request) throws Exception;
	public int insertMember2(Map<String, Object> map,Key privateKey) throws Exception;
	// 회원비밀번호 확인하고 회원정보를 DB에서 OFF로 수정(회원탈퇴)
	
	// 이메일인증시, ID중복체크
	int checkMember(Map<String, Object> map) throws Exception;
	
	//회원가입 id중복체크
	int chekcId(String mem_id) throws Exception;
	
/*	//회원가입시 적립금 부여
	public void joinPoint(Map<String, Object> map) throws Exception;*/
}