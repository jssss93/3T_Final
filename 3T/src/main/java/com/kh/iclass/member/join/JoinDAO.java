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

	public int checkId(String mem_id) throws Exception{
		return (int)selectOne("member.checkId", mem_id);
	}
	
	/*public int checkMember(Map<String, Object> map) throws Exception{
		return selectMemberId("member.checkMember", map);
	*/
	
	/*//회원가입시 적립금 부여
	public void joinPoint(Map<String, Object> map) throws Exception{
		insert("member.joinPoint",map);
	}*/
	
}
