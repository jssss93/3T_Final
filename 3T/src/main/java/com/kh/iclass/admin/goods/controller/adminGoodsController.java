package com.kh.iclass.admin.goods.controller;

import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.kh.iclass.common.map.CommandMap;
import com.kh.iclass.goods.service.GoodsService;

import egovframework.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;

@Controller
@RequestMapping(value="/admin")
public class adminGoodsController {
	Logger log = Logger.getLogger(this.getClass());

	@Resource(name = "goodsService")
	private GoodsService goodsService;

	@RequestMapping(value = "/goods/list")
	public ModelAndView goodsList(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("goods.adminGoodsList");

		Map<String, Object> resultMap = goodsService.goodsList(commandMap.getMap());

		/*mv.addObject("paginationInfo", (PaginationInfo) resultMap.get("paginationInfo"));
*/
		mv.addObject("list", resultMap.get("result"));

		return mv;
	}

	@RequestMapping(value = "/goods/write" , method = RequestMethod.GET)
	public ModelAndView goodsWriteForm(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("goods.write");

		return mv;
	}

	@RequestMapping(value = "/goods/write" , method = RequestMethod.POST)
	public ModelAndView goodsWrite(CommandMap commandMap,HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:/goods/list");

		goodsService.goodsWrite(commandMap.getMap(),request);

		return mv;
	}
}
