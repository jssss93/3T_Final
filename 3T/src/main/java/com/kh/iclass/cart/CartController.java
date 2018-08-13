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
		mv.setViewName("redirect:/goods/list");
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
		
		
		
		
		
		
		
		
		
		/*else { // 비회원 장바구니 등록
			commandMap.put("GOODS_NO", commandMap.get("GOODS_NO"));
			commandMap.put("ATTRIBUTE_NO", commandMap.get("ATTRIBUTE_NO"));

			if (commandMap.get("optno[]") instanceof String) { // 하나의 정보만 전송되면
				
				String b = (String) commandMap.get("ea[]"); // 수량
				String c = (String) commandMap.get("kinds[]"); // 종류
				Integer e = Integer.parseInt(commandMap.get("GOODS_NUMBER").toString());

				int dup = 0; // 중복데이터 있으면 1, 없으면 0유지

				// 중복 데이터가 없으면 등록 안함
				if (cartSession.size() != 0) {
					for (int i = 0; i < cartSession.size(); i++) {
						if (cartSession.get(i).get("GOODS_KIND_NUMBER").equals(c)) {
							dup = 1;
						}
					}
					if (dup == 0) {
						cartMap = new HashMap<String, Object>();
						cartMap.put("GOODS_KIND_NUMBER", c);
						cartMap.put("CART_AMOUNT", b);
						cartMap.put("GOODS_NUMBER", e);
						cartSession.add(cartMap);
					}
				} else {
					cartSession = new ArrayList<Map<String, Object>>();
					cartMap = new HashMap<String, Object>();
					cartMap.put("GOODS_KIND_NUMBER", c);
					cartMap.put("CART_AMOUNT", b);
					cartMap.put("GOODS_NUMBER", e);
					cartSession.add(cartMap);
				}

			} else { // 로그인정보도 없고, 전송된 데이터가 여러개면
				String a[] = (String[]) commandMap.get("kinds[]");
				String b[] = (String[]) commandMap.get("ea[]");
				Integer e = Integer.parseInt(commandMap.get("GOODS_NUMBER").toString());
				int dup = 0;
				System.out.println(cartSession);
				if (cartSession.size() != 0) {
					System.out.println("장바구니가 이미 존재할때 추가 등록하는 경우");
					for (int i = 0; i < a.length; i++) {
						dup = 0; // 0이면 중복 없음. 1이면 중복있음
						for (int j = 0; j < cartSession.size(); j++) {
							if (a[i].equals(cartSession.get(j).get("GOODS_KIND_NUMBER"))) {
								dup = 1;
							}
						}
						if (dup == 0) {
							cartMap = new HashMap<String, Object>();
							cartMap.put("GOODS_KIND_NUMBER", a[i]);
							cartMap.put("CART_AMOUNT", b[i]);
							cartMap.put("GOODS_NUMBER", e);
							cartSession.add(cartMap);
						}
					}
				} else {
					cartSession = new ArrayList<Map<String, Object>>();
					for (int i = 0; i < a.length; i++) {
						System.out.println("장바구니가 비었을때 등록하는 경우");
						cartMap = new HashMap<String, Object>();
						cartMap.put("GOODS_KIND_NUMBER", a[i]);
						cartMap.put("CART_AMOUNT", b[i]);
						cartMap.put("GOODS_NUMBER", e);
						cartSession.add(i, cartMap);
					}
				}
			}
		}*/
		session.setAttribute("cartSession", cartSession);
		System.out.println("최종 cartSession : " + session.getAttribute("cartSession"));
		return mv;

	}

	// 장바구니 리스트 불러오기
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "/cart/List")
	public ModelAndView cartList(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView();

		List<Map<String, Object>> cartList = new ArrayList<Map<String, Object>>();

		Calendar today = Calendar.getInstance();
		Date d = new Date(today.getTimeInMillis());

		HttpSession session = request.getSession();
		List<Map<String, Object>> cartSession = new ArrayList<Map<String, Object>>();
		Map<String, Object> cartMap = new HashMap<String, Object>();

		if (session.getAttribute("MEMBER_ID") != null) {
			commandMap.put("MEMBER_ID", session.getAttribute("MEMBER_ID"));
			cartList = cartService.cartList(commandMap.getMap());
		} /*else {
			if (session.getAttribute("cartSession") != null) {
				cartSession = (List<Map<String, Object>>) session.getAttribute("cartSession");
				for (int i = 0; i < cartSession.size(); i++) {
					cartMap = new HashMap<String, Object>();
					cartMap.put("GOODS_KIND_NUMBER", cartSession.get(i).get("GOODS_KIND_NUMBER"));
					cartMap.put("GOODS_NUMBER", cartSession.get(i).get("GOODS_NUMBER"));

					cartMap = cartService.sessionCartList(cartMap);
					cartMap.put("CART_AMOUNT", cartSession.get(i).get("CART_AMOUNT"));

					cartList.add(cartMap);
				}
			}
		}*/
		
		mv.addObject("cartList", cartList);
		System.out.println("CARTLIST :" + cartList);
		mv.setViewName("cart/list");
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

	@SuppressWarnings("unchecked")
	@RequestMapping(value = "/cartDelete")
	public ModelAndView cartDelete(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("redirect:/cartList");
		HttpSession session = request.getSession();
		List<Map<String, Object>> cartSession = new ArrayList<Map<String, Object>>();
		Map<String, Object> cartMap = new HashMap<String, Object>();
		
		
		List<String> GKN = new ArrayList<String>();
		
		if(commandMap.get("GOODS_KIND_NUMBER") instanceof String) {
			String a =   (String) commandMap.get("GOODS_KIND_NUMBER");
			String[] total;
			total =a.split(",");
			GKN.add(total[0]);
		}
		else if(commandMap.get("GOODS_KIND_NUMBER") instanceof String[]) {
		String[] a =   (String[]) commandMap.get("GOODS_KIND_NUMBER");
		
		for(int i=0; i<a.length; i++) {
			String[] total;
			total =a[i].split(",");
			
			GKN.add(total[0]);
			}
		}
		
		
		if (session.getAttribute("MEMBER_NUMBER") != null) {// 회원 장바구니 삭제
	         if (commandMap.get("GOODS_KIND_NUMBER") instanceof String) { // 장바구니 한개 선택해서 삭제
	            cartMap = new HashMap<String, Object>();
	            cartMap.put("MEMBER_NUMBER", session.getAttribute("MEMBER_NUMBER"));
	            cartMap.put("GOODS_KIND_NUMBER", commandMap.get("GOODS_KIND_NUMBER"));
	            cartService.deleteMyCart(cartMap);
	         } else { // 장바구니 여러개 선택해서 삭제
	            String[] cart_number = (String[]) commandMap.get("GOODS_KIND_NUMBER");
	            for (int j = 0; j < cart_number.length; j++) {
	               cartMap = new HashMap<String, Object>();
	               cartMap.put("MEMBER_NUMBER", session.getAttribute("MEMBER_NUMBER"));
	               cartMap.put("GOODS_KIND_NUMBER", cart_number[j]);
	               cartService.deleteMyCart(cartMap);
	            }
	         }
		} else { // 비회원 장바구니 삭제
			if (GKN.size()==1) {
				cartSession = (List<Map<String, Object>>) session.getAttribute("cartSession");
				//System.out.println("리스트로 받은 cartSession : " + cartSession);
				for (int i = 0; i < cartSession.size(); i++) {
					if (cartSession.get(i).get("GOODS_KIND_NUMBER").equals(GKN.get(0))) {
						cartSession.remove(i);
					}
				}
			} else {
				//String[] goods_kind = (String[]) commandMap.get("GOODS_KIND_NUMBER");
				for (int j = 0; j < GKN.size(); j++) {
					cartSession = (List<Map<String, Object>>) session.getAttribute("cartSession");
					for (int i = 0; i < cartSession.size(); i++) {
						if (cartSession.get(i).get("GOODS_KIND_NUMBER").equals(GKN.get(j))) {
							cartSession.remove(i);
						}
					}
				}
			}
		}

		return mv;

	}
	
	
	@RequestMapping(value = "cartOrder")
	public ModelAndView orderFormLoginAop(CommandMap commandMap, HttpServletRequest request) throws Exception {

		HttpSession session = request.getSession();
		ModelAndView mv = new ModelAndView("orderForm");
		
		if (session.getAttribute("MEMBER_NUMBER") != null) {

				System.out.println("장바구니 구매");

				commandMap.put("MEMBER_NUMBER", session.getAttribute("MEMBER_NUMBER"));

				Map<String, Object> orderMember = orderService.orderMember(commandMap.getMap());
				
				//System.out.println(orderMember.get("MEMBER_NUMBER"));
				
				mv.addObject("orderMember", orderMember);
				
				
				String[] kk = request.getParameterValues("GOODS_KIND_NUMBER");
				
				List<String> goods_kinds_number= new ArrayList<String>();
				
				for(int i=0; i<kk.length; i++) {
					String[] total;
					total =kk[i].split(",");
					System.out.println(total[0]);
					
					goods_kinds_number.add(total[0]);
					
				}
				
				System.out.println(goods_kinds_number);
				
				
				List<String> ea = new ArrayList<String>();

				List<Map<String, Object>> goods1 = new ArrayList<Map<String, Object>>();
				List<Map<String, Object>> goods = new ArrayList<Map<String, Object>>();

				for (int i = 0; i < goods_kinds_number.size(); i++) {

					commandMap.put("GOODS_KIND_NUMBER", goods_kinds_number.get(i));
					
					System.out.println(commandMap.getMap().get("GOODS_KIND_NUMBER"));
					
					Map<String, Object> cartList = cartService.buyInCart(commandMap.getMap());
					
					

					String e = cartList.get("CART_AMOUNT").toString();
					cartList.put("EA", e);

					ea.add(e);

					System.out.println("e : " + e);
					System.out.println("ea : " + ea);

					goods1.add(cartList);

					System.out.println("goods : " + goods1);

					mv.addObject("GOODS_NUMBER", goods1.get(i).get("GOODS_NUMBER"));

				}

				String[] sArrays = ea.toArray(new String[ea.size()]);

				for (String s : sArrays) {
					System.out.println(s);
				}

				for (int i = 0; i < sArrays.length; i++) {

					commandMap.put("GOODS_KIND_NUMBER", goods_kinds_number.get(i));
					commandMap.put("EA", sArrays[i]);
					commandMap.put("GOODS_NUMBER", goods1.get(i).get("GOODS_NUMBER"));

					Map<String, Object> orderGoods = orderService.orderGoods(commandMap.getMap());

					orderGoods.put("EA", sArrays[i]);

					goods.add(orderGoods);

					System.out.println("goods : " + goods);

					mv.addObject("ea", sArrays[i]);

				}


				//mv.addObject("guestEmail", commandMap.get("guestEmail"));

				mv.addObject("goods_kinds_number", goods_kinds_number);

				
				mv.addObject("goods", goods);

				return mv;
			
		}else {
		
		
		System.out.println("여기는 orderLogin 폼 거쳐서 오는 비회원 거래처");

		//ModelAndView mv = new ModelAndView("orderForm");

		commandMap.put("GOODS_NUMBER", session.getAttribute("GOODS_NUMBER"));

		

		
		List<String> cart_kinds_number= new ArrayList<String>();
		List<String> CART_AMOUNT= new ArrayList<String>();
		
		String[] k_a = request.getParameterValues("GOODS_KIND_NUMBER");
		
		System.out.println("확인합시다");
		System.out.println(k_a[0]);
		//System.out.println(k_a[1]);
		
		for(int i=0; i<k_a.length; i++) {
			String[] total;
			total =k_a[i].split(",");
			System.out.println(total[0]);
			System.out.println(total[1]);
			
			
			cart_kinds_number.add(total[0]);
			CART_AMOUNT.add(total[1]);
		}

		Map<String, Object> cartList = new HashMap<String, Object>();
		List<Map<String, Object>> goods = new ArrayList<Map<String, Object>>();

		if (k_a != null) {
			for (int i = 0; i < k_a.length; i++) {

				commandMap.put("GOODS_KIND_NUMBER", cart_kinds_number.get(i));

				if (session.getAttribute("MEMBER_NUMBER") == null) {
					if (session.getAttribute("cartSession") != null) {
					
						for (int j = 0; j < k_a.length; j++) {
						
							commandMap.put("GOODS_KIND_NUMBER", cart_kinds_number.get(j));
							commandMap.put("EA", CART_AMOUNT.get(j));
							commandMap.put("GOODS_NUMBER", commandMap.getMap().get("GOODS_NUMBER"));
							
							Map<String, Object> orderGoods = orderService.orderGoods2(commandMap.getMap());
							
							orderGoods.put("EA", CART_AMOUNT.get(j));

							goods.add(orderGoods);
							
							mv.addObject("ea", cartList.get("CART_AMOUNT"));
							mv.addObject("guestEmail", commandMap.get("guestEmail"));
							mv.addObject("goods_kind_number", cart_kinds_number);
							mv.addObject("goods", goods);

						}
						return mv; //비회원 주문은 딱 여기까지임~
						
						}
					}
				}
			}
		}
		return mv;
	}
}
