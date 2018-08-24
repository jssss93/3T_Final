package com.kh.iclass.member;


import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.kh.iclass.common.dao.AbstractDAO;


@Repository("memberDAO")
public class MemberDAO extends AbstractDAO {
		
	private static final int Map = 0;

	//회원 정보 불러오기
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> memberInfo(Map<String, Object> map) throws Exception
	{
		return selectList("member.memberInfo", map);
	}

	//회원수정
	public void updateMember(Map<String, Object> map) throws Exception
	{
		insert("member.updateMember", map);
	}
	
	//myboard 내가쓴 qna 글가져오기
	@SuppressWarnings("unchecked")
    public List<Map<String, Object>> myBoardQna(Map<String, Object> map) throws Exception
	{
        return (List<Map<String, Object>>)selectList("member.myBoardQna", map);
    }
	
	//myboard 내가쓴 Review 글가져오기
	@SuppressWarnings("unchecked")
    public List<Map<String, Object>> myBoardReview(Map<String, Object> map) throws Exception
	{
        return (List<Map<String, Object>>)selectList("member.myBoardReview", map);
    }

	
	

	
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> myCoupon(Map<String, Object> map) throws Exception
	{
		return (List<Map<String, Object>>)selectList("member.myCoupon", map);
	}
	
	
	public void insertMessage(Map<String, Object> map) throws Exception{
		insert("member.insertMessage", map);
	}

	
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> myMessage(Map<String, Object> map) throws Exception
	{
		return (List<Map<String, Object>>)selectList("member.myMessage", map);
	}

	/*public List<Map<String, Object>> state(Map<String, Object> map) throws Exception
	{
		return (List<Map<String, Object>>)selectList("member.state", map);
	}*/
	
	@SuppressWarnings("unchecked")
	public Map<String,Object> state(Map<String,Object> map) throws Exception
	{
		return (Map<String,Object>) selectOne("member.state", map);
	}
	
	@SuppressWarnings("unchecked")
	public Map<String,Object> orderAll(Map<String,Object> map) throws Exception
	{
		return (Map<String,Object>) selectOne("member.orderAll", map);
	}
	
	@SuppressWarnings("unchecked")
	public Map<String,Object> messageAll(Map<String,Object> map) throws Exception
	{
		return (Map<String,Object>) selectOne("member.messageAll", map);
	}
	
/*	public int checkId(String mem_id) throws Exception{
		return (int)selectOne("member.checkId", mem_id);
	}*/
	
	/*public int checkMember(Map<String, Object> map) throws Exception{
		return selectMemberId("member.checkMember", map);
	*/
	
	/*//회원가입시 적립금 부여
	public void joinPoint(Map<String, Object> map) throws Exception{
		insert("member.joinPoint",map);
	}*/
	
}
