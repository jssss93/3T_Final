package com.kh.iclass.admin.member;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

@Service("adminMemberService")
public class AdminMemberServiceImpl implements AdminMemberService {

	@Resource(name = "adminMemberDAO")
	private AdminMemberDAO adminMemberDAO;

	//맴버수
	public Map<String, Object> memberAll() throws Exception {
		return adminMemberDAO.memberAll();
	}
	// 회원 전체목록 불러오기
	@Override
	public Map<String, Object> memberList(Map<String, Object> map) throws Exception {
		return adminMemberDAO.memberList(map);
	}
	
	@Override
	public Map<String, Object> memberSearchList(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return adminMemberDAO.memberSearchList(map);
	}
	
	
	// 회원 상세정보
	@Override
	public Map<String, Object> memberDetail(Map<String, Object> map) throws Exception {
		return adminMemberDAO.memberDetail(map);
	}
	
	// 회원 정보 수정
	@Override
	public void updateMember(Map<String, Object> map, HttpServletRequest request) throws Exception 
	{
		adminMemberDAO.updateMember(map);
	
	}
	
	// 회원강제 탈퇴
	@Override
	public void deleteMember(Map<String, Object> map) throws Exception {
		adminMemberDAO.deleteMember(map);
	}
	//쿠폰주기
	@Override
	public void insertCoupon(Map<String, Object> map, HttpServletRequest request) throws Exception {
		adminMemberDAO.insertCoupon(map);
	
	}
	
}