package com.kh.iclass.admin.goods;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.kh.iclass.common.map.CommandMap;
import com.kh.iclass.goods.service.GoodsService;

import egovframework.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;

@Controller
@RequestMapping(value = "/admin")
public class adminGoodsController {
	Logger log = Logger.getLogger(this.getClass());

	@Resource(name = "goodsService")
	private GoodsService goodsService;

	@Resource(name = "adminGoodsService")
	private AdminGoodsService adminGoodsService;

	@RequestMapping(value = "/goods/list")
	public ModelAndView goodsList(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("goods.adminGoodsList");

		Map<String, Object> resultMap =null;
		
		if (commandMap.get("SearchKeyword") == null && commandMap.get("SearchNum") == null)
			resultMap = goodsService.goodsList(commandMap.getMap());
		else
			resultMap = goodsService.goodsAdminSearchList(commandMap.getMap());
			
		
		mv.addObject("paginationInfo", (PaginationInfo) resultMap.get("paginationInfo"));
		/*
		 * mv.addObject("paginationInfo", (PaginationInfo)
		 * resultMap.get("paginationInfo"));
		 */
		mv.addObject("list", resultMap.get("result"));

		return mv;
	}
	
	@RequestMapping(value = "/goods/list2")
	public ModelAndView goodsList2(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("admin/goods/adminGoodsList2");

		Map<String, Object> resultMap =null;
		
		 System.out.println("name들어오냐??" + commandMap.getMap());
		
		if (commandMap.get("SearchKeyword") == null && commandMap.get("SearchNum") == null)
			resultMap = goodsService.goodsCategoryList(commandMap.getMap());
		else
			resultMap = goodsService.goodsAdminSearchList(commandMap.getMap());
			
		
		mv.addObject("paginationInfo", (PaginationInfo) resultMap.get("paginationInfo"));
		/*
		 * mv.addObject("paginationInfo", (PaginationInfo)
		 * resultMap.get("paginationInfo"));
		 */
		mv.addObject("list", resultMap.get("result"));

		return mv;
	}
	
	/*@ResponseBody
	@RequestMapping(value = "/goods/listOfOuter")
	public ModelAndView goodsListOfOuter(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("cate_list");
		ModelAndView mv = new ModelAndView("goods.adminGoodsList");
		List<Map<String, Object>> OuterList=goodsService.selectGoodsCategory(commandMap.getMap());
		mv.addObject("list", OuterList);

		return mv;
	}*/
	
	/*@RequestMapping(value = "/goods/listOfOuter")
	public @ResponseBody List<Map<String, Object>> goodsListOfOuter(CommandMap commandMap) throws Exception {
		
		List<Map<String, Object>> list=goodsService.selectGoodsCategory(commandMap.getMap());

		return list;
	}*/
	

	@RequestMapping(value = "/goods/write", method = RequestMethod.GET)
	public ModelAndView goodsWriteForm(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("goods.write");

		return mv;
	}

	@RequestMapping(value = "/goods/write", method = RequestMethod.POST)
	public ModelAndView goodsWrite(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:/goods/list");

		goodsService.goodsWrite(commandMap.getMap(), request);

		return mv;
	}

	//상품 수정 폼
	@RequestMapping(value = "/goods/updateForm", method = RequestMethod.GET)
	public ModelAndView goodsUpdateForm(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("goods.update");
		mv.addObject("GOODS_NO", commandMap.get("GOODS_NO"));
		
		List<Map<String, Object>> goodsDetail = goodsService.selectGoodsDetail(commandMap.getMap());
		if(goodsDetail!=null) {
			Map<String, Object> goodsBasic = goodsDetail.get(0);
			mv.addObject("goodsBasic", goodsBasic);
		}
		List<Map<String, Object>> goodsImage = goodsService.selectGoodsImage(commandMap.getMap());
		
		mv.addObject("goodsDetail", goodsDetail);

	    
	    
	    mv.addObject("goodsImage", goodsImage);
		
		return mv;
	}
	
	//상품 수정
	@RequestMapping(value = "/goods/update", method = RequestMethod.POST)
	public ModelAndView goodsUpdate(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:/admin/goods/list");
		System.out.println("commandMap.getMap():"+commandMap.getMap());
		goodsService.updateGoods(commandMap.getMap(), request);
		
		return mv;
	}
	
	//상품 속성 개별 삭제
	@RequestMapping(value = "/goods/deleteAttribute")
	public ModelAndView goodsDeleteAttribute(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:/admin/goods/updateForm");
		
		String ATTRIBUTE_NO=(String) commandMap.getMap().get("ATTRIBUTE_NO");
		System.out.println("ATTRIBUTE_NO:"+ATTRIBUTE_NO);
		commandMap.put("ATTRIBUTE_NO", ATTRIBUTE_NO);
		System.out.println(commandMap.getMap());
		mv.addObject("ATTRIBUTE_NO", commandMap.get("ATTRIBUTE_NO"));
		mv.addObject("GOODS_NO", commandMap.get("GOODS_NO"));
		
		goodsService.deleteAttribute(commandMap.getMap());
		
		return mv;
	}
	
	//상품 이미지 개별 삭제
	@RequestMapping(value = "/goods/deleteUpload")
	public ModelAndView goodsDeleteUpload(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:/admin/goods/updateForm");
		
		mv.addObject("GOODS_NO", commandMap.get("GOODS_NO"));
		
		goodsService.deleteUpload(commandMap.getMap());
		
		return mv;
	}
	
	//상품 삭제
	@RequestMapping(value = "/goods/deleteGoods")
	public ModelAndView goodsDelete(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:/admin/goods/list");
		
		goodsService.deleteGoods(commandMap.getMap());
		
		return mv;
	}
		
		/*List<Map<String, Object>> goodsDetail = adminGoodsService.modifyGoodsForm(commandMap.getMap());
		mv.addObject("goodsDetail", goodsDetail);
		Map<String, Object> goodsBasic = goodsDetail.get(0);
		mv.addObject("goodsBasic", goodsBasic);
		return mv;*/
}

