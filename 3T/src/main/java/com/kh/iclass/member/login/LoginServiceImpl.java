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
		map.put("PASSWORD_CHK1",RSAUtil.decrypt(privateKey, map.get("PASSWD2").toString()));
		map.put("PASSWORD_CHK2",SHA256Util.hashing(map.get("PASSWORD_CHK1").toString()));
		return loginDAO.selectId2(map);
	}
	
	//아이디 찾기
	public String findId(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return loginDAO.findId(map);
	}
	//
	public void findPasswd(Map<String, Object> map, Key privateKey) throws Exception 
	{
		map.put("PASSWORD_CHK1",RSAUtil.decrypt(privateKey, map.get("PASSWD2").toString()));
		map.put("PASSWORD_CHK2",SHA256Util.hashing(map.get("PASSWORD_CHK1").toString()));
		
		loginDAO.findPasswd(map);
	}
	
	// 자동로그인 체크한 경우에 사용자 테이블에 세션과 유효시간을 저장하기 위한 메서드
	@Override
    public void keepLogin(Map<String, Object> map) throws Exception
	{
		loginDAO.keepLogin(map);
    }
	
	// 이전에 로그인한 적이 있는지, 즉 유효시간이 넘지 않은 세션을 가지고 있는지 체크한다.
    @Override
    public Map<String, Object> checkUserWithSessionKey(String SESSIONKEY) {
        return loginDAO.checkUserWithSessionKey(SESSIONKEY);

    }

	
	
}
