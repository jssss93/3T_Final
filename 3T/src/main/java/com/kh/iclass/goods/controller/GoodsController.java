package com.kh.iclass.goods.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.kh.iclass.common.map.CommandMap;
import com.kh.iclass.goods.service.GoodsService;

import egovframework.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;

@Controller

public class GoodsController {
	Logger log = Logger.getLogger(this.getClass());

	@Resource(name = "goodsService")
	private GoodsService goodsService;

   @RequestMapping(value = "/main")
   public ModelAndView mainList(Map<String, Object> commandMap) throws Exception {
      ModelAndView mv = new ModelAndView("goods/main");

      List<Map<String, Object>> list = goodsService.selectMainList(commandMap);
      
      List<Map<String, Object>> New = goodsService.selectNewList(commandMap);
      
      List<Map<String, Object>> best = goodsService.selectBestList(commandMap);
      mv.addObject("best", best);
      mv.addObject("New", New);
      mv.addObject("list", list);

      return mv;
   }

   @RequestMapping(value = "goods/catelist")
   public ModelAndView goodsCateList(CommandMap commandMap) throws Exception {
      ModelAndView mv = new ModelAndView("goods/categorylist");

      /* String isCategory = (String) commandMap2.getMap().get("CATEGORY"); */      

      List<Map<String, Object>> list = goodsService.selectGoodsCategory(commandMap.getMap());
      
      List<Map<String, Object>> bestlist = goodsService.selectGoodsBestCategory(commandMap.getMap());
      
      mv.addObject("CATEGORY", commandMap.get("CATEGORY"));
      
      mv.addObject("bestlist", bestlist);
      
      mv.addObject("list", list);

      return mv;
   }

   @RequestMapping(value = "/goods/list")
   public ModelAndView goodsList(CommandMap commandMap) throws Exception {
      ModelAndView mv = new ModelAndView("goods/list");

      Map<String, Object> resultMap = goodsService.goodsList(commandMap.getMap());
         
      mv.addObject("paginationInfo", (PaginationInfo) resultMap.get("paginationInfo"));

      mv.addObject("list", resultMap.get("result"));
      
      return mv;
   }

   
   
   @RequestMapping(value = "/goods/detail")
   @Transactional
   public ModelAndView goodsDetail(CommandMap commandMap) throws Exception {

      ModelAndView mv = new ModelAndView("goods/goodsdetail");

      goodsService.updateHitcnt(commandMap.getMap());
      
      List<Map<String, Object>> goodsDetail = goodsService.selectGoodsDetail(commandMap.getMap());
      
      Map<String, Object> goodsBasic = goodsDetail.get(0);
      
      System.out.println(goodsBasic.get("RELATED").toString().split(",")[0]);
      System.out.println(goodsBasic.get("RELATED"));
      System.out.println(goodsBasic.get("RELATED").toString());
      System.out.println(goodsBasic.get("RELATED").toString().length());
		
      Map<String, Object> param=new HashMap<String,Object>();
		
      List<String> relatedGoodsNoList = new ArrayList<String>();
      String[] relatedGoodsNoList_Length =goodsBasic.get("RELATED").toString().split(",");
	
      for(int i=0;i<relatedGoodsNoList_Length.length;i++) {
    	 relatedGoodsNoList.add(goodsBasic.get("RELATED").toString().split(",")[i]);
      }
		
      param.put("relGoodsNo_List", relatedGoodsNoList);
		
      System.out.println(param.get("relGoodsNo_List"));
		
		
      commandMap.put("relGoodsNo_List", relatedGoodsNoList);
		
      List<Map<String, Object>> goodsRel = goodsService.selectRelatedList(param);
      List<Map<String, Object>> goodsImage = goodsService.selectGoodsImage(commandMap.getMap());

      Map<String, Object> goodsoneImage = goodsImage.get(0);

      
      //상품리뷰띄우기
      List<Map<String, Object>> goodsDetail1 = goodsService.selectGoodsDetail1(commandMap.getMap());
         
       //상품QA띄우기
      List<Map<String, Object>> goodsDetail2 = goodsService.selectGoodsDetail2(commandMap.getMap());
       
      mv.addObject("goodsDetail1", goodsDetail1); //REVIEW 상세보기
      mv.addObject("goodsDetail2", goodsDetail2); //Q&A 상세보기
      
      mv.addObject("goodsDetail", goodsDetail);

      mv.addObject("goodsBasic", goodsBasic);

      mv.addObject("goodsRel", goodsRel);
      
      mv.addObject("goodsoneImage", goodsoneImage);

      mv.addObject("goodsImage", goodsImage);

      return mv;
   }

   public static Map<String, Object> changeValue(List<Map<String, Object>> list) {

        Map<String, Object> resultMap = new HashMap<String, Object>();
        String result = null;
        
        for (int i = 0; i < list.size(); i++) {
            Map<String, Object> map = list.get(i);
            // map???�긴 data�?꺼내??변�???변??result???�??
            result = map.get("key01").toString() + "/" + map.get("key02");
            resultMap.put("key03", result);
        }
        
        return resultMap;
    }



   @RequestMapping(value = "/goods/write", method = RequestMethod.GET)
   public ModelAndView goodsWriteForm(CommandMap commandMap) throws Exception {
      ModelAndView mv = new ModelAndView("goods/write");

      return mv;
   }

   @RequestMapping(value = "/goods/write", method = RequestMethod.POST)
   public ModelAndView goodsWrite(CommandMap commandMap, HttpServletRequest request) throws Exception {
      ModelAndView mv = new ModelAndView("redirect:/goods/list");

      goodsService.goodsWrite(commandMap.getMap(), request);

      return mv;
   }
   
   @RequestMapping(value = "/goods/search")
   public ModelAndView goodsSearch(CommandMap commandMap) throws Exception {
      ModelAndView mv = new ModelAndView("goods/searchform");

      System.out.println("들어오냐??" + commandMap.getMap());
      
      if(commandMap.get("NAME") != null)
      {
          List<Map<String, Object>> searchlist = goodsService.goodsSearchListName(commandMap.getMap());
          
          mv.addObject("searchlist", searchlist);
      }
      else if(commandMap.get("RowPrice") != null)
      {
          List<Map<String, Object>> searchlist = goodsService.goodsSearchListRowPrice(commandMap.getMap());
          
          mv.addObject("searchlist", searchlist);
      }
      else if(commandMap.get("HighPrice") != null)
      {
          List<Map<String, Object>> searchlist = goodsService.goodsSearchListHighPrice(commandMap.getMap());
          
          mv.addObject("searchlist", searchlist);
      }
      else if(commandMap.get("PRICE1") != null && commandMap.get("PRICE2") != "" && commandMap.get("PRICE2") != null)
      {
          List<Map<String, Object>> searchlist = goodsService.goodsSearchPriceList(commandMap.getMap());
          
          mv.addObject("searchlist", searchlist);
      }
      else
      {
          List<Map<String, Object>> searchlist = goodsService.goodsSearchList(commandMap.getMap());
          
          mv.addObject("searchlist", searchlist);
      }
      

      
      return mv;
   } 
}