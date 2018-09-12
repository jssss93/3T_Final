package com.kh.iclass.goods.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.json.simple.JSONArray;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.kh.iclass.common.map.CommandMap;
import com.kh.iclass.common.util.CookieUtils;
import com.kh.iclass.common.util.ParseListToJson;
import com.kh.iclass.goods.service.GoodsService;

import egovframework.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;

@Controller

public class GoodsController {
	Logger log = Logger.getLogger(this.getClass());

	@Resource(name = "goodsService")
	private GoodsService goodsService;

   @RequestMapping(value = "/main")
   public ModelAndView mainList(Map<String, Object> commandMap,HttpServletRequest request) throws Exception {
      ModelAndView mv = new ModelAndView("goods/main");

      List<Map<String, Object>> list = goodsService.selectMainList(commandMap);
      
      List<Map<String, Object>> New = goodsService.selectNewList(commandMap);
      
      List<Map<String, Object>> best = goodsService.selectBestList(commandMap);
      mv.addObject("best", best);
      mv.addObject("New", New);
      mv.addObject("list", list);
      //쿠키리스트 불러온다
      List<Map<String , Object>> CookieListMap=CookieUtils.getValueListMap("GOODS_NO","IMAGE",request);
      //쿠키 뷰에 추가
      mv.addObject("CookieListMap",CookieListMap);

      return mv;
   }

   @RequestMapping(value = "goods/catelist")
   public ModelAndView goodsCateList(CommandMap commandMap,HttpServletRequest request) throws Exception {
      ModelAndView mv = new ModelAndView("goods/categorylist");
      
      Map<String, Object> resultMap = null;

      resultMap = goodsService.selectGoodsCategory(commandMap.getMap());
      
      List<Map<String, Object>> bestlist = goodsService.selectGoodsBestCategory(commandMap.getMap());
      
      mv.addObject("CATEGORY", commandMap.get("CATEGORY"));
      
      mv.addObject("bestlist", bestlist);
      
      mv.addObject("paginationInfo", (PaginationInfo) resultMap.get("paginationInfo"));
      mv.addObject("list", resultMap.get("result"));
      //쿠키리스트 불러온다
      List<Map<String , Object>> CookieListMap=CookieUtils.getValueListMap("GOODS_NO","IMAGE",request);
      //쿠키 뷰에 추가
      mv.addObject("CookieListMap",CookieListMap);

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
   public ModelAndView goodsDetail(CommandMap commandMap,HttpServletRequest request, HttpServletResponse response) throws Exception {
	   
	   
	   if(request.getSession().getAttribute("GOODS_NO")!=null) {
		   commandMap.put("GOODS_NO",request.getSession().getAttribute("GOODS_NO") );	
		   request.removeAttribute("GOODS_NO");
	   }
	   System.out.println("디테일로 넘어오는 값:");
	   System.out.println(commandMap.getMap());
       ModelAndView mv = new ModelAndView("goods/goodsdetail");

       goodsService.updateHitcnt(commandMap.getMap());
      
       List<Map<String, Object>> goodsDetail = goodsService.selectGoodsDetail(commandMap.getMap());
      System.out.println("goodsDetail:"+goodsDetail);
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
      
      
      //쿠키추가
      //쿠키에 상품번호와 이미지를 넣어준다.
      CookieUtils.setCookie("GOODS_NO",(String) commandMap.get("GOODS_NO"),1,request,response);
      CookieUtils.setCookie("IMAGE",(String) goodsoneImage.get("SAV_NAME"),1,request,response);
      System.out.println("쿠키 출력");
      System.out.println(CookieUtils.getValueList("GOODS_NO", request));
      System.out.println(CookieUtils.getValueList("IMAGE", request));
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
      
      
      
      
      
      
      //쿠키리스트 불러온다
      List<Map<String , Object>> CookieListMap=CookieUtils.getValueListMap("GOODS_NO","IMAGE",request);
      System.out.println("뿌리는 쿠키값:");
      System.out.println(CookieListMap);
      //쿠키 뷰에 추가
      mv.addObject("CookieListMap",CookieListMap);
      
      return mv;
      
   }

   public static Map<String, Object> changeValue(List<Map<String, Object>> list) {

        Map<String, Object> resultMap = new HashMap<String, Object>();
        String result = null;
        
        for (int i = 0; i < list.size(); i++) {
            Map<String, Object> map = list.get(i);
            result = map.get("key01").toString() + "/" + map.get("key02");
            resultMap.put("key03", result);
        }
        
        return resultMap;
    }

   
   @RequestMapping(value = "/goods/cookieDeleteAll")
   public void cookieDeleteAll(CommandMap commandMap,HttpServletRequest request,HttpServletResponse response) throws Exception {
	   CookieUtils.deleteAllCookie("GOODS_NO",request,response);
	   CookieUtils.deleteAllCookie("IMAGE",request,response);
   }
   
   @RequestMapping(value = "/goods/cookieDeleteOne")
   public JSONArray cookieDeleteOne(CommandMap commandMap,HttpServletRequest request,HttpServletResponse response) throws Exception {
	   
	   CookieUtils.deleteCookie("GOODS_NO",commandMap.get("GOODS_NO").toString(),request,response);
	   CookieUtils.deleteCookie("IMAGE",commandMap.get("IMAGE").toString(),request,response);
	   
	   List<Map<String , Object>> CookieListMap=CookieUtils.getValueListMap("GOODS_NO","IMAGE",request);
	   JSONArray json=ParseListToJson.convertListToJson(CookieListMap);
	   
	   return json;
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
      
      Map<String, Object> resultMap =null;

      resultMap = goodsService.goodsSearchList(commandMap.getMap());
      
      mv.addObject("paginationInfo", (PaginationInfo) resultMap.get("paginationInfo"));
          
      mv.addObject("searchlist", resultMap.get("result"));
      
      return mv;
   }

   @RequestMapping(value = "/goods/search1")
   public ModelAndView goodsSearch1(CommandMap commandMap) throws Exception {
      ModelAndView mv = new ModelAndView("/goods/searchlist");
      
      Map<String, Object> resultMap =null;
      
      System.out.println("name들어오냐??" + commandMap.getMap());
      
      resultMap = goodsService.goodsSearchList(commandMap.getMap());
      
      mv.addObject("paginationInfo", (PaginationInfo) resultMap.get("paginationInfo"));
          
      mv.addObject("searchlist", resultMap.get("result"));
     
      return mv;
   }
}