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

    public List<Map<String, Object>> memberInfoList(Map<String, Object> map) throws Exception 
	{
		return memberDAO.memberInfoList(map);
	}

	public Map<String, Object> memberInfo(String id) throws Exception {
		return memberDAO.memberInfo(id);
	}
	
	//회원삭제
	@Override
    public void deleteMember(Map<String, Object> map) throws Exception {
       memberDAO.deleteMember(map);
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
	
	//주문수, 교환수, 환불수, 총주문수, 메세지수 가져오기
	public Map<String, Object> order(Map<String, Object> map) throws Exception {
		return memberDAO.order(map);
	}
	public Map<String, Object> swap(Map<String, Object> map) throws Exception {
		return memberDAO.swap(map);
	}
	public Map<String, Object> refund(Map<String, Object> map) throws Exception {
		return memberDAO.refund(map);
	}
	public Map<String, Object> orderAll(Map<String, Object> map) throws Exception {
		return memberDAO.orderAll(map);
	}
	public Map<String, Object> messageAll(Map<String, Object> map) throws Exception {
		return memberDAO.messageAll(map);
	}

	//쿠폰수
	public Map<String, Object> couponAll(Map<String, Object> map) throws Exception {
		return memberDAO.couponAll(map);
	}
	//확인하지 않은 쿠폰수
	public Map<String, Object> noReadCoupon(Map<String, Object> map) throws Exception {
		return memberDAO.noReadCoupon(map);
	}	
	public List<Map<String, Object>> myCoupon(Map<String, Object> map) throws Exception 
	{
		// TODO Auto-generated method stub
		return memberDAO.myCoupon(map);
	}
	//쿠폰확인
	@Override
	public void readCoupon(Map<String, Object> map, HttpServletRequest request) throws Exception {
		memberDAO.readCoupon(map);
	
	}	

	//메세지 확인
	@Override
	public void readMessage(Map<String, Object> map, HttpServletRequest request) throws Exception {
		memberDAO.readMessage(map);
	
	}	
	
	//확인하지 않은 메세지 수
	public Map<String, Object> noReadMessage(Map<String, Object> map) throws Exception {
		return memberDAO.noReadMessage(map);
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