package com.kh.iclass.member.login;

import java.security.Key;
import java.util.Map;

public interface LoginService {
	
	// 로그인 하기
	Map<String, Object> loginGo(Map<String, Object> map) throws Exception;
	//아이디찾기
	String findId(Map<String, Object> map) throws Exception;
	//비밀번호 찾기
	void findPasswd(Map<String, Object> map, Key privateKey) throws Exception;
	
	// 자동로그인 체크한 경우에 사용자 테이블에 세션과 유효시간을 저장하기 위한 메서드
    void keepLogin(Map<String, Object> map) throws Exception; 
    
    // 이전에 로그인한 적이 있는지, 즉 유효시간이 넘지 않은 세션을 가지고 있는지 체크한다.
    public Map<String, Object> checkUserWithSessionKey(String SESSIONKEY);
	Map<String, Object> loginGo2(Map<String, Object> map, Key attribute) throws Exception;
    
}
