package com.kh.iclass.member.login;

import java.security.Key;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.kh.iclass.common.map.CommandMap;
import com.kh.iclass.common.util.RSAUtil;
import com.kh.iclass.common.util.SHA256Util;

@Service("loginService")
public class LoginServiceImpl implements LoginService{

	@Resource(name="loginDAO")
	private LoginDAO loginDAO;
	
	@Override
	public Map<String, Object> loginGo(Map<String, Object> map) throws Exception {
		return loginDAO.selectId(map);
	}
	
	@Override
	public Map<String, Object> loginGo2(Map<String, Object> map, Key privateKey) throws Exception {
		System.out.println("impl넘어오는값:");
		System.out.println("PASSWD2:");
		System.out.println(map.get("PASSWD2").toString());
		System.out.println("********");
		map.put("PASSWORD_CHK1",RSAUtil.decrypt(privateKey, map.get("PASSWD2").toString()));
		map.put("PASSWORD_CHK2",SHA256Util.hashing(map.get("PASSWORD_CHK1").toString()));
		return loginDAO.selectId2(map);
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
	
	@Override
    public void keepLogin(Map<String, Object> map) throws Exception
	{
		loginDAO.keepLogin(map);
    }
	
    @Override
    public Map<String, Object> checkUserWithSessionKey(String SESSIONKEY) {
        return loginDAO.checkUserWithSessionKey(SESSIONKEY);

    }

	
	
}
