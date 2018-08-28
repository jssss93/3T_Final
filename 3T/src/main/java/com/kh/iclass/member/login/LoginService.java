package com.kh.iclass.member.login;

import java.util.Map;

public interface LoginService {
	
	// 로그인 하기
	Map<String, Object> loginGo(Map<String, Object> map) throws Exception;
	//아이디찾기
	String findId(Map<String, Object> map) throws Exception;
	//비밀번호 찾기
	String findPasswd(Map<String, Object> map) throws Exception;
}
