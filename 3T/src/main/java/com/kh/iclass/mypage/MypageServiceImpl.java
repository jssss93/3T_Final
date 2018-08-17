package com.kh.iclass.mypage;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

@Service("mypageService")
public class MypageServiceImpl implements MypageService{

    @Resource(name="mypageDAO")
	private MypageDAO mypageDAO  ;
	
	@Override
	public List<Map<String, Object>> mypageInfo(Map<String, Object> map) throws Exception 
	{
		return mypageDAO.mypageInfo(map);
	}
	
	@Override
	public void updateMember(Map<String, Object> map, HttpServletRequest request) throws Exception {
		mypageDAO.updateMember(map);
	
	}
	
	public List<Map<String, Object>> myBoardQna(Map<String, Object> map) throws Exception 
	{
		// TODO Auto-generated method stub
		return mypageDAO.myBoardQna(map);
	}
	
	public List<Map<String, Object>> myBoardReview(Map<String, Object> map) throws Exception 
	{
		// TODO Auto-generated method stub
		return mypageDAO.myBoardReview(map);
	}
	
	@Override
	public void insertCoupon(Map<String, Object> map, HttpServletRequest request) throws Exception {
		mypageDAO.insertCoupon(map);
	
	}
	
	public List<Map<String, Object>> myCoupon(Map<String, Object> map) throws Exception 
	{
		// TODO Auto-generated method stub
		return mypageDAO.myCoupon(map);
	}
	
	
	@Override
	public void insertMessage(Map<String, Object> map, HttpServletRequest request) throws Exception {
		mypageDAO.insertMessage(map);
	
	}
	
	public List<Map<String, Object>> myMessage(Map<String, Object> map) throws Exception 
	{
		// TODO Auto-generated method stub
		return mypageDAO.myMessage(map);
	}
	
/*	// 회원 정보 수정
		@Override
		public void modifyMember(Map<String, Object> map) throws Exception {
			adminMemberDAO.modifyMember(map);
		}*/

	/*@Override
	public int checkMember(Map<String, Object> map) throws Exception {
		return joinDAO.checkMember(map);
		
	}*/
	
	/*@Override
	public int checkMember(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}
	
	@Override
	public int chekcId(String mem_id) throws Exception {
		// TODO Auto-generated method stub
		return joinDAO.checkId(mem_id);
	} */
	
/*	//회원가입시 적립금 부여
	@Override
	public void joinPoint(Map<String, Object> map) throws Exception{
		joinDAO.joinPoint(map);
	}*/

	
}