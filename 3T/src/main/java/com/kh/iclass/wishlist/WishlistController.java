package com.kh.iclass.wishlist;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.iclass.common.map.CommandMap;

@Controller
public class WishlistController {
	
	@Resource(name = "wishService")
	private WishlistService wishlistService;
	
	@RequestMapping(value = "/wish/addWish")
	public ModelAndView addWish(CommandMap commandMap, HttpServletRequest request) throws Exception{
		ModelAndView mv = new ModelAndView("redirect:/wish/wishlist");
		
		HttpSession session = request.getSession();
		
		if(session.getAttribute("MEMBER_ID") != null) { 
			commandMap.put("GOODS_NO", commandMap.get("GOODS_NO"));
			commandMap.put("ATTRIBUTE_NO", commandMap.get("attribute_no[]"));
			commandMap.put("MEMBER_ID", session.getAttribute("MEMBER_ID"));
			System.out.println("commandMap.getMap():"+commandMap.getMap());
			
			System.out.println("commandMap.getMap():"+commandMap.getMap());
			wishlistService.insertWishlist(commandMap.getMap());
		}
		return mv;
	}
	
	// 위시리스트 불러오기
		@SuppressWarnings("unchecked")
		@RequestMapping(value = "/wish/wishlist")
		public ModelAndView wishlist(CommandMap commandMap, HttpServletRequest request) throws Exception {
			ModelAndView mv = new ModelAndView("wishlist/wishlist");

			HttpSession session = request.getSession();
			List<Map<String, Object>> wishlist = new ArrayList<Map<String, Object>>();
			
			commandMap.put("MEMBER_ID", session.getAttribute("MEMBER_ID"));
			wishlist = wishlistService.selectWishlist(commandMap.getMap());
			
			mv.addObject("wishlist", wishlist);
			System.out.println("WISHLIST :" + wishlist);
			return mv;
		}
		
		@RequestMapping(value = "/wish/deleteOneWishlist")
		public ModelAndView deleteOneWishlist(CommandMap commandMap, HttpServletRequest request) throws Exception {
			ModelAndView mv = new ModelAndView("redirect:/wish/wishlist");
			
			HttpSession session = request.getSession();
			
			if(session.getAttribute("MEMBER_ID") != null) { 
				commandMap.put("MEMBER_ID", session.getAttribute("MEMBER_ID"));
				commandMap.put("ATTRIBUTE_NO", commandMap.get("attribute_no[]"));
				System.out.println("commandMap.getMap():"+commandMap.getMap());
		
				wishlistService.deleteOneWishlist(commandMap.getMap());
				
			}
			
			return mv;
		}
		
		@RequestMapping(value = "/wish/deleteAllWishlist")
		public ModelAndView deleteAllWishlist(CommandMap commandMap, HttpServletRequest request) throws Exception {
			ModelAndView mv = new ModelAndView("redirect:/wish/wishlist");
			
			HttpSession session = request.getSession();
			
			if(session.getAttribute("MEMBER_ID") != null) { 
				commandMap.put("MEMBER_ID", session.getAttribute("MEMBER_ID"));
				System.out.println("commandMap.getMap():"+commandMap.getMap());
		
				wishlistService.deleteAllWishlist(commandMap.getMap());
				
			}
			
			return mv;
		}

}
