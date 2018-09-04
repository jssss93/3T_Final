package com.kh.iclass.member.join;


import java.util.Map;

import org.springframework.stereotype.Repository;

import com.kh.iclass.common.dao.AbstractDAO;


@Repository("joinDAO")
public class JoinDAO extends AbstractDAO {
	
	

	//회원가입
	public void insertMember(Map<String, Object> map) throws Exception{
		insert("member.insertMember", map);
	}
	public int insertMember2(Map<String, Object> map) throws Exception{
		return (int) insert("member.insertMember2", map);
	}

	public int checkId(String MEMBER_ID) throws Exception{
		return (int)selectOne("member.checkId", MEMBER_ID);
	}
	
	public int checkMember(Map<String, Object> map) throws Exception{
		return selectMemberId("member.checkMember", map);
	}
	/*//회원가입시 적립금 부여
	public void joinPoint(Map<String, Object> map) throws Exception{
		insert("member.joinPoint",map);
	}*/
	
}
