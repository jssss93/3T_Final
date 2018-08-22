package com.kh.iclass.cart;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.iclass.common.map.CommandMap;
import com.kh.iclass.order.OrderService;

@Controller
public class CartController {

	@Resource(name = "cartService")
	private CartService cartService;
	
	@Resource(name = "orderService")
	private OrderService orderService;

	List<Map<String, Object>> cartSession = new ArrayList<Map<String, Object>>();

	// 장바구니 담기
	@SuppressWarnings("unused")
	@RequestMapping(value = "/cart/addCart")
	public ModelAndView addCart(CommandMap commandMap, HttpServletRequest request) throws Exception {

		ModelAndView mv = new ModelAndView();
		mv.setViewName("redirect:/cart/list");
		HttpSession session = request.getSession();

		Map<String, Object> cartMap = new HashMap<String, Object>();
		
		// 회원 장바구니 등록
		//장바구니에 하나 들어간다.
	      
		if (session.getAttribute("MEMBER_ID") != null) { 
			commandMap.put("GOODS_NO", commandMap.get("GOODS_NO"));
			commandMap.put("ATTRIBUTE_NO", commandMap.get("attribute_no[]"));
			commandMap.put("COUNT", commandMap.get("ea[]"));
			commandMap.put("MEMBER_ID", session.getAttribute("MEMBER_ID"));
			System.out.println("commandMap.getMap():"+commandMap.getMap());
			
			//장바구니생성
			/*cartService.cartInsert(commandMap.getMap());
			System.out.println("cartInsert 실행됨.");
			*/
			//장바구니 에 상품 속성 추가
			System.out.println("commandMap.getMap():"+commandMap.getMap());
			cartService.insertCart(commandMap.getMap());
			
		} 
		session.setAttribute("cartSession", cartSession);
		System.out.println("최종 cartSession : " + session.getAttribute("cartSession"));
		return mv;

	}

	// 장바구니 리스트 불러오기
	@RequestMapping(value = "/cart/list")
	public ModelAndView cartList(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView();

		HttpSession session = request.getSession();
		List<Map<String, Object>> cartList = new ArrayList<Map<String, Object>>();
		
		commandMap.put("MEMBER_ID", session.getAttribute("MEMBER_ID"));
		cartList=cartService.cartList(commandMap.getMap());
		
		mv.addObject("cartList", cartList);
		System.out.println("CARTLIST :" + cartList);
		mv.setViewName("cart/list-hanbyul");
		return mv;
	}
	
	@RequestMapping(value = "/cart/deleteOne")
	public ModelAndView cartDeleteOne(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView();

		HttpSession session = request.getSession();
		commandMap.put("MEMBER_ID", session.getAttribute("MEMBER_ID"));
		cartService.cartDeleteOne(commandMap.getMap());
		
		mv.setViewName("redirect:/cart/list");
		return mv;
	}
	
	@RequestMapping(value = "/cart/deleteSelect")
	public ModelAndView cartDeleteSelect(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView();

		HttpSession session = request.getSession();
		commandMap.put("MEMBER_ID", session.getAttribute("MEMBER_ID"));
		
		String cart_No[]=request.getParameterValues("CART_NO");
		
		System.out.println("선택된 카트 번호 : ");
		for(int i=0;i<cart_No.length;i++) {
			System.out.println("cart_No"+i+":"+cart_No[i]);
		}
		commandMap.put("cart_No", cart_No);
		
		cartService.cartDeleteSelect(commandMap.getMap());
		
		mv.setViewName("redirect:/cart/list");
		return mv;
	}
	
	@RequestMapping(value = "/cart/deleteAll")
	public ModelAndView cartDeleteAll(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView();

		HttpSession session = request.getSession();
		commandMap.put("MEMBER_ID", session.getAttribute("MEMBER_ID"));
		cartService.cartDeleteAll(commandMap.getMap());
		
		mv.setViewName("redirect:/cart/list");
		return mv;
	}

	// 카트 옵션 수정 폼
	@RequestMapping(value = "cart/cartOptionForm")
	public ModelAndView cartOptionForm(CommandMap commandMap, HttpServletRequest request) throws Exception {

		Calendar today = Calendar.getInstance();
		Date d = new Date(today.getTimeInMillis());

		HttpSession session = request.getSession();
		Map<String, Object> cartOption = new HashMap<String, Object>();
		ModelAndView mv = new ModelAndView("cart/cartOption");

		if (session.getAttribute("MEMBER_NUMBER") != null) { // 회원
			cartOption = cartService.selectOption(commandMap.getMap());

		} else { // 비회원
			cartOption = cartService.sessionOption(commandMap.getMap());
			cartOption.put("CART_AMOUNT", commandMap.get("CART_AMOUNT")); // CART_AMOUNT를 뽑는 칼럼이 쿼리문에 없어서 넣어줌
			System.out.println("비회원 cartOptionForm :" + cartOption);
		}

		mv.addObject("cartOption", cartOption);
		return mv;
	}

	@SuppressWarnings("unchecked")
	@RequestMapping(value = "/optionModify")
	public ModelAndView optionModify(CommandMap commandMap, HttpServletRequest request) throws Exception {

		ModelAndView mv = new ModelAndView();
		mv.setViewName("redirect:/cartList");
		HttpSession session = request.getSession();
		List<Map<String, Object>> cartSession = new ArrayList<Map<String, Object>>();
		Map<String, Object> cartMap = new HashMap<String, Object>();

		if (session.getAttribute("MEMBER_NUMBER") != null) {
			cartMap.put("CART_NUMBER", commandMap.getMap().get("CART_NUMBER"));
			cartMap.put("CART_AMOUNT", commandMap.getMap().get("ea"));
			cartService.updateCarts(cartMap);
		} else {
			cartSession = (List<Map<String, Object>>) session.getAttribute("cartSession");
			for (int i = 0; i < cartSession.size(); i++) {
				if (cartSession.get(i).get("GOODS_KIND_NUMBER").equals(commandMap.get("GOODS_KIND_NUMBER"))) {
					cartSession.get(i).remove("CART_AMOUNT");
					cartSession.get(i).put("CART_AMOUNT", commandMap.getMap().get("ea"));
				}
			}
			session.setAttribute("cartSession", cartSession);
		}

		return mv;
	}

	
	
}
