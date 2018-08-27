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
	public List<Map<String, Object>> memberInfoList(Map<String, Object> map) throws Exception
	{
		return selectList("member.memberInfoList", map);
	}
	
	@SuppressWarnings("unchecked")
	 Map<String, Object> memberInfo(String id) throws Exception{
		 return (Map<String, Object>)selectOne("member.memberInfo", id);
	 }
	
	// 회원강제 탈퇴
		public void deleteMember(Map<String, Object> map) throws Exception {
			delete("adminMember.deleteMemberA", map);
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
	
	//mypage 주문수
	@SuppressWarnings("unchecked")
	public Map<String,Object> order(Map<String,Object> map) throws Exception
	{
		return (Map<String,Object>) selectOne("member.order", map);
	}
	//mypage 교환수
	@SuppressWarnings("unchecked")
	public Map<String,Object> swap(Map<String,Object> map) throws Exception
	{
		return (Map<String,Object>) selectOne("member.swap", map);
	}
	//mypage 환불수
	@SuppressWarnings("unchecked")
	public Map<String,Object> refund(Map<String,Object> map) throws Exception
	{
		return (Map<String,Object>) selectOne("member.refund", map);
	}
	//mypage 총주문수
	@SuppressWarnings("unchecked")
	public Map<String,Object> orderAll(Map<String,Object> map) throws Exception
	{
		return (Map<String,Object>) selectOne("member.orderAll", map);
	}
	//mypage 메세지수
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
	
	
}
