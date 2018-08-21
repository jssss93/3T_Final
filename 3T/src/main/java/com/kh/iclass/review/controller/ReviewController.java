package com.kh.iclass.review.controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.iclass.review.service.ReviewService;
import com.kh.iclass.common.map.CommandMap;

@Controller
public class ReviewController {
	Logger log = Logger.getLogger(this.getClass());

	@Resource(name = "ReviewService")
	private ReviewService ReviewService;

	@RequestMapping(value = "/review/list")
	public ModelAndView reviewBoardList(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("review/list");

		List<Map<String, Object>> list = null;

		if (commandMap.get("SearchKeyword") == null && commandMap.get("SearchNum") == null)
			list = ReviewService.ReviewList(commandMap.getMap());
		else
			list = ReviewService.ReviewSearchList(commandMap.getMap());

		mv.addObject("list", list);
		return mv;
	}

	@RequestMapping(value = "/review/writeForm")
	public ModelAndView reviewWrite(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("review/write");
		System.out.println("reviewWriteForm : " + commandMap.getMap());
		
		if(commandMap.get("GOODS_NO") == null)
			
			return mv;
		
		if (commandMap.get("GOODS_NO") != null);
		Map<String, Object> map = ReviewService.ReviewGoods(commandMap.getMap());

		

		mv.addObject("list", map);

		return mv;
	}

	@RequestMapping(value = "/review/write")
	public ModelAndView reviewInsert(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:/review/list");
		System.out.println("reviewWrite : " + commandMap.getMap());
		
		ReviewService.ReviewInsert(commandMap.getMap());

		return mv;
	}

	@RequestMapping(value = "/review/detail")
	public ModelAndView reviewDetail(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("review/detail");
		System.out.println("reviewDetail : " + commandMap.getMap());
		Map<String, Object> map1 = ReviewService.ReviewGoods(commandMap.getMap());
		Map<String, Object> map = ReviewService.ReviewDetail(commandMap.getMap());

		// 리뷰 댓글
		List<Map<String, Object>> list = ReviewService.ReviewCommentList(commandMap.getMap());

		mv.addObject("map", map);
		mv.addObject("list2", map1);
		mv.addObject("list", list);
		return mv;
	}

	@RequestMapping(value = "/review/updateForm")
	public ModelAndView reviewUpdateForm(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("review/update");
		
		System.out.println("reviewUpdateForm : " + commandMap.getMap());
		
		Map<String, Object> map = ReviewService.ReviewDetail(commandMap.getMap());
		mv.addObject("map", map);

		return mv;
	}

	@RequestMapping(value = "/review/update")
	public ModelAndView reviewUpdate(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:/review/detail");
		
		System.out.println("reviewUpdate : " + commandMap.getMap());
		ReviewService.ReviewUpdate(commandMap.getMap());

		mv.addObject("REVIEW_NO", commandMap.get("REVIEW_NO"));
		mv.addObject("GOODS_NO", commandMap.get("GOODS_NO"));
		return mv;
	}

	@RequestMapping(value = "/review/delete")
	public ModelAndView reviewDelete(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:/review/list");
		System.out.println("reviewDelete : " + commandMap.getMap());
		ReviewService.ReviewDelete(commandMap.getMap());

		return mv;
	}

	@RequestMapping(value = "/review/comment")
	public ModelAndView reviewCommentInsert(CommandMap commandMap) throws Exception {

		ModelAndView mv = new ModelAndView("redirect:/review/detail");


		System.out.println("reviewCommentInsert : " + commandMap.getMap());
		ReviewService.ReviewCommentWrite(commandMap.getMap());

		System.out.println("reviewDetail : " + commandMap.getMap());
		ReviewService.ReviewDetail(commandMap.getMap());

		// 리뷰 댓글
		ReviewService.ReviewCommentList(commandMap.getMap());
		
		mv.addObject("REVIEW_NO", commandMap.get("REVIEW_NO"));
		mv.addObject("GOODS_NO", commandMap.get("GOODS_NO"));
		mv.addObject("REVIEW_COMMENT_NO", commandMap.get("REVIEW_COMMENT_NO"));

		return mv;
	}

	@RequestMapping(value = "/review/commentDelete")
	public ModelAndView reviewCommentDelete(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:/review/detail");
		System.out.println("reviewCommentDelete : " + commandMap.getMap());
		
		
		ReviewService.ReviewDeleteComment(commandMap.getMap());

		mv.addObject("GOODS_NO",commandMap.get("GOODS_NO"));
		mv.addObject("REVIEW_NO", commandMap.get("REVIEW_NO"));
		

		return mv;
	}
	@RequestMapping(value = "/review/reviewGoodsSelect")
	public ModelAndView reviewGoodsBoardList(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/review/reviewGoodsList");
		
		List<Map<String, Object>> list = null;
		System.out.println("reviewGoodsBoardList : " + commandMap.getMap());
		
		if (commandMap.get("SearchKeyword") == null && commandMap.get("SearchNum") == null)
			list = ReviewService.ReviewGoodsList(commandMap.getMap());
		else 
			list = ReviewService.ReviewGoodsSearch(commandMap.getMap());

		mv.addObject("list", list);
		

		return mv;
	}
	@RequestMapping(value = "/review/reviewGoodsSuccess")
	public ModelAndView reviewGoodsSuccess(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("review/reviewGoodsListSuccess");
		
		System.out.println("reviewGoodsSuccess : " + commandMap.getMap());
	
		

	mv.addObject("GOODS_NO", commandMap.get("GOODS_NO"));
	
	

		return mv;
	}
	
	@RequestMapping(value = "/review/passwdCheckForm")
	public ModelAndView qaPasswdCheckForm(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("review/passwdCheckForm");
		
		System.out.println("qaPasswdCheckForm : " + commandMap.getMap());
		
		mv.addObject("list", commandMap.getMap());
	
		return mv;
	}

}