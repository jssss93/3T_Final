package com.kh.iclass.member.join;

import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

@Service("joinService")
public class JoinServiceImpl implements JoinService{

    @Resource(name="joinDAO")
	private JoinDAO joinDAO  ;
	
	
	@Override
	public void insertMember(Map<String, Object> map, HttpServletRequest request) throws Exception {
		joinDAO.insertMember(map);
	
	}

	/*@Override
	public int checkMember(Map<String, Object> map) throws Exception {
		return joinDAO.checkMember(map);
		
	}*/
	
	@Override
	public int checkMember(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}
	
	@Override
	public int chekcId(String mem_id) throws Exception {
		// TODO Auto-generated method stub
		return joinDAO.checkId(mem_id);
	}
	
	//회원가입시 적립금 부여
	@Override
	public void joinPoint(Map<String, Object> map) throws Exception{
		joinDAO.joinPoint(map);
	}

	
}