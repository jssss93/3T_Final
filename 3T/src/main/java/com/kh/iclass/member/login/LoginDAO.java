package com.kh.iclass.member.login;

import java.util.Map;

import org.springframework.stereotype.Repository;

import com.kh.iclass.common.dao.AbstractDAO;;

@Repository("loginDAO")
public class LoginDAO extends AbstractDAO{
	
	//로그인 정보 불러오기
	@SuppressWarnings("unchecked")
	public Map<String,Object> selectId(Map<String, Object> map) throws Exception{
		return (Map<String, Object>)selectOne("member.memberInfo", map);
	}
	//아이디 찾기
		public String findId(Map<String, Object> map) throws Exception
		{
			return (String)selectOne("member.findId", map);
		}
		//비밀번호 찾기
		public String findPasswd(Map<String, Object> map) throws Exception
		{
			return (String)selectOne("member.findPasswd", map);
		}
		
		public void keepLogin(Map<String, Object> map) throws Exception
		{
		
			update("member.keepLogin",map);
		}
		
		public Map<String,Object> checkUserWithSessionKey(String SESSIONKEY)
		{
			return (Map<String, Object>)selectOne("member.checkUserWithSessionKey", SESSIONKEY);
		}
}
