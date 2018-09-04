package com.kh.iclass.member.join;

import java.security.Key;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.kh.iclass.member.util.RSAUtil;
import com.kh.iclass.member.util.SHA256Util;



@Service("joinService")
public class JoinServiceImpl implements JoinService{

    @Resource(name="joinDAO")
	private JoinDAO joinDAO  ;
	
	
	@Override
	public void insertMember(Map<String, Object> map, HttpServletRequest request) throws Exception {
		joinDAO.insertMember(map);
	}
	
	@Override
	public int insertMember2(Map<String, Object> map,Key privateKey) throws Exception {
		//여기서 에러.
		System.out.println("impl 시작.");
		System.out.println(map.get("PASSWD"));
		System.out.println(RSAUtil.decrypt(privateKey, map.get("PASSWD").toString()));
		
		map.put("PASSWD22",(RSAUtil.decrypt(privateKey, map.get("PASSWD").toString())));
		System.out.println("impl 두번째 시작.");
		System.out.println(map.get("PASSWD22"));
		
       /* map.put("PASSWD3",(SHA256Util.hashing(map.get("PASSWD2").toString())));
        System.out.println("impl 세번째 시작.");
		System.out.println(map.get("PASSWD3"));*/
		
		return joinDAO.insertMember2(map);
	}
	
	//Bean 부분을 commandMap으로 바꿔주고. 
	/*@Override
	public int regist(Member member, Key privateKey) throws Exception {
		member.setPassword(RSAUtil.decrypte(privateKey, member.getPassword()));
        member.setPassword(SHA256Util.hashing(member.getPassword()));
		
		return memberDao.regist(member);
	}*/

	/*@Override
	public int checkMember(Map<String, Object> map) throws Exception {
		return joinDAO.checkMember(map);
		
	}*/
	
	@Override
	public int checkMember(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return joinDAO.checkMember(map);
	}
	
	@Override
	public int chekcId(String MEMBER_ID) throws Exception {
		// TODO Auto-generated method stub
		return joinDAO.checkId(MEMBER_ID);
	}
	
/*	//회원가입시 적립금 부여
	@Override
	public void joinPoint(Map<String, Object> map) throws Exception{
		joinDAO.joinPoint(map);
	}*/

	
}