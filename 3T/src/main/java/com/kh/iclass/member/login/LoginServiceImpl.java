package com.kh.iclass.member.login;

import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

@Service("loginService")
public class LoginServiceImpl implements LoginService{

	@Resource(name="loginDAO")
	private LoginDAO loginDAO;
	
	@Override
	public Map<String, Object> loginGo(Map<String, Object> map) throws Exception {
		return loginDAO.selectId(map);
	}
	//아이디 찾기
	public String findId(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return loginDAO.findId(map);
	}
	//비밀번호 찾기
	public String findPasswd(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return loginDAO.findPasswd(map);
	}	
}
