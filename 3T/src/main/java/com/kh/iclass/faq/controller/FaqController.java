package com.kh.iclass.faq.controller;

import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.kh.iclass.common.map.CommandMap;
import com.kh.iclass.faq.service.FaqService;

import egovframework.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;


@Controller

public class FaqController {
	Logger log = Logger.getLogger(this.getClass());

	@Resource(name = "faqService")
	private FaqService faqService;
	
	//faq 리스트
	@RequestMapping(value = "/faq/list")
	public ModelAndView faqList(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("faq/list");
		
		Map<String, Object> resultMap = null;
		//검색정보가 들어왔을때 리스트와 안들어왔을 때 리스트
		if (commandMap.get("SearchKeyword") == null && commandMap.get("SearchNum") == null)
			resultMap = faqService.FaqList(commandMap.getMap());
		else
			resultMap = faqService.FaqSearchList(commandMap.getMap());

		mv.addObject("paginationInfo", (PaginationInfo) resultMap.get("paginationInfo"));
		mv.addObject("list", resultMap.get("result"));

		return mv;
	}
	//faq 쓰기 폼
	@RequestMapping(value = "/faq/write", method = RequestMethod.GET)
	public ModelAndView faqWrtieForm(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("faq/write");

		return mv;
	}
	//faq 쓰기
	@RequestMapping(value = "/faq/write", method = RequestMethod.POST)
	public ModelAndView faqWrite(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:list");
		
		faqService.FaqInsert(commandMap.getMap());

		return mv;
	}
	
	//faq 상세보기
	@RequestMapping(value = "/faq/detail")
	public ModelAndView faqDetail(CommandMap commandMap,HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("faq/detail");
		
		/*faqService.FaqReadCntUp(commandMap.getMap());*/
		
		Map<String, Object> map = faqService.FaqDetail(commandMap.getMap());
		mv.addObject("Detail", map);
		mv.addObject("MEMBER_ID",request.getSession().getAttribute("MEMBER_ID").toString());
		
		return mv;
	}

	//faq 수정 폼
	@RequestMapping(value = "/faq/updateForm")
	public ModelAndView faqUpdateForm(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("faq/update");
		
		Map<String, Object> map = faqService.FaqDetail(commandMap.getMap());
		mv.addObject("map", map);

		return mv;
	}

	//faq 수정
	@RequestMapping(value = "/faq/update")
	public ModelAndView faqUpdate(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:detail");

		faqService.FaqUpdate(commandMap.getMap());

		mv.addObject("FAQ_NO", commandMap.get("FAQ_NO"));
		return mv;
	}
	
	//faq 삭제
	@RequestMapping(value = "/faq/delete")
	public ModelAndView faqDelete(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:list");

		faqService.FaqDelete(commandMap.getMap());

		return mv;
	}

}
