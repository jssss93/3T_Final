package com.kh.iclass.admin.notice;


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
@RequestMapping("/admin")
public class AdminNoticeController {
	Logger log = Logger.getLogger(this.getClass());

	@Resource(name = "noticeService")
	private NoticeService noticeService;

	@RequestMapping("/notice/list")
	public ModelAndView noticeList(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("notice.list");

		Map<String, Object> resultMap = noticeService.NoticeList(commandMap.getMap());

		mv.addObject("paginationInfo", (PaginationInfo) resultMap.get("paginationInfo"));

		mv.addObject("list", resultMap.get("result"));

		return mv;
	}

	@RequestMapping(value = "/notice/write",  method = RequestMethod.GET)
	public ModelAndView noticeWrtieForm(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("notice.write");

		return mv;
	}

	@RequestMapping(value = "/notice/write", method = RequestMethod.POST)
	public ModelAndView noticeWrite(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:list");

		noticeService.NoticeInsert(commandMap.getMap());

		return mv;
	}

	@RequestMapping(value = "/notice/detail")
	public ModelAndView noticeDetail(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("notice/detail");
		
		noticeService.NoticeReadCntUp(commandMap.getMap());
		
		Map<String, Object> map = noticeService.NoticeDetail(commandMap.getMap());
		mv.addObject("Detail", map);

		return mv;
	}

	
	@RequestMapping(value = "/notice/updateForm")
	public ModelAndView noticeUpdateForm(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("notice.write");
		
		Map<String, Object> map = noticeService.NoticeDetail(commandMap.getMap());
		mv.addObject("map", map);

		return mv;
	}

	
	@RequestMapping(value = "/notice/update")
	public ModelAndView noticeUpdate(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:detail");

		noticeService.NoticeUpdate(commandMap.getMap());

		mv.addObject("NOTICE_NO", commandMap.get("NOTICE_NO"));
		return mv;
	}
	
	
	@RequestMapping(value = "/notice/delete")
	public ModelAndView noticeDelete(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:list");

		noticeService.NoticeDelete(commandMap.getMap());

		return mv;
	}

}