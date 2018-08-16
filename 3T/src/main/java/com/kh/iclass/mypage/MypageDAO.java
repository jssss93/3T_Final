package com.kh.iclass.mypage;


import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.kh.iclass.common.dao.AbstractDAO;


@Repository("mypageDAO")
public class MypageDAO extends AbstractDAO {
		
	//로그인 정보 불러오기
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> mypageInfo(Map<String, Object> map) throws Exception
	{
		return selectList("mypage.mypageInfo", map);
	}

	//회원수정
	public void updateMember(Map<String, Object> map) throws Exception
	{
		insert("mypage.updateMember", map);
	}
	
	//myboard 내가쓴 qna 글가져오기
	@SuppressWarnings("unchecked")
    public List<Map<String, Object>> myBoardQna(Map<String, Object> map) throws Exception
	{
        return (List<Map<String, Object>>)selectList("mypage.myBoardQna", map);
    }
	
	//myboard 내가쓴 Review 글가져오기
	@SuppressWarnings("unchecked")
    public List<Map<String, Object>> myBoardReview(Map<String, Object> map) throws Exception
	{
        return (List<Map<String, Object>>)selectList("mypage.myBoardReview", map);
    }

	
	
	public void insertCoupon(Map<String, Object> map) throws Exception{
		insert("mypage.insertCoupon", map);
	}

	
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> myCoupon(Map<String, Object> map) throws Exception
	{
		return (List<Map<String, Object>>)selectList("mypage.myCoupon", map);
	}
	
	
	public void insertMessage(Map<String, Object> map) throws Exception{
		insert("mypage.insertMessage", map);
	}

	
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> myMessage(Map<String, Object> map) throws Exception
	{
		return (List<Map<String, Object>>)selectList("mypage.myMessage", map);
	}

	
	
/*	public int checkId(String mem_id) throws Exception{
		return (int)selectOne("member.checkId", mem_id);
	}*/
	
	/*public int checkMember(Map<String, Object> map) throws Exception{
		return selectMemberId("member.checkMember", map);
	*/
	
	/*//회원가입시 적립금 부여
	public void joinPoint(Map<String, Object> map) throws Exception{
		insert("member.joinPoint",map);
	}*/
	
}
