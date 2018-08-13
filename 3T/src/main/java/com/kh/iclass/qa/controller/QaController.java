package com.kh.iclass.qa.controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.iclass.common.map.CommandMap;
import com.kh.iclass.qa.service.QaService;

@Controller
public class QaController {
	Logger log = Logger.getLogger(this.getClass());

	@Resource(name = "QaService")
	private QaService QaService;

	/*
	 * private int searchNum; private String searchkeyword;
	 */

	@RequestMapping(value = "/qa/list")
	public ModelAndView qaBoardList(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("qa/list");
		List<Map<String, Object>> list = null;

		if (commandMap.get("SearchKeyword") == null && commandMap.get("SearchNum") == null)
			list = QaService.QaList(commandMap.getMap());
		else 
			list = QaService.QaSearchList(commandMap.getMap());

		mv.addObject("list", list);
		
		return mv;
	}

	@RequestMapping(value = "/qa/writeForm")
	public ModelAndView qaWrite(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/qa/write");
		
		System.out.println("qaWriteForm : " + commandMap.getMap());
		
		
		if (commandMap.get("GOODS_NO") != null );
			Map<String, Object> map = QaService.QaGoods(commandMap.getMap());
		
	/*mv.addObject("list", map);
	mv.addObject("PRICE", commandMap.get("PRICE"));
	mv.addObject("NAME",commandMap.get("NAME"));
	mv.addObject("GOODS_NO", commandMap.get("GOODS_NO"));
	mv.addObject("SAV_NAME", commandMap.get("SAV_NAME"));*/
	
	mv.addObject("list", map);
		return mv;
	}

	@RequestMapping(value = "/qa/write")
	public ModelAndView qaInsert(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:qa/list");
		
		QaService.QaInsert(commandMap.getMap());

		return mv;
	}
	//qa 답변 폼
	@RequestMapping(value = "/qa/writeReplyForm")
	public ModelAndView qaReplyWrite(HttpServletRequest request,CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("qa/writeReply");
		

		mv.addObject("REF", commandMap.getMap());
	/*	String REF = (String)request.getParameter("QA_NO");
		int REF = Integer.parseInt(request.getParameter("QA_NO"));
		
		
		commandMap.put("REF", REF);
		
		mv.addObject("REF", commandMap.get(REF));*/
		
		
		System.out.println("qaUpdateForm : " + commandMap.getMap());
		
		
		
		
		return mv;
	}
	//qa답변
	@RequestMapping(value = "/qa/writeReply")
	public ModelAndView qaReplyInsert(HttpServletRequest request,CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:qa/list");
		/*String REF = (String)request.getParameter("QA_NO");
			commandMap.put("REF", REF);
		
		mv.addObject("REF", commandMap.get(REF));*/
		System.out.println("qaWriteReply : " + commandMap.getMap());
		commandMap.put("RE_STEP", 1);
		
		QaService.QaReplyInsert(commandMap.getMap());	
		/*QaService.QaUpdateReplyStep(commandMap.getMap());*/
		
		return mv;
	}

	@RequestMapping(value = "/qa/detail")
	public ModelAndView qaDetail(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("qa/detail");
		System.out.println("qaDetail : " + commandMap.getMap());
		Map<String, Object> map1 = QaService.QaGoods(commandMap.getMap());
		Map<String, Object> map = QaService.QaDetail(commandMap.getMap());
		mv.addObject("map", map);
		mv.addObject("list", map1);

		return mv;
	}

	@RequestMapping(value = "/qa/updateForm")
	public ModelAndView qaUpdateForm(CommandMap commandMap) throws Exception {
		
		ModelAndView mv = new ModelAndView("qa/update");
		System.out.println("qaUpdateForm : " + commandMap.getMap());
		Map<String, Object> map = QaService.QaDetail(commandMap.getMap());
		mv.addObject("map", map);
		
		
		
		return mv;
	}

	@RequestMapping(value = "/qa/update")
	public ModelAndView qaUpdate(CommandMap commandMap) throws Exception {

		ModelAndView mv = new ModelAndView("redirect:/qa/detail");
		QaService.QaUpdate(commandMap.getMap());
	
		
		mv.addObject("QA_NO", commandMap.get("QA_NO"));
		mv.addObject("GOODS_NO", commandMap.get("GOODS_NO"));
		return mv;
	}

	@RequestMapping(value = "/qa/delete")
	public ModelAndView qaDelete(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:qa/list");
		System.out.println("qaDelete : " + commandMap.getMap());
		
		QaService.QaDelete(commandMap.getMap());

		return mv;
	}
	
	@RequestMapping(value = "/qa/qaGoodsSelect")
	public ModelAndView qaGoodsBoardList(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/qa/qaGoodsList");
		
		List<Map<String, Object>> list = null;
		System.out.println("qaGoodsBoardList : " + commandMap.getMap());
		
		if (commandMap.get("SearchKeyword") == null && commandMap.get("SearchNum") == null)
			list = QaService.QaGoodsList(commandMap.getMap());
		else 
			list = QaService.QaGoodsSearch(commandMap.getMap());

		mv.addObject("list", list);
		

		return mv;
	}
	@RequestMapping(value = "/qa/qaGoodsSuccess")
	public ModelAndView qaGoodsSuccess(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/qa/qaGoodsListSuccess");
		
		System.out.println("qaGoodsSuccess : " + commandMap.getMap());
	
		
	/*mv.addObject("PRICE", commandMap.get("PRICE"));
	mv.addObject("NAME",commandMap.get("NAME"));*/
	mv.addObject("GOODS_NO", commandMap.get("GOODS_NO"));
	/*mv.addObject("SAV_NAME", commandMap.get("SAV_NAME"));*/
	

		return mv;
	}

}