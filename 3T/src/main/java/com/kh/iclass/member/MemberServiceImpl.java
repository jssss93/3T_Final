package com.kh.iclass.member;

import java.security.Key;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.kh.iclass.common.util.RSAUtil;
import com.kh.iclass.common.util.SHA256Util;

@Service("memberService")
public class MemberServiceImpl implements MemberService{

    @Resource(name="memberDAO")
	private MemberDAO memberDAO  ;

	public int checkPass(Map<String, Object> map, Key privateKey) throws Exception {
		
		map.put("PASSWD22",(RSAUtil.decrypt(privateKey, map.get("NowPASSWD").toString())));			
        map.put("PASSWD3",(SHA256Util.hashing(map.get("PASSWD22").toString())));
      
		return memberDAO.checkPass(map);
		
	}
	
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
			//for문으로 state값 0부터 9까지 꺼냄
			map.put("STATE", i);
			stateList.add(memberDAO.state(map));
			
		}
	
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
	//쿠폰정보리스트
	public List<Map<String, Object>> myCoupon(Map<String, Object> map) throws Exception 
	{
		// TODO Auto-generated method stub
		return memberDAO.myCoupon(map);
	}
	//쿠폰정보
	public Map<String, Object> coupon(Map<String, Object> map) throws Exception 
	{
		// TODO Auto-generated method stub
		return memberDAO.coupon(map);
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

	// 메세지 삭제
	@Override
	public void deleteMessage(Map<String, Object> map) throws Exception {
		memberDAO.deleteMessage(map);
	}
	//관리자 메세지 검색 리스트
	@Override
	public List<Map<String, Object>> AdminSearchmyMessage(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return memberDAO.AdminSearchmyMessage(map);
	}

	@Override
	public void onAuthenticationBinding(Map<String, Object> map) throws NullPointerException {
		/*memberVO.setUsername(facebookUser.getId());
		memberVO.setEmail(facebookUser.getEmail());
		memberVO.setFirst_name(facebookUser.getFirstName());
		memberVO.setKr_name(facebookUser.getName());
		memberVO.setLast_name(facebookUser.getLastName());
		memberVO.setAuthorities(ROLE.DEFAULT.getRoleList());
		memberVO.setAccountNonExpired(true);
		memberVO.setAccountNonLocked(true);
		memberVO.setCredentialsNonExpired(true);
		memberVO.setEnabled(true);*/

		// Token 생성하고 로그인 세션 생성
		/*UsernamePasswordAuthenticationToken authenticationToken = new UsernamePasswordAuthenticationToken(
				memberVO, null, ROLE.DEFAULT.getRoleList()
		);
		SecurityContextHolder.getContext().setAuthentication(authenticationToken);*/
		
	}


	
}