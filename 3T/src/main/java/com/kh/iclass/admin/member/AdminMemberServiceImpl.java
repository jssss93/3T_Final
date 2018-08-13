package com.kh.iclass.admin.member;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

@Service("adminMemberService")
public class AdminMemberServiceImpl implements AdminMemberService {

	@Resource(name = "adminMemberDAO")
	private AdminMemberDAO adminMemberDAO;
	
	// 회원 전체목록 불러오기
	@Override
	public List<Map<String, Object>> memberList() throws Exception {
		return adminMemberDAO.memberList();
	}
	
	// 회원 상세정보
	@Override
	public Map<String, Object> memberDetail(Map<String, Object> map) throws Exception {
		return adminMemberDAO.memberDetail(map);
	}
	
	// 회원 정보 수정
	@Override
	public void modifyMember(Map<String, Object> map) throws Exception {
		adminMemberDAO.modifyMember(map);
	}
	
	// 회원강제 탈퇴
	@Override
	public void deleteMember(Map<String, Object> map) throws Exception {
		adminMemberDAO.deleteMember(map);
	}
	
}