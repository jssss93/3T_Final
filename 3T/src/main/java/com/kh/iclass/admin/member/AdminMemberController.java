package com.kh.iclass.admin.member;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.kh.iclass.common.map.CommandMap;

@Controller
@RequestMapping("/admin")
public class AdminMemberController {

	@Resource(name = "adminMemberService")
	private AdminMemberService adminMemberService;
	

	// 전체 회원 목록
	@RequestMapping(value = "/member/list")
	public ModelAndView adminMemberList(CommandMap commandMap, HttpServletRequest request) throws Exception {

		ModelAndView mv = new ModelAndView();

		List<Map<String, Object>> memberList = adminMemberService.memberList();

		mv.addObject("memberList", memberList);
		mv.setViewName("member.list");

		return mv;

	}

	// 회원 상세정보에서 한번에 수정가능
	@RequestMapping(value = "/member/Detail")
	public ModelAndView adminMemberDetail(CommandMap commandMap,  HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView();
		commandMap.put("MEMBER_ID", request.getParameter("MEMBER_ID"));
		Map<String, Object> memberDetail = adminMemberService.memberDetail(commandMap.getMap());

		mv.addObject("memberDetail", memberDetail);
		mv.setViewName("member.detail");

		return mv;
	}
	
	//회원 정보 수정
	@RequestMapping(value="/member/Update", method=RequestMethod.POST)
	public ModelAndView joinComplete(CommandMap commandMap, HttpServletRequest request) throws Exception{
		System.out.println("아이디"+commandMap.get("MEMBER_ID"));
		System.out.println("주소1"+commandMap.get("ADDR1"));
		System.out.println("주소2"+commandMap.get("ADDR2"));
		System.out.println("폰번호"+commandMap.get("PHONE"));
		System.out.println("비밀번호"+commandMap.get("PASSWD"));
		ModelAndView mv = new ModelAndView();
		Map<String, Object> adminMemberMap = new HashMap<String, Object>();
		commandMap.getMap().put("MEMBER_ID", request.getParameter("MEMBER_ID"));
		adminMemberMap = commandMap.getMap();
		
		
		adminMemberService.updateMember(adminMemberMap, request);

		Map<String, Object> memberDetail = adminMemberService.memberDetail(commandMap.getMap());

		mv.addObject("memberDetail", memberDetail);
		mv.setViewName("member.detail");
		
		return mv;
		
	}

	// 회원 강제 삭제
	@RequestMapping(value = "/member/adminDeleteMember")
	public ModelAndView adminDeleteMember(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView();

		adminMemberService.deleteMember(commandMap.getMap());
		mv.setViewName("redirect:/member/adminMemberList");

		return mv;
	}
	//쿠폰주기
	@RequestMapping(value="/GiftCoupon")
	public ModelAndView GiftCoupon(CommandMap commandMap, HttpServletRequest request) throws Exception
	{
		ModelAndView mv = new ModelAndView();
		Map<String, Object> couponMap=new HashMap<String, Object>();
		commandMap.put("MEMBER_ID", request.getParameter("MEMBER_ID"));
		
		
		couponMap = commandMap.getMap();
		System.out.println(commandMap.getMap());
		adminMemberService.insertCoupon(couponMap, request);
		
		List<Map<String, Object>> memberList = adminMemberService.memberList();

		mv.addObject("memberList", memberList);
		
		mv.setViewName("member.list");

		return mv;
	}
	
	

}