package com.kh.iclass.admin.review;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.iclass.common.map.CommandMap;
import com.kh.iclass.review.service.ReviewService;

@Controller
@RequestMapping(value = "/admin")
public class AdminReviewController {
	Logger log = Logger.getLogger(this.getClass());

	@Resource(name = "ReviewService")
	private ReviewService ReviewService;

	//리뷰 리스트
	@RequestMapping(value = "/review/list")
	public ModelAndView reviewBoardList(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("review.list");

		List<Map<String, Object>> list = null;
		//검색정보가 들어왔을때 리스트와 안들어왔을 때 리스트
		if (commandMap.get("SearchKeyword") == null && commandMap.get("SearchNum") == null)
			list = ReviewService.ReviewList(commandMap.getMap());
		else
			list = ReviewService.ReviewSearchList(commandMap.getMap());

		mv.addObject("list", list);
		return mv;
	}
	//리뷰 쓰기 폼
	@RequestMapping(value = "/review/writeForm")
	public ModelAndView reviewWrite(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("review/write");
		System.out.println("reviewWriteForm : " + commandMap.getMap());
		
		//상품번호가 안들어왔을 때 폼 그냥 실행 , 상품번호가 들어왔을 때 상품정보 보여줌
		if(commandMap.get("GOODS_NO") == null)
			return mv;
		if (commandMap.get("GOODS_NO") != null);
		Map<String, Object> map = ReviewService.ReviewGoods(commandMap.getMap());

		

		mv.addObject("list", map);

		return mv;
	}
	//리뷰 쓰기
	@RequestMapping(value = "/review/write")
	public ModelAndView reviewInsert(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:/review/list");
		System.out.println("reviewWrite : " + commandMap.getMap());
		
		ReviewService.ReviewInsert(commandMap.getMap());

		return mv;
	}
	
	//리뷰 상세보기
	@RequestMapping(value = "/review/detail")
	public ModelAndView reviewDetail(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("review.detail");
		System.out.println("reviewDetail : " + commandMap.getMap());
		//상품정보
		/*Map<String, Object> map1 = ReviewService.ReviewGoods(commandMap.getMap());*/
		//리뷰 상세보기 정보
		Map<String, Object> map = ReviewService.ReviewDetail(commandMap.getMap());
		// 리뷰 댓글 리스트
		
		List<Map<String, Object>> list = ReviewService.ReviewCommentList(commandMap.getMap());

		mv.addObject("map", map);
		/*mv.addObject("list2", map1);*/
		mv.addObject("list", list);
		return mv;
	}
	
	//리뷰 수정 폼
	@RequestMapping(value = "/review/updateForm")
	public ModelAndView reviewUpdateForm(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("review/update");
		
		System.out.println("reviewUpdateForm : " + commandMap.getMap());
		
		Map<String, Object> map = ReviewService.ReviewDetail(commandMap.getMap());
		mv.addObject("map", map);

		return mv;
	}

	//리뷰 수정
	@RequestMapping(value = "/review/update")
	public ModelAndView reviewUpdate(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:/review/detail");
		
		System.out.println("reviewUpdate : " + commandMap.getMap());
		ReviewService.ReviewUpdate(commandMap.getMap());

		mv.addObject("REVIEW_NO", commandMap.get("REVIEW_NO"));
		mv.addObject("GOODS_NO", commandMap.get("GOODS_NO"));
		return mv;
	}

	//리뷰 삭제
	@RequestMapping(value = "/review/adminDelete")
	public ModelAndView reviewDelete(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:/admin/review/list");
		System.out.println("reviewDelete : " + commandMap.getMap());
		ReviewService.ReviewDelete(commandMap.getMap());

		return mv;
	}

	//리뷰 댓글 쓰기
	@RequestMapping(value = "/review/adminCommentWrite")
	public ModelAndView reviewCommentInsert(CommandMap commandMap) throws Exception {

		ModelAndView mv = new ModelAndView("redirect:/admin/review/list");

		
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

	//리뷰 댓글 삭제
	@RequestMapping(value = "/review/adminCommentDelete")
	public ModelAndView reviewCommentDelete(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:/admin/review/detail");
		System.out.println("adminCommentDelete : " + commandMap.getMap());
		
		
		ReviewService.ReviewAdminDeleteComment(commandMap.getMap());

		mv.addObject("GOODS_NO",commandMap.get("GOODS_NO"));
		mv.addObject("REVIEW_NO", commandMap.get("REVIEW_NO"));
		

		return mv;
	}
	//리뷰 상품 리스트,검색
	@RequestMapping(value = "/review/reviewGoodsSelect")
	public ModelAndView reviewGoodsBoardList(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/review/reviewGoodsList");
		
		List<Map<String, Object>> list = null;
		System.out.println("reviewGoodsBoardList : " + commandMap.getMap());
		//검색정보가 들어왔을때 리스트와 안들어왔을 때 상품리스트
		if (commandMap.get("SearchKeyword") == null && commandMap.get("SearchNum") == null)
			list = ReviewService.ReviewGoodsList(commandMap.getMap());
		else 
			list = ReviewService.ReviewGoodsSearch(commandMap.getMap());

		mv.addObject("list", list);
		

		return mv;
	}
	//리뷰 상품 선택시 처리
	@RequestMapping(value = "/review/reviewGoodsSuccess")
	public ModelAndView reviewGoodsSuccess(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("review/reviewGoodsListSuccess");
		
		System.out.println("reviewGoodsSuccess : " + commandMap.getMap());
	
		mv.addObject("GOODS_NO", commandMap.get("GOODS_NO"));
	
		return mv;
	}
	//리뷰 댓글 비밀번호 체크 폼
	@RequestMapping(value = "/review/passwdCheckForm")
	public ModelAndView qaPasswdCheckForm(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("review/passwdCheckForm");
		
		System.out.println("qaPasswdCheckForm : " + commandMap.getMap());
		
		mv.addObject("list", commandMap.getMap());
	
		return mv;
	}
	
	

}
