package com.kh.iclass.member;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

@Service("memberService")
public class MemberServiceImpl implements MemberService{

    @Resource(name="memberDAO")
	private MemberDAO memberDAO  ;
	

    
	@Override
	public List<Map<String, Object>> mypageInfo(Map<String, Object> map) throws Exception 
	{
		return memberDAO.memberInfo(map);
	}
	
	@Override
	public void updateMember(Map<String, Object> map, HttpServletRequest request) throws Exception {
		memberDAO.updateMember(map);
	
	}
	
	public List<Map<String, Object>> myBoardQna(Map<String, Object> map) throws Exception 
	{
		// TODO Auto-generated method stub
		return memberDAO.myBoardQna(map);
	}
	
	public List<Map<String, Object>> myBoardReview(Map<String, Object> map) throws Exception 
	{
		// TODO Auto-generated method stub
		return memberDAO.myBoardReview(map);
	}
	

	
	public List<Map<String, Object>> myCoupon(Map<String, Object> map) throws Exception 
	{
		// TODO Auto-generated method stub
		return memberDAO.myCoupon(map);
	}
	
	
	@Override
	public void insertMessage(Map<String, Object> map, HttpServletRequest request) throws Exception {
		memberDAO.insertMessage(map);
	
	}
	
	public List<Map<String, Object>> myMessage(Map<String, Object> map) throws Exception 
	{
		// TODO Auto-generated method stub
		return memberDAO.myMessage(map);
	}
	
	public List<Map<String, Object>> state(Map<String, Object> map) throws Exception 
	{
		List<Map<String, Object>> stateList = new ArrayList<Map<String, Object>>();
		for(int i=0;i<10;i++) {          
			map.put("STATE", i);
			System.out.println(i+"번째map:"+map);
			stateList.add(memberDAO.state(map));
			System.out.println(i+"번째list:"+stateList);
			
		}
		System.out.println("옵니까!?오면 stateList값은?" + stateList);
		return stateList;
	}
	
	public Map<String, Object> orderAll(Map<String, Object> map) throws Exception {
		return memberDAO.orderAll(map);
	}
	public Map<String, Object> messageAll(Map<String, Object> map) throws Exception {
		return memberDAO.messageAll(map);
	}

	

	/*@Override
	public int checkMember(Map<String, Object> map) throws Exception {
		return joinDAO.checkMember(map);
		
	}*/
	
	/*
	
	@Override
	public int chekcId(String mem_id) throws Exception {
		// TODO Auto-generated method stub
		return joinDAO.checkId(mem_id);
	} */
	


	
}