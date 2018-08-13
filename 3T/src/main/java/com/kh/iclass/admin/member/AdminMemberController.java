package com.kh.iclass.admin.member;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
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
	public ModelAndView adminMemberDetail(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView();

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

}