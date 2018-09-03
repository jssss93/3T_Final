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

import com.kh.iclass.admin.member.AdminMemberService;
import com.kh.iclass.common.map.CommandMap;
import com.kh.iclass.common.util.SequenceUtils;
import com.kh.iclass.order.OrderService;

@Controller
public class CartController {

	@Resource(name = "cartService")
	private CartService cartService;
	
	@Resource(name = "orderService")
	private OrderService orderService;
	
	@Resource(name = "adminMemberService")
	private AdminMemberService adminMemberService;

	List<Map<String, Object>> sessionCartList = new ArrayList<Map<String, Object>>();
	String cartArr[];
	int cartNo=0;
	
	// 장바구니 담기
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "/cart/addCart")
	public ModelAndView addCart(CommandMap commandMap, HttpServletRequest request) throws Exception {

		ModelAndView mv = new ModelAndView();
		mv.setViewName("redirect:/cart/list");
		
		HttpSession session = request.getSession();

		//비회원 장바구니 등록을 위한 준비
		Map<String, Object> cartMap = new HashMap<String, Object>();
		
		List<Map<String, Object>> cartList = new ArrayList<Map<String, Object>>();
		
		// 회원 장바구니 등록
		if (session.getAttribute("MEMBER_ID") != null) { 
			commandMap.put("GOODS_NO", commandMap.get("GOODS_NO"));
			commandMap.put("ATTRIBUTE_NO", commandMap.get("attribute_no[]"));
			commandMap.put("COUNT", commandMap.get("ea[]"));
			commandMap.put("MEMBER_ID", session.getAttribute("MEMBER_ID"));
			
			//회원 카트가 존재할경우
			if(cartList != null) {
				
				//하나만 장바구니에 넘겨줄경우. 2개이상이 넘어갈경우는?
				System.out.println(commandMap.get("ATTRIBUTE_NO"));
				String addList_Attr=(String) commandMap.get("ATTRIBUTE_NO");
				
				cartList=cartService.cartList(commandMap.getMap());
				List<Object> cartList_Attr = new ArrayList<Object>();
				for(int i=0;i<cartList.size();i++) {
					cartList_Attr.add(cartList.get(i).get("ATTRIBUTE_NO"));
				}
				for(int j=0;j<cartList_Attr.size();j++) {
						System.out.println("값비교:"+j);
						System.out.println(cartList_Attr.get(j));
						System.out.println(addList_Attr);
					if(cartList_Attr.get(j).toString().equals(addList_Attr)) {
						commandMap.remove("ATTRIBUTE_NO");
						//장바구니에 동일한 속성의 상품이있습니다 장바구니에서 수량을 변경해주세요.
						mv.setViewName("error/sameAttrError");
						System.out.println("동일속성상품 중복에러");
						return mv;
					}
					
				}
				/*cartList=cartService.cartList(commandMap.getMap());
				List<Object> cartList_Attr = new ArrayList<Object>();
				for(int i=0;i<cartList.size();i++) {
					cartList_Attr.add(cartList.get(i).get("ATTRIBUTE_NO"));
				}
				
				for(int j=0;j<cartList_Attr.size();j++) {
					for(int k=0;k<addList_Attr.length;k++) {
						if(cartList_Attr.get(j)==addList_Attr[k]) {
							//장바구니에 동일한 속성의 상품이있습니다 장바구니에서 수량을 변경해주세요.
							mv.setViewName("error/sameAttrError");
							System.out.println("동일속성상품 중복에러");
							return mv;
						}
					}
				}*/
				
			}
			cartService.insertCart(commandMap.getMap());
			
			Map<String, Object> memberInfo = new HashMap<String, Object>();
			memberInfo=adminMemberService.memberDetail(commandMap.getMap());
			mv.addObject(memberInfo);
		}
		
		//비회원 장바구니 등록 (세션)
		else {
			System.out.println("비회원 장바구니 등록할때 가져오는값:"+commandMap.getMap());
			//비회원 장바구니 등록시 member_id 세션 지정
			String n_Id="nonId_"+SequenceUtils.getSeqNumber();
		    
			String GOODS_NO 	= (String) commandMap.get("GOODS_NO");
			String ATTRIBUTE_NO = (String) commandMap.get("attribute_no[]");
			String COUNT		= (String) commandMap.get("ea[]");
			String CONTENT		= (String) commandMap.get("CONTENT");
			String IMAGE		= (String) commandMap.get("IMAGE");
			String PRICE		= (String) commandMap.get("PRICE");
			String NAME			= (String) commandMap.get("NAME");
			String COLOR		= (String) commandMap.get("optno[]").toString().split("-")[0];
			String GOODS_SIZE	= (String) commandMap.get("optno[]").toString().split("-")[1];
			
			cartMap.put("CART_NO", 		cartNo++);
			cartMap.put("MEMBER_ID",	n_Id);
			cartMap.put("REGDATE", 		new Date());
			cartMap.put("ATTRIBUTE_NO",	ATTRIBUTE_NO);
			cartMap.put("GOODS_NO",		 GOODS_NO);
			cartMap.put("COUNT",		COUNT);
			cartMap.put("CONTENT",		CONTENT);
			cartMap.put("IMAGE",		IMAGE);
			cartMap.put("PRICE",		PRICE);
			cartMap.put("NAME",			NAME);
			cartMap.put("COLOR",		COLOR);
			cartMap.put("GOODS_SIZE",	GOODS_SIZE);
			
			sessionCartList.add(cartMap);
			
			session.setAttribute("sessionCartList", sessionCartList);
			System.out.println("***********세션에 저장된 sessionCartList 값 : "+session.getAttribute("sessionCartList"));
			
			List<Map<String, Object>> sessionCartMap=new ArrayList<Map<String, Object>>();
			sessionCartMap=(List<Map<String, Object>>) session.getAttribute("sessionCartList");
			System.out.println(sessionCartMap);
		
		}
		
		return mv;
	}

	// 장바구니 리스트 불러오기
	@RequestMapping(value = "/cart/list")
	public ModelAndView cartList(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("cart/List");
		
		HttpSession session = request.getSession();
		List<Map<String, Object>> cartList = new ArrayList<Map<String, Object>>();
		
		//회원 장바구니 불러오기
		if (session.getAttribute("MEMBER_ID") != null) { 
			commandMap.put("MEMBER_ID", session.getAttribute("MEMBER_ID"));
			
			cartList=cartService.cartList(commandMap.getMap());
			Map<String, Object> memberInfo = new HashMap<String, Object>();
			memberInfo=adminMemberService.memberDetail(commandMap.getMap());
			mv.addObject("memberInfo",memberInfo);
			mv.addObject("cartList", cartList);
		}
		
		//비회원장바구니불러오기
		else {
			System.out.println("비회원 장바구니 리스트:");
			System.out.println(sessionCartList);
			mv.addObject("cartList", sessionCartList);
		}
		return mv;
	}
	
	@RequestMapping(value = "/cart/deleteOne")
	public ModelAndView cartDeleteOne(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView();
		System.out.println("deleteOne 했을떄 눌리는 카트번호 :"+commandMap.get("CART_NO"));
		HttpSession session = request.getSession();

		if(session.getAttribute("MEMBER_ID") != null) {
			commandMap.put("MEMBER_ID", session.getAttribute("MEMBER_ID"));
			cartService.cartDeleteOne(commandMap.getMap());
			
		}else {
			for(int i=0;i<sessionCartList.size();i++) {
				if(sessionCartList.get(i).get("CART_NO").equals(Integer.parseInt(commandMap.get("CART_NO").toString()))) {
					sessionCartList.remove(i);
				}
			}
		}
		mv.setViewName("redirect:/cart/list");
		return mv;
	}
	//바로구매
	@RequestMapping(value = "/cart/Add/OnetoPaymentNow")
	public ModelAndView fromDetailOne(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("order/paypage");
		HttpSession session = request.getSession();
		Map<String, Object> cartMap = new HashMap<String, Object>();
		List<Map<String, Object>> fromDetailOne = new ArrayList<Map<String, Object>>();
		
		
		//회원이면
		if(session.getAttribute("MEMBER_ID")!=null) {
			commandMap.put("MEMBER_ID", session.getAttribute("MEMBER_ID"));
			Map<String, Object> memberInfo = new HashMap<String, Object>();
			memberInfo=adminMemberService.memberDetail(commandMap.getMap());
			String GOODS_NO 	= (String) commandMap.get("GOODS_NO");
			String ATTRIBUTE_NO = (String) commandMap.get("attribute_no[]");
			String COUNT		= (String) commandMap.get("ea[]");
			String CONTENT		= (String) commandMap.get("CONTENT");
			String IMAGE		= (String) commandMap.get("IMAGE");
			String PRICE		= (String) commandMap.get("PRICE");
			String NAME			= (String) commandMap.get("NAME");
			String COLOR		= (String) commandMap.get("optno[]").toString().split("-")[0];
			String GOODS_SIZE	= (String) commandMap.get("optno[]").toString().split("-")[1];
			
			cartMap.put("REGDATE", 		new Date());
			cartMap.put("ATTRIBUTE_NO",	ATTRIBUTE_NO);
			cartMap.put("GOODS_NO",		 GOODS_NO);
			cartMap.put("COUNT",		COUNT);
			cartMap.put("CONTENT",		CONTENT);
			cartMap.put("IMAGE",		IMAGE);
			cartMap.put("PRICE",		PRICE);
			cartMap.put("NAME",			NAME);
			cartMap.put("COLOR",		COLOR);
			cartMap.put("GOODS_SIZE",	GOODS_SIZE);
			
			
			fromDetailOne.add(cartMap);
			
			mv.addObject("list", fromDetailOne);
			mv.addObject("memberInfo", memberInfo);
			
			if(commandMap.get("cart_No")!=null) {
				cartService.cartDeleteSelect(commandMap.getMap());
			}
		//비회원이면
		}else {
			System.out.println("여기로?");
			fromDetailOne=(List<Map<String, Object>>) session.getAttribute("fromDetailOne");
			
			mv.addObject("list",fromDetailOne);
		}
		return mv;
	
	}
	
	//회원,비회원 카트->오더 한개 추가  (장바구니에있는값으로 가져간다.)
	@RequestMapping(value = "/cart/Add/OnetoPayment")
	public ModelAndView cartAddtoPayment(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("order/paypage");
		HttpSession session = request.getSession();
		
		if(session.getAttribute("MEMBER_ID") != null) {
			commandMap.put("MEMBER_ID", session.getAttribute("MEMBER_ID"));
			
			Map<String, Object> memberInfo = new HashMap<String, Object>();
			memberInfo=adminMemberService.memberDetail(commandMap.getMap());
			
			String cart_No[]=request.getParameterValues("CART_NO");
			System.out.println("받아오는 카트 NO 값 >>");
			for(int i=0;i<cart_No.length;i++) {
				System.out.println("cart_No"+i+":"+cart_No[i]);
			}	
			commandMap.put("cart_No", cart_No);
			session.setAttribute("CART_NO", commandMap.get("cart_No"));
			
			List<Map<String, Object>> checkedCartList = new ArrayList<Map<String, Object>>();
			
			checkedCartList=cartService.checkedCartList(commandMap.getMap());
			
			mv.addObject("list", checkedCartList);
			mv.addObject("memberInfo", memberInfo);
			
		} else {
			if (request.getParameterValues("CART_NO") != null) {
				cartArr = request.getParameterValues("CART_NO");
			} else {
				cartArr = (String[]) session.getValue("CART_NO2");
			}
			List<Map<String, Object>> sessionCheckedCartList = new ArrayList<Map<String, Object>>();
			for (int i = 0; i < sessionCartList.size(); i++) {
				for (int j = 0; j < cartArr.length; j++) {
					if (sessionCartList.get(i).get("CART_NO").equals(Integer.parseInt(cartArr[j]))) {
						sessionCheckedCartList.add(sessionCartList.get(i));

					}
				}
			}
			System.out.println("sessionCheckedCartList" + sessionCheckedCartList);
			mv.addObject("list", sessionCheckedCartList);
			mv.addObject("MEMBER_ID", session.getAttribute("NON_MEMBER_ID"));
		}
		return mv;
	}
	
	// 비회원으로 상품 구매시 로그인폼.
	@RequestMapping(value = "/loginForm2")
	public ModelAndView loginForm2(HttpServletRequest request,CommandMap commandMap) {
		HttpSession session = request.getSession();
		System.out.println("찍혀라"+session.getValue("CART_NO2"));
		ModelAndView mv = new ModelAndView();
		mv.setViewName("member/loginForm2");
	    return mv;
	}
	// 비회원으로 상품 구매시 로그인폼.
	@RequestMapping(value = "/loginForm3")
	public ModelAndView loginForm3(HttpServletRequest request,CommandMap commandMap) {
		HttpSession session = request.getSession();
		ModelAndView mv = new ModelAndView();
		mv.setViewName("member/loginForm3");
	    return mv;
	}
	    
	// 비회원으로 상품 구매 로그인(세션주기).
	@RequestMapping(value = "/nonMember2")
	public ModelAndView nonMemLogin(HttpServletRequest request, CommandMap commandMap) {
		System.out.println("비회원으로 상품 구매 로그인됨. 비회원ID:"+"nonId_"+SequenceUtils.getSeqNumber());
	    ModelAndView mv = new ModelAndView();
	    HttpSession session = request.getSession();
	    
	    session.setAttribute("NON_MEMBER_ID", "nonId_"+SequenceUtils.getSeqNumber());
	    mv.setViewName("redirect:/cart/Add/OnetoPayment");
	    return mv;
	}
	// 비회원으로 상품 구매 로그인(세션주기).
	@RequestMapping(value = "/nonMember3")
	public ModelAndView nonMemLogin2(HttpServletRequest request, CommandMap commandMap) {
		System.out.println("비회원으로 상품 구매 로그인됨. 비회원ID:"+"nonId_"+SequenceUtils.getSeqNumber());
	    ModelAndView mv = new ModelAndView();
	    HttpSession session = request.getSession();
	    
	    session.setAttribute("NON_MEMBER_ID", "nonId_"+SequenceUtils.getSeqNumber());
	    mv.setViewName("redirect:/cart/Add/OnetoPaymentNow");
	    return mv;
	}
	
	@RequestMapping(value = "/cart/CountUp")
	public ModelAndView cartCountUp(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView();
		System.out.println("넘어오는값:"+commandMap.getMap());
		HttpSession session = request.getSession();
		
		if(session.getAttribute("MEMBER_ID") != null) {
			commandMap.put("MEMBER_ID", session.getAttribute("MEMBER_ID"));
			cartService.countUp(commandMap.getMap());
		}else {
			
		}
		
		mv.setViewName("redirect:/cart/list");
		
		return mv;
	}
	
	@RequestMapping(value = "/cart/CountDown")
	public ModelAndView cartCountDown(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView();

		HttpSession session = request.getSession();
		
		if(session.getAttribute("MEMBER_ID") != null) {
			commandMap.put("MEMBER_ID", session.getAttribute("MEMBER_ID"));
			cartService.countDown(commandMap.getMap());
		}else {
			
		}
		
		mv.setViewName("redirect:/cart/list");
		
		return mv;
	}
	@RequestMapping(value = "/cart/CountChange")
	public ModelAndView cartChange(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView();
		System.out.println("넘어오는값:"+commandMap.getMap());
		HttpSession session = request.getSession();
		
		if(session.getAttribute("MEMBER_ID") != null) {
			commandMap.put("MEMBER_ID", session.getAttribute("MEMBER_ID"));
			cartService.countChange(commandMap.getMap());
		}else {
			
		}
		
		mv.setViewName("redirect:/cart/list");
		
		return mv;
	}
	
	//선택상품삭제.
	@RequestMapping(value = "/cart/deleteSelect")
	public ModelAndView cartDeleteSelect(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView();

		HttpSession session = request.getSession();
		
		String cart_No[]=request.getParameterValues("CART_NO");
		
		System.out.println("선택된 카트 번호 : ");
		for(int i=0;i<cart_No.length;i++) {
			System.out.println("cart_No["+i+"]:"+cart_No[i]);
		}
		
		if(session.getAttribute("MEMBER_ID") != null) {
			commandMap.put("MEMBER_ID", session.getAttribute("MEMBER_ID"));
			commandMap.put("cart_No", cart_No);
			
			cartService.cartDeleteSelect(commandMap.getMap());
		}else {
			for(int i=0;i<sessionCartList.size();i++) {
				for(int j=0;j<cart_No.length;j++) {
					if(sessionCartList.get(i).get("CART_NO").equals(Integer.parseInt(cart_No[j]))) {
						sessionCartList.remove(i);
					}
				}
			}
			
		}
		mv.setViewName("redirect:/cart/list");
		return mv;
	}
	
	@RequestMapping(value = "/cart/deleteAll")
	public ModelAndView cartDeleteAll(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView();

		HttpSession session = request.getSession();
		
		if(session.getAttribute("MEMBER_ID") != null) {
			commandMap.put("MEMBER_ID", session.getAttribute("MEMBER_ID"));
			cartService.cartDeleteAll(commandMap.getMap());
		}else {
			sessionCartList.clear();
		}
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
