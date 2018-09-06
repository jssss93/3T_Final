package com.kh.iclass.wishlist;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.iclass.admin.member.AdminMemberService;
import com.kh.iclass.common.map.CommandMap;
import com.kh.iclass.common.util.WishNoUtil;

@Controller
public class WishlistController {
	
	@Resource(name = "wishService")
	private WishlistService wishlistService;
	
	@Resource(name = "adminMemberService")
	private AdminMemberService adminMemberService;
	
	@RequestMapping(value = "/wish/addWish")
	public ModelAndView addWish(CommandMap commandMap, HttpServletRequest request) throws Exception{
		ModelAndView mv = new ModelAndView();
		
		HttpSession session = request.getSession();
		
		/*List<Map<String, Object>> wishlist = new ArrayList<Map<String, Object>>();*/

		/*commandMap.put("ATTRIBUTE_NO", commandMap.get("attribute_no[]"));*/
		commandMap.put("MEMBER_ID", session.getAttribute("MEMBER_ID"));
		String attribute_no []=request.getParameterValues("attribute_no[]");
		System.out.println("받아오는 attribute NO 값 >>");
		for(int i=0;i<attribute_no.length;i++) {
			System.out.println("wish_No"+i+":"+attribute_no[i]);
		}
		commandMap.put("attribute_no", attribute_no);
		
		List<Map<String, Object>> wishlist = wishlistService.selectwish(commandMap.getMap());
		
		System.out.println("wishlist1:" +wishlist);
		//중복체크 (중복된게 없을때)
		if(wishlist.size() == 0) {
		System.out.println("wishlist2:" +wishlist);
		
		if(session.getAttribute("MEMBER_ID") != null) {
			commandMap.put("GOODS_NO", commandMap.get("GOODS_NO"));
			commandMap.put("ATTRIBUTE_NO", commandMap.get("attribute_no[]"));
			commandMap.put("MEMBER_ID", session.getAttribute("MEMBER_ID"));
			System.out.println("commandMap.getMap():"+commandMap.getMap());
			/*wishlistService.insertWishlist2(commandMap.getMap());*/
			
			//여러개가 들어올떄
			if(commandMap.get("ATTRIBUTE_NO") instanceof Object[]) {
				//회원 위시가 존재하면  or 존재하지 않으면.
				
				wishlistService.insertWishlist2(commandMap,request);
				mv.setViewName("wishlist/wishsuccess");
				return mv;

			}
			
		}else {
			
		}
		//중복된게 있을때
	}else {
		mv.setViewName("wishlist/wisherror");
		System.out.println("동일속성상품 중복에러");
		return mv;
	}
		wishlistService.insertWishlist(commandMap.getMap());
		mv.setViewName("wishlist/wishsuccess");
		return mv;
}
	
	@RequestMapping(value = "wish/wishtocart")		
	public ModelAndView wishtocart(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView();
		
		HttpSession session = request.getSession();
		commandMap.put("MEMBER_ID", session.getAttribute("MEMBER_ID"));
		
		System.out.println("commandMap.getMap():"+commandMap.getMap());
		
		wishlistService.WishinsertCart(commandMap.getMap(),request);
		
		mv.setViewName("redirect:/cart/list");
		
		return mv;
	
	}
	
	@RequestMapping(value = "/wish/Add/OnetoPayment")
	public ModelAndView wishAddtoPayment(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("order/paypage");
		HttpSession session = request.getSession();
		
		commandMap.put("MEMBER_ID", session.getAttribute("MEMBER_ID"));
		
		Map<String, Object> memberInfo = new HashMap<String, Object>();
		memberInfo=adminMemberService.memberDetail(commandMap.getMap());
		
		String wish_No[]=request.getParameterValues("WISHLIST_NO");
		System.out.println("받아오는 위시 NO 값 >>");
		for(int i=0;i<wish_No.length;i++) {
			System.out.println("wish_No"+i+":"+wish_No[i]);
		}
		commandMap.put("wish_No", wish_No);
		
		List<Map<String, Object>> CheckedWish = new ArrayList<Map<String, Object>>();
		
		CheckedWish = wishlistService.selectCheckedWishList(commandMap.getMap());
		
		mv.addObject("list", CheckedWish);
		mv.addObject("memberInfo", memberInfo);
		
		return mv;
	}
	
	@RequestMapping(value = "order/addwishSelected")
	public ModelAndView addSelected(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("order/paypage");
		HttpSession session = request.getSession();
		
		commandMap.put("MEMBER_ID", session.getAttribute("MEMBER_ID"));
		
		List<String> wish_No1  = WishNoUtil.parseInsertcart(commandMap, request);
		
		System.out.println("받아오는 위시 NO 값 >>");
		System.out.println(wish_No1);
		commandMap.put("wish_No", wish_No1);
	
		commandMap.put("wish_No", wish_No1);
		
			commandMap.put("MEMBER_ID", session.getAttribute("MEMBER_ID"));
			
			Map<String, Object> memberInfo = new HashMap<String, Object>();
			memberInfo=adminMemberService.memberDetail(commandMap.getMap());
			
			List<Map<String, Object>> CheckedWish = new ArrayList<Map<String, Object>>();
			
			CheckedWish = wishlistService.selectCheckedWishList(commandMap.getMap());
			
			mv.addObject("list", CheckedWish);
			mv.addObject("memberInfo", memberInfo);
		
		return mv;
	
	}
	
	// 위시리스트 불러오기
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
