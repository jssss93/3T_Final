package com.kh.iclass.goods.controller;

import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.iclass.common.map.CommandMap;
import com.kh.iclass.goods.service.GoodsService;

import egovframework.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;

@Controller

public class GoodsController {
	Logger log = Logger.getLogger(this.getClass());

	@Resource(name = "goodsService")
	private GoodsService goodsService;

	@RequestMapping(value = "/goods/list")
	public ModelAndView goodsList(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("goods/list");

		Map<String, Object> resultMap = goodsService.goodsList(commandMap.getMap());

		mv.addObject("paginationInfo", (PaginationInfo) resultMap.get("paginationInfo"));

		mv.addObject("list", resultMap.get("result"));

		return mv;
	}

	@RequestMapping(value = "/goods/writeForm")
	public ModelAndView goodsWriteForm(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("goods/write");

		return mv;
	}

	@RequestMapping(value = "/goods/write")
	public ModelAndView goodsWrite(CommandMap commandMap,HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:goods/list");

		goodsService.goodsWrite(commandMap.getMap(),request);

		return mv;
	}

	@RequestMapping(value = "/goods/detail")
	public ModelAndView goodsDetail(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("goods/detail");

		Map<String, Object> map = goodsService.goodsDetail(commandMap.getMap());
		mv.addObject("Detail",map.get("map"));
		//첨부파일 목록
		mv.addObject("list",map.get("list"));

		return mv;
	}

	// 업데이트 화면 띄우기
	@RequestMapping(value = "/goods/updateForm")
	public ModelAndView goodsUpdateForm(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/goods/update");

		Map<String, Object> map = goodsService.goodsDetail(commandMap.getMap());
		mv.addObject("map", map.get("map"));
		mv.addObject("list", map.get("list"));

		return mv;
	}

	// 업데이트 처리
	@RequestMapping(value = "/goods/update")
	public ModelAndView goodsUpdate(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:goods/detail");

		goodsService.goodsUpdate(commandMap.getMap(),request);

		mv.addObject("GOODS_NO", commandMap.get("GOODS_NO"));
		return mv;
	}

	@RequestMapping(value = "/goods/delete")
	public ModelAndView goodsDelete(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:goods/list");

		goodsService.goodsDelete(commandMap.getMap());

		return mv;
	}

}
