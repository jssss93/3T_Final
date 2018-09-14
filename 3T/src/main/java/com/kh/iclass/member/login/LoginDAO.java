package com.kh.iclass.member.login;

import java.util.Map;

import org.springframework.stereotype.Repository;

import com.kh.iclass.common.dao.AbstractDAO;;

@Repository("loginDAO")
public class LoginDAO extends AbstractDAO {

	// 로그인 정보 불러오기
	@SuppressWarnings("unchecked")
	public Map<String, Object> selectId(Map<String, Object> map) throws Exception {
		return (Map<String, Object>) selectOne("member.memberInfo", map);
	}
	public Map<String, Object> selectId2(Map<String, Object> map) {
		return (Map<String, Object>) selectOne("member.memberInfo2", map);
	}

	// 아이디 찾기
	public String findId(Map<String, Object> map) throws Exception {
		return (String) selectOne("member.findId", map);
	}
	//비밀번호 찾기변경
	public void findPasswd(Map<String, Object> map) throws Exception
	{
		update("member.findPasswd", map);
	}

	// 자동로그인 체크한 경우에 사용자 테이블에 세션과 유효시간을 저장
	public void keepLogin(Map<String, Object> map) throws Exception {

		update("member.keepLogin", map);
	}
	// 이전에 로그인한 적이 있는지, 즉 유효시간이 넘지 않은 세션을 가지고 있는지 체크한다.
	public Map<String, Object> checkUserWithSessionKey(String SESSIONKEY) {
		return (Map<String, Object>) selectOne("member.checkUserWithSessionKey", SESSIONKEY);
	}

	
}
