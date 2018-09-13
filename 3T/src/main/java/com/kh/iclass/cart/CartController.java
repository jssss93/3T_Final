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
import com.kh.iclass.common.util.RSAKeySet;
import com.kh.iclass.common.util.SequenceUtils;
import com.kh.iclass.member.MemberService;
import com.kh.iclass.order.OrderService;

@Controller
public class CartController {

	@Resource(name = "cartService")
	private CartService cartService;
	
	@Resource(name = "orderService")
	private OrderService orderService;
	
	@Resource(name = "adminMemberService")
	private AdminMemberService adminMemberService;
	
	@Resource(name="memberService")
	private MemberService memberService;

	List<Map<String, Object>> sessionCartList = new ArrayList<Map<String, Object>>();
	
	String cartArr[];
	int cartNo=0;
	
	// 장바구니 담기
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "/cart/addCart")
	public ModelAndView addCart(CommandMap commandMap, HttpServletRequest request) throws Exception {
		
		System.out.println("addCart 하면 넘어오는값:");
		System.out.println(commandMap.getMap());
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("redirect:/cart/list");
		
		HttpSession session = request.getSession();

		
		
		List<Map<String, Object>> cartList = new ArrayList<Map<String, Object>>();
		
		// 회원 장바구니 등록
		if (session.getAttribute("MEMBER_ID") != null) { 
			commandMap.put("GOODS_NO", commandMap.get("GOODS_NO"));
			commandMap.put("ATTRIBUTE_NO", commandMap.get("attribute_no[]"));
			commandMap.put("COUNT", commandMap.get("ea[]"));
			commandMap.put("MEMBER_ID", session.getAttribute("MEMBER_ID"));
			
			
			//여러개 카트추가
			if(commandMap.get("ATTRIBUTE_NO") instanceof Object[]) {
				//회원 카트가 존재하면  or 존재하지 않으면.
				
				//1개추가될때마다 속성이 하나 더들어오므로 속성으로 count 가능.
				String[] Attr	=(String[]) commandMap.get("ATTRIBUTE_NO");
				
				List<Object> addList_Attr=new ArrayList<Object>();
				for(int i=0;i<Attr.length;i++) {
					addList_Attr.add(Attr[i]);
				}
				
				cartList=cartService.cartList(commandMap.getMap());
				List<Object> cartList_Attr=new ArrayList<Object>();
				
				for(int i=0;i<cartList.size();i++) {
					cartList_Attr.add(cartList.get(i).get("ATTRIBUTE_NO"));
				}
				
				//값 비교 시작.
				for(int j=0;j<cartList_Attr.size();j++) {
					for(int i=0;i<addList_Attr.size();i++) {
						if(cartList_Attr.get(j).toString().equals(addList_Attr.get(i).toString())) {
							mv.setViewName("error/sameAttrError");
							System.out.println("동일속성상품 중복에러");
							return mv;
						}
					}
				}
				
				cartService.insertCart2(commandMap,request);
				return mv;
				
			//1개 카트추가
			}else {
			
				//회원 카트가 존재할경우
				if(cartList != null) {
					
					//하나만 장바구니에 넘겨줄경우. 2개이상이 넘어갈경우는?
					System.out.println(commandMap.get("ATTRIBUTE_NO"));
					String addList_Attr1=(String) commandMap.get("ATTRIBUTE_NO");
					
					cartList=cartService.cartList(commandMap.getMap());
					List<Object> cartList_Attr = new ArrayList<Object>();
					
					for(int i=0;i<cartList.size();i++) {
						cartList_Attr.add(cartList.get(i).get("ATTRIBUTE_NO"));
					}
					
					for(int j=0;j<cartList_Attr.size();j++) {
							System.out.println("값비교:"+j);
							System.out.println(cartList_Attr.get(j));
							System.out.println(addList_Attr1);
						if(cartList_Attr.get(j).toString().equals(addList_Attr1)) {
							/*commandMap.remove("ATTRIBUTE_NO");*/
							//장바구니에 동일한 속성의 상품이있습니다 장바구니에서 수량을 변경해주세요.
							
							mv.setViewName("error/sameAttrError");
							System.out.println("동일속성상품 중복에러");
							return mv;
						}
						
					}
					
				}
			}
			
			
			cartService.insertCart(commandMap.getMap());
			
			/*Map<String, Object> memberInfo = new HashMap<String, Object>();
			memberInfo=adminMemberService.memberDetail(commandMap.getMap());
			mv.addObject(memberInfo);*/
		}
		
		
		//비회원일때 장바구니 등록 (세션)
		//이거도 중복 제거 해야 하니?
		else {
			//비회원 로그인 정보도 없으면 
			System.out.println("NON_MEMBER_ID정보:");
			System.out.println(session.getAttribute("NON_MEMBER_ID"));
			if(session.getAttribute("NON_MEMBER_ID")==null) {
				mv.setViewName("member/loginForm3");
				return mv;
			}
			
			//비회원 여러개 들어올때.
			if(commandMap.get("attribute_no[]") instanceof Object[]) {
				System.out.println("여기 안들어가니?중복인서트");
				
				String[] cartList_Attr= (String[]) commandMap.getList("attribute_no[]").get(0);
				String[] cartList_OptNo=(String[]) commandMap.getList("optno[]").get(0);
				String[] cartList_Count=(String[]) commandMap.getList("ea[]").get(0);

				for(int i=0;i<cartList_OptNo.length;i++) {
					Map<String, Object> addMap = new HashMap<String, Object>();
					
					addMap.put("CART_NO", 		cartNo++);
					addMap.put("GOODS_NO", 		commandMap.get("GOODS_NO"));
					addMap.put("CONTENT", 		commandMap.get("CONTENT"));
					addMap.put("IMAGE", 		commandMap.get("IMAGE"));
					addMap.put("PRICE", 		commandMap.get("PRICE"));
					addMap.put("NAME", 			commandMap.get("NAME"));
					
					addMap.put("COLOR", 		cartList_OptNo[i].split("-")[0]);
					addMap.put("GOODS_SIZE", 	cartList_OptNo[i].split("-")[1]);
					addMap.put("COUNT", 		cartList_Count[i]);
					addMap.put("ATTRIBUTE_NO", 	cartList_Attr[i]);
					//값 비교 시작.
					
					if(sessionCartList!=null) {
						for(int j=0;j<sessionCartList.size();j++) {
							System.out.println(j+"번쨰 세션카트와 비교");
							System.out.println(sessionCartList.get(j).get("ATTRIBUTE_NO")+","+addMap.get("ATTRIBUTE_NO"));
							if(sessionCartList.get(j).get("ATTRIBUTE_NO").equals(addMap.get("ATTRIBUTE_NO"))) {
								mv.setViewName("error/sameAttrError");
								cartNo--;
								return mv;
							}
						}
					}
					sessionCartList.add(addMap);
				}
				session.setAttribute("sessionCartList", sessionCartList);
				return mv;
				
				//비회원 하나들어올ㄸ
			}else {
				System.out.println("여기도가니?");
			
				List<Map<String, Object>> CartList=new ArrayList<Map<String, Object>>();
				Map<String, Object> cartMap = new HashMap<String, Object>();
				
				System.out.println("비회원 장바구니 등록할때 가져오는값:"+commandMap.getMap());
				//비회원 장바구니 등록시 member_id 세션 지정
				String n_Id=(String) session.getAttribute("NON_MEMBER_ID");
			    
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
				
				//중복비교.
				//카트에 무언가가 들어있으면 (비교해서 중복되면 세션에인서트 X)
				if(session.getAttribute("sessionCartList")!=null) {
					CartList=(List<Map<String, Object>>) session.getAttribute("sessionCartList");
					System.out.println("********");
					System.out.println(CartList);
					//CartList 가 자꾸 Null 뜨는데?
					for(int i=0;i<CartList.size();i++) {
						System.out.println("************************");
						System.out.println(CartList.get(i).get("ATTRIBUTE_NO")+","+cartMap.get("ATTRIBUTE_NO"));
						System.out.println(CartList.get(i).get("ATTRIBUTE_NO").toString().equals(cartMap.get("ATTRIBUTE_NO")));
						if(CartList.get(i).get("ATTRIBUTE_NO").toString().equals(cartMap.get("ATTRIBUTE_NO"))) {
							mv.setViewName("error/sameAttrError");
							return mv;
						}
					}
					
					
				}
				
				
				sessionCartList.add(cartMap);
				
				session.setAttribute("sessionCartList", sessionCartList);
				System.out.println("***********세션에 저장된 sessionCartList 값 : "+session.getAttribute("sessionCartList"));
				
				List<Map<String, Object>> sessionCartMap=new ArrayList<Map<String, Object>>();
				sessionCartMap=(List<Map<String, Object>>) session.getAttribute("sessionCartList");
				System.out.println(sessionCartMap);
			}
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
	
 	
	//디테일에서 바로구매
	@RequestMapping(value = "/cart/Add/OnetoPaymentNow")
	public ModelAndView fromDetailOne(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("order/paypage");
		HttpSession session = request.getSession();
		Map<String, Object> cartMap = new HashMap<String, Object>();
		List<Map<String, Object>> fromDetailOne = new ArrayList<Map<String, Object>>();
		

		//2개이상
		if(commandMap.getList("attribute_no[]").get(0) instanceof Object[]) {
			System.out.println("들어오냐");
			String[] cartList_Attr= (String[]) commandMap.getList("attribute_no[]").get(0);
			String[] cartList_OptNo=(String[]) commandMap.getList("optno[]").get(0);
			String[] cartList_Count=(String[]) commandMap.getList("ea[]").get(0);
			for(int i=0;i<cartList_OptNo.length;i++) {
				Map<String, Object> addMap = new HashMap<String, Object>();
								
				addMap.put("REGDATE", 		new Date());
				addMap.put("GOODS_NO", 		commandMap.get("GOODS_NO"));
				addMap.put("CONTENT", 		commandMap.get("CONTENT"));
				addMap.put("IMAGE", 		commandMap.get("IMAGE"));
				addMap.put("PRICE", 		commandMap.get("PRICE"));
				addMap.put("NAME", 			commandMap.get("NAME"));
								
				addMap.put("COLOR", 		cartList_OptNo[i].split("-")[0]);
				addMap.put("GOODS_SIZE", 	cartList_OptNo[i].split("-")[1]);
				addMap.put("COUNT", 		cartList_Count[i]);
				addMap.put("ATTRIBUTE_NO", 	cartList_Attr[i]);
				System.out.println(i+"번쨰 addMap.get(Att)");
				System.out.println(addMap.get("ATTRIBUTE_NO"));
				
				fromDetailOne.add(addMap);
			}
			
			session.setAttribute("fromDetailOne",fromDetailOne);
			mv.addObject("list", fromDetailOne);
			
			//회원이면
			if(session.getAttribute("MEMBER_ID")!=null) {
				commandMap.put("MEMBER_ID", session.getAttribute("MEMBER_ID"));
				Map<String, Object> memberInfo = new HashMap<String, Object>();
				Map<String, Object> couponAll = new HashMap<String, Object>();
				
				memberInfo=adminMemberService.memberDetail(commandMap.getMap());
				couponAll = memberService.couponAll(commandMap.getMap());
				
				mv.addObject("memberInfo", memberInfo);
				mv.addObject("couponAll", couponAll);

				System.out.println("쿠폰?" + couponAll);

				
				return mv;
			}//비회원이면
			else {
				mv.addObject("list",fromDetailOne);
			}
				
		//1개
		}else {
			
				
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
			System.out.println(cartMap.get("ATTRIBUTE_NO"));
			fromDetailOne.add(cartMap);				
			mv.addObject("list", fromDetailOne);
				
			//바로구매인데 카트에서 비우는게필요해?
			/*if(commandMap.get("cart_No")!=null) {
				cartService.cartDeleteSelect(commandMap.getMap());
			}*/
			//회원이면
			if(session.getAttribute("MEMBER_ID")!=null) {
				commandMap.put("MEMBER_ID", session.getAttribute("MEMBER_ID"));
				Map<String, Object> memberInfo = new HashMap<String, Object>();
				memberInfo=adminMemberService.memberDetail(commandMap.getMap());
				mv.addObject("memberInfo", memberInfo);
				Map<String, Object> couponAll = new HashMap<String, Object>();
				couponAll = memberService.couponAll(commandMap.getMap());
				mv.addObject("couponAll", couponAll);
				return mv;
			}//비회원이면
			else {
				mv.addObject("list",fromDetailOne);
			}
		}
		
	return mv;
	
	}
	
	//회원,비회원 카트->오더 한개 추가  (장바구니에있는값으로 가져간다.)
	@RequestMapping(value = "/cart/Add/OnetoPayment")
	public ModelAndView cartAddtoPayment(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("order/paypage");
		HttpSession session = request.getSession();
		Map<String, Object> memberInfo = new HashMap<String, Object>();
		
		//회원일때 
		if(session.getAttribute("MEMBER_ID") != null) {
			commandMap.put("MEMBER_ID", session.getAttribute("MEMBER_ID"));
			
			
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
			
			//이거머지?
			//비회원

			Map<String, Object> couponAll = new HashMap<String, Object>();
			couponAll = memberService.couponAll(commandMap.getMap());
			mv.addObject("couponAll", couponAll);
			

		} else {
			
			if (request.getParameterValues("CART_NO") != null) {
				cartArr = request.getParameterValues("CART_NO");
			} else {
				/*cartArr = (String[]) session.getValue("CART_NO2");*/
				cartArr = (String[]) session.getAttribute("CART_NO2");
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
			memberInfo.put("POINT", "0");
			memberInfo.put("GRADE", "0");
			
			mv.addObject("memberInfo",memberInfo);
			mv.addObject("list", sessionCheckedCartList);
			mv.addObject("MEMBER_ID", session.getAttribute("NON_MEMBER_ID"));
		}
		return mv;
	}
	
	/*// 비회원으로 상품 구매시 로그인폼.
	@RequestMapping(value = "/loginForm2")
	public ModelAndView loginForm2(HttpServletRequest request,CommandMap commandMap) {
		HttpSession session = request.getSession();
		System.out.println("찍혀라"+session.getValue("CART_NO2"));
		ModelAndView mv = new ModelAndView();
		mv.setViewName("member/loginForm2");
	    return mv;
	}
	*/
	// 비회원으로 상품 구매시 로그인폼.
	@RequestMapping(value = "/loginForm3")
	public ModelAndView loginForm3(HttpServletRequest request,CommandMap commandMap) throws Exception {
		HttpSession session = request.getSession();
		ModelAndView mv = new ModelAndView();

		RSAKeySet keySet = new RSAKeySet();

		String beforeUrl=request.getHeader("Referer");
		session.setAttribute("Referer",beforeUrl);
		/* 세션에 개인키 저장 */
		session.setAttribute("RSA_private", keySet.getPrivateKey());
		
		/* Front Side로 공개키 전달 */
		mv.addObject("Modulus", keySet.getPublicKeyModulus());
		mv.addObject("Exponent", keySet.getPublicKeyExponent());
		
		commandMap.put("GOODS_NO", session.getAttribute("GOODS_NO"));
		System.out.println("**********");
		System.out.println(commandMap.get("GOODS_NO"));
		
		mv.setViewName("member/loginForm3");
		
		
		return mv;
	}
	
	// 비회원으로 상품 구매 로그인(세션주기).
	@RequestMapping(value = "/nonMember3")
	public ModelAndView nonMemLogin2(HttpServletRequest request, CommandMap commandMap) {
	    
		ModelAndView mv = new ModelAndView();
	    HttpSession session = request.getSession();
	    
	    session.setAttribute("NON_MEMBER_ID", "nonId_"+SequenceUtils.getSeqNumber());
	    mv.addObject("GOODS_NO",session.getAttribute("GOODS_NO"));
	    
	    if(session.getAttribute("optno[]")==null) {
	    	mv.setViewName("redirect:/main");
	    }else {
	    	mv.setViewName("redirect:/goods/detail");
	    }
	    session.removeAttribute("optno[]");
	    
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
			int CartNo	=Integer.parseInt(commandMap.get("CART_NO").toString());
			int Cnt		=Integer.parseInt(commandMap.get("COUNT").toString());
			
			sessionCartList.get(CartNo).put("COUNT", Cnt+1);
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
			int CartNo	=Integer.parseInt(commandMap.get("CART_NO").toString());
			int Cnt		=Integer.parseInt(commandMap.get("COUNT").toString());
			
			sessionCartList.get(CartNo).put("COUNT", Cnt-1);
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
	
	@RequestMapping(value = "/cart/WishaddCart")
	public ModelAndView WishaddCart(CommandMap commandMap, HttpServletRequest request) throws Exception {

		ModelAndView mv = new ModelAndView();
		mv.setViewName("redirect:/cart/list");
		HttpSession session = request.getSession();
		
		commandMap.put("MEMBER_ID", session.getAttribute("MEMBER_ID"));

		// 회원 장바구니 등록
		commandMap.put("GOODS_NO", commandMap.get("GOODS_NO"));
		commandMap.put("ATTRIBUTE_NO", commandMap.get("ATTRIBUTE_NO"));
		commandMap.put("COUNT", commandMap.get("COUNT"));
		commandMap.put("MEMBER_ID", session.getAttribute("MEMBER_ID"));
		System.out.println("commandMap.getMap():"+commandMap.getMap());
			
		cartService.insertCart(commandMap.getMap());
		
		return mv;
	}


	
	
}
