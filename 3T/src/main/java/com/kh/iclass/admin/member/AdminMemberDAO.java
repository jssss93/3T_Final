package com.kh.iclass.admin.member;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.kh.iclass.common.dao.AbstractDAO;

@Repository("adminMemberDAO")
public class AdminMemberDAO extends AbstractDAO {
	
	@SuppressWarnings("unchecked")
	public Map<String,Object> memberAll() throws Exception
	{
		return (Map<String,Object>) selectOne("adminMember.memberAll");
	}
	//회원리스트
	@SuppressWarnings("unchecked")
	public Map<String, Object> memberList(Map<String, Object> map) throws Exception{
	    return (Map<String, Object>)selectPagingList("adminMember.selectMemberList", map);
	}
	@SuppressWarnings("unchecked")
	public Map<String, Object> memberSearchList(Map<String, Object> map) throws Exception{
	    return (Map<String, Object>)selectPagingList("adminMember.selectMemberSearchList", map);
	}
	
	// 회원 상세정보
	@SuppressWarnings("unchecked")
	public Map<String, Object> memberDetail(Map<String, Object> map) throws Exception {
		return (Map<String, Object>) selectOne("member.memberInfo", map);
	}
	//회원수정
	public void updateMember(Map<String, Object> map) throws Exception
	{
		update("member.updateMember", map);
	}
	
	// 회원강제 탈퇴
	public void deleteMember(Map<String, Object> map) throws Exception {
		delete("adminMember.deleteMemberA", map);
	}
	//쿠폰주기
	public void insertCoupon(Map<String, Object> map) throws Exception{
		insert("adminMember.insertCoupon", map);
	}
	
	

	
}