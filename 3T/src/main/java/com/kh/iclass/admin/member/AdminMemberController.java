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
import com.kh.iclass.member.MemberService;

import egovframework.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;

@Controller
@RequestMapping("/admin")
public class AdminMemberController {

	@Resource(name = "adminMemberService")
	private AdminMemberService adminMemberService;
	
	@Resource(name = "memberService")
	private MemberService memberService;
	
	// 전체 회원 목록
	@RequestMapping(value = "/member/list")
	public ModelAndView memberList(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("member.list");
		Map<String, Object> memberAll = new HashMap<String, Object>();
		Map<String, Object> resultMap = null;
		
		memberAll = adminMemberService.memberAll();
		
		System.out.println("맴버?" + memberAll);
		
		if (commandMap.get("SearchKeyword") == null && commandMap.get("SearchNum") == null)
		 resultMap = adminMemberService.memberList(commandMap.getMap());
		else
		 resultMap = adminMemberService.memberSearchList(commandMap.getMap());
		
		mv.addObject("paginationInfo", (PaginationInfo) resultMap.get("paginationInfo"));

		mv.addObject("memberList", resultMap.get("result"));
		mv.addObject("memberAll", memberAll);
		
		return mv;
	}


	// 회원 상세정보에서 한번에 수정가능
	@RequestMapping(value = "/member/Detail")
	public ModelAndView adminMemberDetail(CommandMap commandMap, HttpServletRequest request) throws Exception {
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
	
		ModelAndView mv = new ModelAndView();
		Map<String, Object> adminMemberMap = new HashMap<String, Object>();
		commandMap.getMap().put("MEMBER_ID", request.getParameter("MEMBER_ID"));
		adminMemberMap = commandMap.getMap();
		adminMemberMap.put("PASSWD3", commandMap.get("PASSWD"));
		
		
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

		Map<String, Object> resultMap = null;
		resultMap = adminMemberService.memberList(commandMap.getMap());

		mv.addObject("memberList", resultMap.get("result"));
		mv.setViewName("member.list");

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
		
		Map<String, Object> resultMap = null;
		resultMap = adminMemberService.memberList(commandMap.getMap());

		mv.addObject("memberList", resultMap.get("result"));
		
		mv.setViewName("member.list");

		return mv;
	}
	
	// 메세지 삭제
	@RequestMapping(value = "/member/deleteMessage")
	public ModelAndView deleteMessage(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("member.message");
		List<Map<String, Object>> list = null;
		Map<String, Object> messageAll = new HashMap<String, Object>();
		
		memberService.deleteMessage(commandMap.getMap());

		commandMap.put("TOMEMBER", request.getSession().getAttribute("MEMBER_ID"));

		if (commandMap.get("SearchKeyword") == null && commandMap.get("SearchNum") == null)
			list = memberService.myMessage(commandMap.getMap());
			else
				list = memberService.AdminSearchmyMessage(commandMap.getMap());
				
			
			messageAll = memberService.messageAll(commandMap.getMap());
			
			mv.addObject("list", list);
			mv.addObject("messageAll", messageAll);
			return mv;

	}	

	

}