package com.kh.iclass.goods.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
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
   public ModelAndView goodsDetail(CommandMap commandMap) throws Exception {

      ModelAndView mv = new ModelAndView("goods/goodsdetail");

      goodsService.updateHitcnt(commandMap.getMap());
      List<Map<String, Object>> goodsDetail = goodsService.selectGoodsDetail(commandMap.getMap());

      Map<String, Object> goodsBasic = goodsDetail.get(0);
      
      System.out.println(goodsBasic.get("RELATED").toString().split(",")[0]);
      System.out.println(goodsBasic.get("RELATED"));
      System.out.println(goodsBasic.get("RELATED").toString());
      
      Map<String, Object> param=new HashMap<String,Object>();
      
      List<String> relatedGoodsNoList = new ArrayList<String>();
      List<String> relatedGoodsNoList2 = new ArrayList<String>();
      
      for(int i=0;i<4;i++) {
         relatedGoodsNoList.add(goodsBasic.get("RELATED").toString().split(",")[i]);
      }
      relatedGoodsNoList2.add("99");
      String []value= {"99"};
      System.out.println("relatedGoodsNoList : "+ relatedGoodsNoList);
      
      param.put("relGoodsNo_List", relatedGoodsNoList);
      param.put("relGoodsNo_List2", relatedGoodsNoList2);
      param.put("arr", value);
      
      System.out.println(param.get("relGoodsNo_List"));
      System.out.println("relGoodsNo_List2 : "+ relatedGoodsNoList2   );
      
      
      
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
            // map에 담긴 data를 꺼내어 변경 후 변수 result에 저장
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
   /*
    * @RequestMapping(value = "/goods/detail") public ModelAndView
    * goodsDetail(CommandMap commandMap) throws Exception { ModelAndView mv = new
    * ModelAndView("goods/detail");
    * 
    * Map<String, Object> map = goodsService.goodsDetail(commandMap.getMap());
    * mv.addObject("Detail",map.get("map")); //첨부파일 목록
    * mv.addObject("list",map.get("list"));
    * 
    * return mv; }
    * 
    * // 업데이트 화면 띄우기
    * 
    * @RequestMapping(value = "/goods/updateForm") public ModelAndView
    * goodsUpdateForm(CommandMap commandMap) throws Exception { ModelAndView mv =
    * new ModelAndView("/goods/update");
    * 
    * Map<String, Object> map = goodsService.goodsDetail(commandMap.getMap());
    * mv.addObject("map", map.get("map")); mv.addObject("list", map.get("list"));
    * 
    * return mv; }
    * 
    * // 업데이트 처리
    * 
    * @RequestMapping(value = "/goods/update") public ModelAndView
    * goodsUpdate(CommandMap commandMap, HttpServletRequest request) throws
    * Exception { ModelAndView mv = new ModelAndView("redirect:/goods/detail");
    * 
    * goodsService.goodsUpdate(commandMap.getMap(),request);
    * 
    * mv.addObject("GOODS_NO", commandMap.get("GOODS_NO")); return mv; }
    * 
    * @RequestMapping(value = "/goods/delete") public ModelAndView
    * goodsDelete(CommandMap commandMap) throws Exception { ModelAndView mv = new
    * ModelAndView("redirect:/goods/list");
    * 
    * goodsService.goodsDelete(commandMap.getMap());
    * 
    * return mv; }
    */

}