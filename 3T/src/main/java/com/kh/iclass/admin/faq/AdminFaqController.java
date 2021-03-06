package com.kh.iclass.admin.faq;


import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.kh.iclass.common.map.CommandMap;
import com.kh.iclass.faq.FaqService;

import egovframework.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;

@Controller
@RequestMapping(value = "/admin")
public class AdminFaqController {
	Logger log = Logger.getLogger(this.getClass());

	@Resource(name = "faqService")
	private FaqService faqService;

	@RequestMapping(value = "/faq/list")
	public ModelAndView faqList(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("faq.list");
		Map<String, Object> resultMap = null;
		
		if (commandMap.get("SearchKeyword") == null && commandMap.get("SearchNum") == null)
			resultMap = faqService.FaqList(commandMap.getMap());
		else
			resultMap = faqService.FaqSearchList(commandMap.getMap());

		mv.addObject("paginationInfo", (PaginationInfo) resultMap.get("paginationInfo"));
		mv.addObject("list", resultMap.get("result"));

		return mv;
	}

	@RequestMapping(value = "/faq/write", method = RequestMethod.GET)
	public ModelAndView faqWrtieForm(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("faq.write");

		return mv;
	}

	@RequestMapping(value = "/faq/write", method = RequestMethod.POST)
	public ModelAndView faqWrite(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:list");
		
		System.out.println(commandMap.getMap());
		
		faqService.FaqInsert(commandMap.getMap());

		return mv;
	}

	@RequestMapping(value = "/faq/updateForm")
	public ModelAndView faqUpdateForm(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("faq.write");
		
		Map<String, Object> map = faqService.FaqDetail(commandMap.getMap());
		mv.addObject("map", map);

		return mv;
	}

	
	@RequestMapping(value = "/faq/update")
	public ModelAndView faqUpdate(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:/admin/faq/list");

		faqService.FaqUpdate(commandMap.getMap());

		mv.addObject("FAQ_NO", commandMap.get("FAQ_NO"));
		return mv;
	}
	
	
	@RequestMapping(value = "/faq/delete")
	public ModelAndView faqDelete(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:list");

		faqService.FaqDelete(commandMap.getMap());

		return mv;
	}
}
