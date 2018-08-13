package com.kh.iclass.admin.member;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.kh.iclass.common.dao.AbstractDAO;

@Repository("adminMemberDAO")
public class AdminMemberDAO extends AbstractDAO {
	
	// 회원 전체목록 불러오기
	/*@SuppressWarnings("unchecked")
	public List<Map<String, Object>> memberList() throws Exception {
		return (List<Map<String, Object>>) selectList("adminMember.selectMemberList");
	}*/
	
	// 회원 상세정보
	@SuppressWarnings("unchecked")
	public Map<String, Object> memberDetail(Map<String, Object> map) throws Exception {
		return (Map<String, Object>) selectOne("adminMember.selectMemberDetail", map);
	}
	
	// 회원 정보 수정
	public void modifyMember(Map<String, Object> map) throws Exception {
		update("adminMember.updateMember", map);
	}
	
	// 회원강제 탈퇴
	public void deleteMember(Map<String, Object> map) throws Exception {
		delete("adminMember.deleteMember", map);
	}

	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> memberList() {
		return (List<Map<String, Object>>) selectList("adminMember.selectMemberList");
	}
	
}