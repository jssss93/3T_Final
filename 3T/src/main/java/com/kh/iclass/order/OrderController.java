package com.kh.iclass.order;

import java.io.PrintWriter;
import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.json.simple.JSONArray;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.kh.iclass.admin.member.AdminMemberService;
import com.kh.iclass.cart.CartService;
import com.kh.iclass.common.map.CommandMap;
import com.kh.iclass.common.util.ParseListToJson;
import com.kh.iclass.member.MemberService;

@Controller
public class OrderController {

	Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name = "orderService")
	private OrderService orderService;
	
	@Resource(name = "cartService")
	private CartService cartService;
	
	@Resource(name = "adminMemberService")
	private AdminMemberService adminMemberService;
	
	@Resource(name="memberService")
	private MemberService memberService;
	
	//payment에 선택된값 추가 from cart 
	@RequestMapping(value = "order/addSelected")
	public ModelAndView addSelected(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("order/paypage");
		HttpSession session = request.getSession();
		Map<String, Object> couponAll = new HashMap<String, Object>();
		
		String cart_No[]=request.getParameterValues("CART_NO");
		
		for(int i=0;i<cart_No.length;i++) {
			System.out.println("cart_No"+i+":"+cart_No[i]);
		}
		commandMap.put("cart_No", cart_No);
		session.setAttribute("CART_NO", commandMap.get("cart_No"));
		if(session.getAttribute("MEMBER_ID")!=null) {
			commandMap.put("MEMBER_ID", session.getAttribute("MEMBER_ID"));
			
			Map<String, Object> memberInfo = new HashMap<String, Object>();
			memberInfo=adminMemberService.memberDetail(commandMap.getMap());
			
			List<Map<String, Object>> checkedCartList = new ArrayList<Map<String, Object>>();
			
			checkedCartList=cartService.checkedCartList(commandMap.getMap());
			

			couponAll = memberService.couponAll(commandMap.getMap());
			System.out.println("쿠폰?" + couponAll);
			
			mv.addObject("list", checkedCartList);
			mv.addObject("memberInfo", memberInfo);
			mv.addObject("couponAll", couponAll);
		}else {
			commandMap.put("MEMBER_ID", session.getAttribute("NON_MEMBER_ID"));
		}
		return mv;
	
	}
	
	@RequestMapping(value = "order/complete")
	public ModelAndView orderComplete(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("order/orderComplete");
		HttpSession session = request.getSession();
		
		return mv;
	
	}
	
	
	//실행안하는거같은데
	@RequestMapping(value = "order/addOne")
	public ModelAndView addOne(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("order/paypage");
		HttpSession session = request.getSession();
		
		if(session.getAttribute("MEMBER_ID")!=null) {
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
		}else {
			String cart_No[]=request.getParameterValues("CART_NO");
			System.out.println("비회원시 받아오는 카트 NO 값 >>");
			for(int i=0;i<cart_No.length;i++) {
				System.out.println("cart_No"+i+":"+cart_No[i]);
			}
			
		}
		return mv;
	
	}
	
	@RequestMapping(value = "order/addAll")
	public ModelAndView goPayPage(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("order/paypage");
		HttpSession session = request.getSession();
		
		String cart_No[]=request.getParameterValues("CART_NO");
		
		for(int i=0;i<cart_No.length;i++) {
			System.out.println("cart_No"+i+":"+cart_No[i]);
		}
		commandMap.put("cart_No", cart_No);
		session.setAttribute("CART_NO", commandMap.get("cart_No"));
		
		if(session.getAttribute("MEMBER_ID")!=null) {
			commandMap.put("MEMBER_ID", session.getAttribute("MEMBER_ID"));
			
			Map<String, Object> memberInfo = new HashMap<String, Object>();
			memberInfo=adminMemberService.memberDetail(commandMap.getMap());
			
			List<Map<String, Object>> checkedCartList = new ArrayList<Map<String, Object>>();
			
			checkedCartList=cartService.checkedCartList(commandMap.getMap());
			
			mv.addObject("list", checkedCartList);
			mv.addObject("memberInfo", memberInfo);
		}else {
			commandMap.put("MEMBER_ID", session.getAttribute("NON_MEMBER_ID"));
		}
		return mv;
	
	}
	
	@RequestMapping(value = "order/insert")	
	public ModelAndView addInsert(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView();
		HttpSession session = request.getSession();
		
		commandMap.put("cart_No", commandMap.get("cart_No"));
		
		String phone = ""+commandMap.get("mphone1")+commandMap.get("mphone2")+ commandMap.get("mphone3");
		commandMap.put("RECIPIENT_PHONE",phone);
		
		if(session.getAttribute("MEMBER_ID")==null) {
			mv.setViewName("order/orderComplete");
			commandMap.put("MEMBER_ID", session.getAttribute("NON_MEMBER_ID"));
			
		}else {
			mv.setViewName("order/orderComplete");
			commandMap.put("MEMBER_ID", session.getAttribute("MEMBER_ID"));
		}
		
		commandMap.put("cart_No", session.getAttribute("CART_NO"));
		orderService.insertOrder(commandMap.getMap(),request);
		
		List<Map<String, Object>> orderList = new ArrayList<Map<String, Object>>();
		Map<String, Object> orderMemberInfo = new HashMap<String, Object>();
		
		orderMemberInfo=orderService.selectOrderMemberInfo(commandMap.getMap());
		orderList=orderService.selectOrderInfo(commandMap.getMap());
		
		mv.addObject("orderInfo",orderMemberInfo);
		mv.addObject("orderGoodsList",orderList);
		mv.addObject("TOTALPRICE",commandMap.get("TOTALPRICE2"));
		mv.addObject("TOTALSUM",commandMap.get("TOTALSUM2"));
		mv.addObject("DISCOUNT",commandMap.get("DISCOUNT2"));
		
		return mv;
	
	}
	
	@RequestMapping(value = "order/insertOne")		
	public ModelAndView insertOne(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("order/addAll");
		
		HttpSession session = request.getSession();
		commandMap.put("MEMBER_ID", session.getAttribute("MEMBER_ID"));
		
		orderService.insertOrder(commandMap.getMap(),request);
		
		return mv;
	
	}
	
	@RequestMapping(value = "order/list")		
	public ModelAndView orderList(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("order/orderList");
		
		HttpSession session = request.getSession();
		
		if(session.getAttribute("MEMBER_ID")!=null) {
			commandMap.put("MEMBER_ID", session.getAttribute("MEMBER_ID"));
			
			mv.addObject("MEMBER_ID", commandMap.get("MEMBER_ID"));
			System.out.println("commandMap.getMap():"+commandMap.getMap());
			List<Map<String, Object>> orderList = new ArrayList<Map<String, Object>>();
			
			orderList=orderService.selectList(commandMap.getMap());
			mv.addObject("list", orderList);
			return mv;
		}else {
			
			return mv;
		}
	}
	
	
	@ResponseBody
	@RequestMapping(value = "order/listSearch")		
	public JSONArray orderListSearch(CommandMap commandMap, HttpServletRequest request) throws Exception {
		
		HttpSession session = request.getSession();
		commandMap.put("MEMBER_ID", session.getAttribute("MEMBER_ID"));
		
		System.out.println("********************ㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱ");
		System.out.println("listSearch 로 넘어오는값:"+commandMap.getMap());
		
		List<Map<String, Object>> orderList = new ArrayList<Map<String, Object>>();
		
		orderList=orderService.selectListSearch(commandMap.getMap());
		
		JSONArray json=ParseListToJson.convertListToJson(orderList);
		
		return json;
	}
	
	@ResponseBody
	@RequestMapping(value = "order/listSearch_nonMem")		
	public JSONArray orderListSearch2(CommandMap commandMap, HttpServletRequest request) throws Exception {
		
		System.out.println("********************ㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱ");
		System.out.println("listSearch_nonMem 로 넘어오는값:"+commandMap.getMap());
		
		List<Map<String, Object>> orderList = new ArrayList<Map<String, Object>>();
		
		orderList=orderService.selectListSearchNonMem(commandMap.getMap());
		
		JSONArray json=ParseListToJson.convertListToJson(orderList);
		System.out.println(json);
		return json;
	}
	
	
	@RequestMapping(value = "order/changeList")		
	public ModelAndView change(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("order/changeList");
		
		HttpSession session = request.getSession();
		commandMap.put("MEMBER_ID", session.getAttribute("MEMBER_ID"));
		
		mv.addObject("MEMBER_ID", commandMap.get("MEMBER_ID"));
		System.out.println("commandMap.getMap():"+commandMap.getMap());
		List<Map<String, Object>> swapList = new ArrayList<Map<String, Object>>();
		
		swapList=orderService.swapList(commandMap.getMap());
		mv.addObject("list", swapList);
		return mv;
	}
	
	@RequestMapping(value = "order/refundList")		
	public ModelAndView refund(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("order/refundList");
		
		HttpSession session = request.getSession();
		commandMap.put("MEMBER_ID", session.getAttribute("MEMBER_ID"));
		
		mv.addObject("MEMBER_ID", commandMap.get("MEMBER_ID"));
		
		List<Map<String, Object>> refundList = new ArrayList<Map<String, Object>>();
		refundList=orderService.refundList(commandMap.getMap());
		mv.addObject("list", refundList);
		return mv;
	}
	

	@ResponseBody
	@RequestMapping(value = "order/getMemberInfo" ,  produces = "application/json; charset=utf8" )
	public  ModelAndView getMemberInfo111(CommandMap commandMap, HttpServletRequest request,HttpServletResponse response ) throws Exception {
		PrintWriter writer = response.getWriter();
		
		HttpSession session = request.getSession();
		commandMap.put("MEMBER_ID", session.getAttribute("MEMBER_ID"));
		
		List<Map<String, Object>> memberInfo2 =  memberService.memberInfoList(commandMap.getMap());
		JSONArray json=ParseListToJson.convertListToJson(memberInfo2);
		
		writer.print(json);
		writer.flush();
		writer.close();
		ModelAndView mv = new ModelAndView();
		
		return mv;
	}
	
	//쿠폰선택시 리스트
	@RequestMapping(value = "order/couponList")		
	public ModelAndView couponList(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("/order/couponList");
		
		HttpSession session = request.getSession();
		commandMap.put("MEMBER_ID", session.getAttribute("MEMBER_ID"));

		System.out.println("commandMap.getMap():"+commandMap.getMap());
		List<Map<String, Object>> couponList = new ArrayList<Map<String, Object>>();
		
		couponList = memberService.myCoupon(commandMap.getMap());
		mv.addObject("list", couponList);
		return mv;
	}
	
	//쿠폰확인 리스트
	@RequestMapping(value = "/order/orderCouponList")
	public ModelAndView myCouponList(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView();
		List<Map<String, Object>> list = null;		
		
		commandMap.put("MEMBER_ID", request.getSession().getAttribute("MEMBER_ID"));

		list = memberService.myCoupon(commandMap.getMap());
		
		/*
		 * if (commandMap.get("SearchKeyword") == null && commandMap.get("SearchNum") ==
		 * null) list = QaService.QaList(commandMap.getMap()); else list =
		 * QaService.QaSearchList(commandMap.getMap());
		 */
		mv.addObject("list", list);
		
		mv.setViewName("/order/orderCouponList");
		return mv;
	}	
}
