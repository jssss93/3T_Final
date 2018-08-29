package com.kh.iclass.notice.controller;

import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.kh.iclass.common.map.CommandMap;
import com.kh.iclass.notice.service.NoticeService;

import egovframework.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;

@Controller

public class NoticeController {
	Logger log = Logger.getLogger(this.getClass());

	@Resource(name = "noticeService")
	private NoticeService noticeService;

	//공지사항 리스트
	@RequestMapping(value = "/notice/list")
	public ModelAndView noticeList(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("notice/list");
		Map<String, Object> resultMap = null;
		
		if (commandMap.get("SearchKeyword") == null && commandMap.get("SearchNum") == null)
		 resultMap = noticeService.NoticeList(commandMap.getMap());
		else
		 resultMap = noticeService.NoticeSearchList(commandMap.getMap());
		
		mv.addObject("paginationInfo", (PaginationInfo) resultMap.get("paginationInfo"));

		mv.addObject("list", resultMap.get("result"));

		return mv;
	}
	//공지사항 쓰기 폼
	@RequestMapping(value = "/notice/write",  method = RequestMethod.GET)
	public ModelAndView noticeWrtieForm(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("notice/write");

		return mv;
	}
	//공지사항 쓰기 처리
	@RequestMapping(value = "/notice/write2", method = RequestMethod.POST)
	public ModelAndView noticeWrite(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:list");
		
		noticeService.NoticeInsert(commandMap.getMap());

		return mv;
	}
	//공지사항 상세보기
	@RequestMapping(value = "/notice/detail")
	public ModelAndView noticeDetail(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("notice/detail");
		
		noticeService.NoticeReadCntUp(commandMap.getMap());
		
		Map<String, Object> map = noticeService.NoticeDetail(commandMap.getMap());
		mv.addObject("Detail", map);

		return mv;
	}

	//공지사항 수정 폼
	@RequestMapping(value = "/notice/updateForm")
	public ModelAndView noticeUpdateForm(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("notice/update");
		
		Map<String, Object> map = noticeService.NoticeDetail(commandMap.getMap());
		mv.addObject("map", map);

		return mv;
	}

	//공지사항 수정 처리
	@RequestMapping(value = "/notice/update")
	public ModelAndView noticeUpdate(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:detail");
		commandMap.put("NOTICE_NO", commandMap.get("NOTICE_NO"));
		System.out.println(commandMap.getMap());
		noticeService.NoticeUpdate(commandMap.getMap());
		
		mv.addObject("NOTICE_NO", commandMap.get("NOTICE_NO"));
		return mv;
	}
	
	//공지사항 삭제
	@RequestMapping(value = "/notice/delete")
	public ModelAndView noticeDelete(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:list");

		noticeService.NoticeDelete(commandMap.getMap());

		return mv;
	}

}
