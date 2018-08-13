package com.kh.iclass.admin.member;

import java.util.List;
import java.util.Map;

public interface AdminMemberService {

	// 회원 전체목록 불러오기
	public List<Map<String, Object>> memberList() throws Exception;
	
	// 회원 상세정보
	public Map<String, Object> memberDetail(Map<String, Object> map) throws Exception;
	
	// 회원 정보 수정
	public void modifyMember(Map<String, Object> map) throws Exception;
	
	// 회원강제 탈퇴
	public void deleteMember(Map<String, Object> map) throws Exception;
	
}