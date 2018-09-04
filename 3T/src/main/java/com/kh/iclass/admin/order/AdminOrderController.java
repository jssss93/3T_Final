package com.kh.iclass.admin.order;

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
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.codehaus.jackson.map.ObjectMapper;
import org.json.simple.JSONArray;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.kh.iclass.admin.member.AdminMemberService;
import com.kh.iclass.cart.CartService;
import com.kh.iclass.common.map.CommandMap;
import com.kh.iclass.common.util.ParseListToJson;
import com.kh.iclass.order.OrderService;


@Controller
@RequestMapping(value = "/admin/")
public class AdminOrderController {

	Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name = "orderService")
	private OrderService orderService;
	
	@Resource(name = "cartService")
	private CartService cartService;
	
	@Resource(name = "adminMemberService")
	private AdminMemberService adminMemberService;

	

	
	@RequestMapping(value = "/order/orderlist")		
	public ModelAndView orderList(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("order.list");
		
		HttpSession session = request.getSession();
		
		commandMap.put("MEMBER_ID", session.getAttribute("MEMBER_ID"));
		
		List<Map<String, Object>> orderList = new ArrayList<Map<String, Object>>();
		if (commandMap.get("SearchKeyword") == null && commandMap.get("SearchNum") == null)
			orderList=orderService.selectOrderListAll(commandMap.getMap());
		else
			orderList=orderService.selectOrderSearchListAll(commandMap.getMap());
		
		mv.addObject("list", orderList);
		return mv;
	
	}
	
	@RequestMapping(value = "/order/refundlist")		
	public ModelAndView orderRefundList(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("order.list");
		
		HttpSession session = request.getSession();
		commandMap.put("MEMBER_ID", session.getAttribute("MEMBER_ID"));
		
		List<Map<String, Object>> orderList = new ArrayList<Map<String, Object>>();
		
		orderList=orderService.selectRefundListAll(commandMap.getMap());
		
		mv.addObject("list", orderList);
		return mv;
	
	}
	@RequestMapping(value = "/order/changelist")		
	public ModelAndView orderChangeList(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("order.list");
		
		HttpSession session = request.getSession();
		commandMap.put("MEMBER_ID", session.getAttribute("MEMBER_ID"));
		
		List<Map<String, Object>> orderList = new ArrayList<Map<String, Object>>();
		
		orderList=orderService.selectChangeListAll(commandMap.getMap());
		
		mv.addObject("list", orderList);
		return mv;
	
	}
	
	
	
	
	@RequestMapping(value = "/order/stateup")		
	public ModelAndView changeState1(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:orderlist");
		
		HttpSession session = request.getSession();
		commandMap.put("MEMBER_ID", session.getAttribute("MEMBER_ID"));
		System.out.println(commandMap.getMap());
		orderService.changeState1(commandMap.getMap());
		return mv;
	
	}
	@RequestMapping(value = "/order/statechange")		
	public ModelAndView changeStateUp(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:changelist");
		
		HttpSession session = request.getSession();
		commandMap.put("MEMBER_ID", session.getAttribute("MEMBER_ID"));
		System.out.println(commandMap.getMap());
		orderService.changeState1(commandMap.getMap());
		return mv;
	
	}
	
	
	
	@RequestMapping(value = "/order/statedown")		
	public ModelAndView changeState2(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:orderlist");
		
		HttpSession session = request.getSession();
		commandMap.put("MEMBER_ID", session.getAttribute("MEMBER_ID"));
		System.out.println(commandMap.getMap());
		orderService.changeState2(commandMap.getMap());
		return mv;
	
	}
	
	@RequestMapping(value = "/order/state8")		
	public ModelAndView changeState8(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:refundlist");
		
		HttpSession session = request.getSession();
		commandMap.put("MEMBER_ID", session.getAttribute("MEMBER_ID"));
		System.out.println(commandMap.getMap());
		orderService.changeState8(commandMap.getMap());
		return mv;
	
	}
	
	@RequestMapping(value = "/order/state9")		
	public ModelAndView changeState9(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:refundlist");
		
		HttpSession session = request.getSession();
		commandMap.put("MEMBER_ID", session.getAttribute("MEMBER_ID"));
		System.out.println(commandMap.getMap());
		orderService.changeState9(commandMap.getMap());
		return mv;
	
	}
	
	@RequestMapping(value = "/order/chartBasic")		
	public ModelAndView chartBasic(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("order.chartBasic");
		
		List<Map<String, Object>> saleListMap = new ArrayList<Map<String, Object>>();
		saleListMap=orderService.getSale2(commandMap.getMap());
		
		org.json.simple.JSONArray json=ParseListToJson.convertListToJson(saleListMap);
		
		System.out.println("json:"+json);
		
		ObjectMapper mapper = new ObjectMapper();  
		mapper.writerWithDefaultPrettyPrinter().writeValue(System.out, json);
		
		mv.addObject("json", json);
		
		return mv;
	}
	
	
	@RequestMapping(value = "/order/chart")		
	public ModelAndView chart(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("order.chart");
		
		HttpSession session = request.getSession();
		commandMap.put("MEMBER_ID", session.getAttribute("MEMBER_ID"));
		
		List<Map<String, Object>> saleListMap = new ArrayList<Map<String, Object>>();
		saleListMap=orderService.getSale2(commandMap.getMap());
		
		JSONArray json=ParseListToJson.convertListToJson(saleListMap);
		
		System.out.println("json:"+json);
		
		ObjectMapper mapper = new ObjectMapper();  
		mapper.writerWithDefaultPrettyPrinter().writeValue(System.out, json);
		
		mv.addObject("json", json);
		
		return mv;
	
	}
	
	@ResponseBody
	@RequestMapping(value = "/order/saleSearch")		
	public JSONArray saleSearch(CommandMap commandMap, HttpServletRequest request) throws Exception {
		
		
		System.out.println("********************ㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱ");
		System.out.println("saleSearch 로 넘어오는값:"+commandMap.getMap());
		
		List<Map<String, Object>> saleListMap = new ArrayList<Map<String, Object>>();
		saleListMap=orderService.getSearchSale(commandMap.getMap());
		System.out.println(saleListMap);
		JSONArray json=ParseListToJson.convertListToJson(saleListMap);
		
		ObjectMapper mapper = new ObjectMapper();  
		System.out.println("넘겨줄 json :");
		mapper.writerWithDefaultPrettyPrinter().writeValue(System.out, json);
		
		return json;
	}
	
	/*@RequestMapping(value = "/order/saleSearch")		
	public ModelAndView saleSearch(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("order.chartBasic");
		
		System.out.println("saleSearch 로 넘어오는값:"+commandMap.getMap());
		
		List<Map<String, Object>> saleListMap = new ArrayList<Map<String, Object>>();
		saleListMap=orderService.getSale2(commandMap.getMap());
		
		JSONArray json=ParseListToJson.convertListToJson(saleListMap);
		
		System.out.println("json:"+json);
		
		ObjectMapper mapper = new ObjectMapper();  
		mapper.writerWithDefaultPrettyPrinter().writeValue(System.out, json);
		
		mv.addObject("json", json);
		
		return mv;
	}*/
	
	
	// 상세보기에서 바로구매
	@RequestMapping(value = "order")
	public ModelAndView orderFormLoginAop(CommandMap commandMap, HttpServletRequest request) throws Exception {
		// 회원구매 AND 비회원구매

		HttpSession session = request.getSession();

		// 바로구매시작
		System.out.println("바로 구매 넘어오는 값들 :" + commandMap.getMap());
		ModelAndView mv = new ModelAndView("orderForm");

		commandMap.put("GOODS_NUMBER", session.getAttribute("GOODS_NUMBER"));

		System.out.println(session.getAttribute("GOODS_NUMBER"));

		// 주문자정보뽑아주기 회원,비회원 구분//
		if (session.getAttribute("MEMBER_NUMBER") != null || commandMap.get("guestEmail") == null) {
			System.out.println("회원 바로 구매 시작");

			commandMap.put("MEMBER_NUMBER", session.getAttribute("MEMBER_NUMBER"));
			System.out.println("Member_Number :" + session.getAttribute("MEMBER_NUMBER"));

			// 회원정보
			Map<String, Object> orderMember = orderService.orderMember(commandMap.getMap());

			mv.addObject("orderMember", orderMember);

		} else if (session.getAttribute("MEMBER_NUMBER") == null || commandMap.get("guestEmail") != null) {
			System.out.println("비회원 바로구매시작");
			mv.addObject("guestEmail", commandMap.get("guestEmail"));
		}
		// 주문자정보뽑아주기 끝//

		// 주문상품정보뽑아주기 회원,비회원 동일//
		String[] goods_kinds_number = request.getParameterValues("kinds[]");
		String[] ea = request.getParameterValues("ea[]");

		List<Map<String, Object>> goods = new ArrayList<Map<String, Object>>();

		for (int i = 0; i < goods_kinds_number.length; i++) {

			System.out.println("ea[" + i + "] = " + ea[i]);
			commandMap.put("GOODS_NUMBER", request.getParameter("goodsno"));
			commandMap.put("GOODS_KIND_NUMBER", goods_kinds_number[i]);
			commandMap.put("EA", ea[i]);
			System.out.println("CommandMap!! :" + commandMap.getMap());
			Map<String, Object> orderGoods = orderService.orderGoods(commandMap.getMap());

			System.out.println("orderGoods : " + orderGoods);

			orderGoods.put("EA", ea[i]);

			goods.add(orderGoods);

			System.out.println("goods : " + goods);

		}
		mv.addObject("goods_kind_number", goods_kinds_number);
		mv.addObject("ea", ea);
		mv.addObject("GOODS_NUMBER", session.getAttribute("GOODS_NUMBER"));

		System.out.println("굿즈사이즈" + goods.size());

		mv.addObject("goods", goods);

		return mv;
	}

	// 포인트 금액 차감 ajax 요청 받을 메서드 (db값저장은 아직없음)
	@RequestMapping(value = "orderPoint")
	@ResponseBody
	public Map<String, Object> orderPoint(CommandMap commandMap, HttpServletRequest request) throws Exception {

		String[] goods_kinds_number = request.getParameterValues("GOODS_KIND_NUMBER");
		String[] ea = request.getParameterValues("EA");

		int myPoint = Integer.parseInt((String) commandMap.getMap().get("myPoint"));
		int usePoint = Integer.parseInt((String) commandMap.getMap().get("usePoint"));
		int TOTALPRICE = 0;

		int nowPoint = myPoint - usePoint;
		System.out.println("포인트계산 : " + myPoint + "-" + usePoint + "=" + nowPoint);

		for (int i = 0; i < goods_kinds_number.length; i++) {
			commandMap.put("GOODS_NUMBER", commandMap.getMap().get("GOODS_NUMBER"));
			commandMap.put("GOODS_KIND_NUMBER", goods_kinds_number[i]);
			commandMap.put("EA", ea[i]);
			Map<String, Object> orderGoods = orderService.orderGoods(commandMap.getMap());

			// 할인상품 구분
			if (orderGoods.get("TOTALPRICE") != orderGoods.get("TOTALDISPRICE")) {
				orderGoods.put("TOTALPRICE", orderGoods.get("TOTALDISPRICE"));
			}

			TOTALPRICE += ((BigDecimal) orderGoods.get("TOTALPRICE")).intValue();

		}
		Map<String, Object> param = new HashMap<String, Object>();
		param.put("TOTALPRICE", TOTALPRICE);
		param.put("usePoint", usePoint);

		return param;

	}

	@RequestMapping(value = "orderDetail")
	public ModelAndView orderDetail(CommandMap commandMap, HttpServletRequest request) throws Exception {

		ModelAndView mv = new ModelAndView("orderDetail");

		HttpSession session = request.getSession();
		System.out.println("commandMap!! :" + commandMap.getMap());

		String guestPhone;
		guestPhone = (String) commandMap.getMap().get("guestPhone1") + "-" + commandMap.getMap().get("guestPhone2")
				+ "-" + commandMap.getMap().get("guestPhone3");
		System.out.println("guestPhone :" + guestPhone);
		commandMap.put("guestPhone", guestPhone);

		String receiverPhone;
		receiverPhone = (String) commandMap.getMap().get("emergency31") + "-" + commandMap.getMap().get("emergency32")
				+ "-" + commandMap.getMap().get("emergency33");
		System.out.println("receiverPhone :" + receiverPhone);
		commandMap.put("RECEIVER_PHONE", receiverPhone);

		commandMap.put("GOODS_NUMBER", session.getAttribute("GOODS_NUMBER"));

		System.out.println(session.getAttribute("GOODS_NUMBER"));

		if (session.getAttribute("MEMBER_NUMBER") != null) {

			commandMap.put("MEMBER_NUMBER", session.getAttribute("MEMBER_NUMBER"));

			System.out.println(session.getAttribute("MEMBER_NUMBER"));

			Map<String, Object> orderMember = orderService.orderMember(commandMap.getMap());

			mv.addObject("orderMember", orderMember);

		}

		List<Map<String, Object>> goods = new ArrayList<Map<String, Object>>();

		String[] goods_kinds_number = request.getParameterValues("kinds[]");
		String[] ea = request.getParameterValues("ea[]");
		String[] goods_number = request.getParameterValues("GOODS_NUMBER");

		for (int i = 0; i < goods_kinds_number.length; i++) {

			commandMap.put("GOODS_KIND_NUMBER", goods_kinds_number[i]);
			commandMap.put("EA", ea[i]);
			commandMap.put("GOODS_NUMBER", goods_number[i]);

			Map<String, Object> orderGoods = orderService.orderGoods(commandMap.getMap());

			// 할인상품 구분
			if (orderGoods.get("TOTALPRICE") != orderGoods.get("TOTALDISPRICE")) {
				orderGoods.put("TOTALPRICE", orderGoods.get("TOTALDISPRICE"));
			}

			orderGoods.put("EA", ea[i]);

			goods.add(orderGoods);

			System.out.println("goods : " + goods);

			mv.addObject("goods_kind_number", goods_kinds_number[i]);
			mv.addObject("ea", ea[i]);
			mv.addObject("GOODS_NUMBER", goods_number[i]);

			System.out.println("goods_kind_number : " + goods_kinds_number[i]);
			System.out.println("ea : " + ea[i]);
			System.out.println("GOODS_NUMBER : " + goods_number[i]);
		}

		if (commandMap.getMap().get("POINT_POINT") != null) {
			if (((String) commandMap.getMap().get("POINT_POINT")).equals("")) {
				System.out.println("야호1" + commandMap.getMap().get("POINT_POINT"));
				mv.addObject("usePoint", 0);
			} else {
				mv.addObject("usePoint", commandMap.getMap().get("POINT_POINT"));
			}

		} else {
			mv.addObject("usePoint", 0);
		}

		// 비회원구매시
		mv.addObject("guestEmail", commandMap.get("guestEmail"));
		mv.addObject("guestName", commandMap.get("guestName"));
		mv.addObject("guestPhone", commandMap.get("guestPhone"));

		// 추가 포인트 넘겨야됨
		System.out.println(commandMap.get("POINT_POINT"));
		System.out.println("guestEmail : " + commandMap.get("guestEmail"));
		System.out.println("guestName : " + commandMap.get("guestName"));
		System.out.println("guestPhone : " + commandMap.get("guestPhone"));

		/*
		 * mv.addObject("GOODS_NUMBER", session.getAttribute("GOODS_NUMBER"));
		 */
		mv.addObject("goods", goods);
		// sale조건 충족하는지 볼것

		// 회원이든 비회원이던 동일
		mv.addObject("RECEIVER_NAME", commandMap.get("RECEIVER_NAME"));
		mv.addObject("RECEIVER_ZIPCODE", commandMap.get("RECEIVER_ZIPCODE"));
		mv.addObject("RECEIVER_ADDRESS1", commandMap.get("RECEIVER_ADDRESS1"));
		mv.addObject("RECEIVER_ADDRESS2", commandMap.get("RECEIVER_ADDRESS2"));
		mv.addObject("RECEIVER_PHONE", commandMap.get("RECEIVER_PHONE"));
		mv.addObject("DELIVERY_MESSAGE", commandMap.get("DELIVERY_MESSAGE"));

		return mv;
	}

	@RequestMapping(value = "orderEnd")
	public ModelAndView orderEnd(CommandMap commandMap, HttpServletRequest request) throws Exception {

		ModelAndView mv = new ModelAndView();

		System.out.println(commandMap.getMap());

		commandMap.put("MEMBER_NUMBER", request.getParameter("MEMBER_NUMBER"));

		if (!request.getParameter("guestEmail").isEmpty()) {

			commandMap.put("BUYER_NAME", commandMap.get("guestName"));
			commandMap.put("BUYER_EMAIL", commandMap.get("guestEmail"));
			commandMap.put("BUYER_NUMBER", commandMap.get("guestPhone"));
			commandMap.put("MEMBER_NUMBER", "0");

			System.out.println("guestEmail orderEnd : " + commandMap.get("guestEmail"));
			System.out.println("guestName orderEnd : " + commandMap.get("guestName"));
			System.out.println("guestPhone orderEnd : " + commandMap.get("guestPhone"));

		}

		Map<String, Object> orderMember = orderService.orderMember(commandMap.getMap());

		System.out.println(orderMember);

		StringBuffer temp = new StringBuffer();
		Random rnd = new Random();

		for (int i = 0; i < 5; i++) {
			temp.append((char) ((rnd.nextInt(26)) + 65));
		}

		List<Map<String, Object>> goods = new ArrayList<Map<String, Object>>();

		String[] goods_kinds_number = request.getParameterValues("kinds[]");
		String[] ea = request.getParameterValues("ea[]");
		String[] goods_total = request.getParameterValues("goods_total[]");
		System.out.println("굿스토탈 " + goods_total[0]);
		String[] goods_number = request.getParameterValues("GOODS_NUMBER");

		int total = 0;

		for (int i = 0; i < goods_kinds_number.length; i++) {

			commandMap.put("GOODS_KIND_NUMBER", goods_kinds_number[i]);
			commandMap.put("EA", ea[i]);
			commandMap.put("GOODS_NUMBER", goods_number[i]);

			Map<String, Object> orderGoods = orderService.orderGoods(commandMap.getMap());

			orderGoods.put("EA", ea[i]);

			goods.add(orderGoods);

			System.out.println("goods : " + goods);

			total += Integer.parseInt(goods_total[i]);
		}

		Date d = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
		String date = sdf.format(d);

		String ORDER_CODE = ("S" + date + temp);

		System.out.println(ORDER_CODE);

		commandMap.put("ORDER_CODE", ORDER_CODE);

		if (orderMember != null) {

			commandMap.put("BUYER_ZIPCODE", orderMember.get("MEMBER_ZIPCODE"));
			commandMap.put("BUYER_ADDRESS1", orderMember.get("MEMBER_ADDRESS1"));
			commandMap.put("BUYER_ADDRESS2", orderMember.get("MEMBER_ADDRESS2"));
			commandMap.put("BUYER_NAME", orderMember.get("MEMBER_NAME"));
			commandMap.put("BUYER_EMAIL", orderMember.get("MEMBER_EMAIL"));
			commandMap.put("BUYER_NUMBER", orderMember.get("MEMBER_PHONE"));

		}

		if (!request.getParameter("guestEmail").isEmpty()) {

			commandMap.put("BUYER_NAME", commandMap.get("guestName"));
			commandMap.put("BUYER_EMAIL", commandMap.get("guestEmail"));
			commandMap.put("BUYER_NUMBER", commandMap.get("guestPhone"));
			commandMap.put("MEMBER_NUMBER", "");

			System.out.println("guestEmail orderEnd : " + commandMap.get("guestEmail"));
			System.out.println("guestName orderEnd : " + commandMap.get("guestName"));
			System.out.println("guestPhone orderEnd : " + commandMap.get("guestPhone"));

		}

		if (request.getParameter("DELIVERY_MESSAGE").isEmpty()) {
			commandMap.put("DELIVERY_MESSAGE", " ");
		}

		commandMap.put("GOODS_NUMBER", request.getParameter("GOODS_NUMBER"));
		commandMap.put("RECEIVER_NAME", request.getParameter("RECEIVER_NAME"));
		commandMap.put("RECEIVER_ZIPCODE", request.getParameter("RECEIVER_ZIPCODE"));
		commandMap.put("RECEIVER_ADDRESS1", request.getParameter("RECEIVER_ADDRESS1"));
		commandMap.put("RECEIVER_ADDRESS2", request.getParameter("RECEIVER_ADDRESS2"));
		commandMap.put("RECEIVER_NUMBER", request.getParameter("RECEIVER_NUMBER"));
		commandMap.put("DELIVERY_MESSAGE", request.getParameter("DELIVERY_MESSAGE"));
		commandMap.put("RECEIVER_NUMBER", request.getParameter("RECEIVER_PHONE"));
		commandMap.put("TOTALPRICE", request.getParameter("TOTALPRICE"));

		orderService.createDeliveryList(commandMap.getMap());

		for (int i = 0; i < goods_kinds_number.length; i++) {

			commandMap.put("GOODS_KIND_NUMBER", goods_kinds_number[i]);
			commandMap.put("ORDER_AMOUNT", ea[i]);
			commandMap.put("ORDER_TOTAL_PRICE", goods_total[i]);
			commandMap.put("GOODS_NUMBER", goods_number[i]);

			System.out.println("GOODS_NUMBER : " + commandMap.get("GOODS_NUMBER"));
			System.out.println("GOODS_KIND_NUMBER : " + commandMap.get("GOODS_KIND_NUMBER"));
			System.out.println("ORDER_AMOUNT : " + commandMap.get("ORDER_AMOUNT"));
			System.out.println("ORDER_CODE : " + commandMap.get("ORDER_CODE"));
			System.out.println("모가안나옵니까~ " + commandMap.getMap());

			orderService.createOrderList(commandMap.getMap());
			System.out.println(i + "번 돌았음");
			orderService.goodsCountDown(commandMap.getMap());

		}

		if (orderMember != null) {

			mv.addObject("orderMember", orderMember);
		}

		System.out.println("TOTALPRICE : " + commandMap.get("TOTALPRICE"));

		mv.addObject("goods", goods);

		mv.addObject("goods_kind_number", goods_kinds_number);
		mv.addObject("ea", ea);

		if (!request.getParameter("guestEmail").isEmpty()) {

			mv.addObject("BUYER_NAME", commandMap.get("guestName"));
			mv.addObject("BUYER_EMAIL", commandMap.get("guestEmail"));
			mv.addObject("BUYER_NUMBER", commandMap.get("guestPhone"));

		}

		if (commandMap.getMap().get("usePoint") != null) {
			if (!((String) commandMap.getMap().get("usePoint")).isEmpty()) {
				int usePoint = Integer.parseInt((String) commandMap.getMap().get("usePoint"));
				System.out.println("야야" + usePoint);
				// int totalpoint =Integer.parseInt(goods_total[0]);

				if (usePoint != 0) {
					System.out.println("포인트가 0이 아닌것들만 적립내역DB에 들어가거라");

					int POINT_POINT = -(usePoint);

					System.out.println("POINT_POINT" + POINT_POINT);

					commandMap.getMap().put("POINT_POINT", POINT_POINT);
					commandMap.getMap().put("POINT_CONTENT", "상품 구매");

					orderService.insertPoint(commandMap.getMap());

				}

				mv.addObject("usePoint", usePoint);
			}

		}
		mv.addObject("ORDER_CODE", ORDER_CODE);
		mv.addObject("BUYER_NUMBER", commandMap.get("BUYER_NUMBER"));
		mv.addObject("TOTALPRICE", commandMap.get("TOTALPRICE"));
		System.out.println(commandMap.get("TOTALPRICE"));
		mv.addObject("RECEIVER_NAME", commandMap.get("RECEIVER_NAME"));
		mv.addObject("RECEIVER_ZIPCODE", commandMap.get("RECEIVER_ZIPCODE"));
		mv.addObject("RECEIVER_ADDRESS1", commandMap.get("RECEIVER_ADDRESS1"));
		mv.addObject("RECEIVER_ADDRESS2", commandMap.get("RECEIVER_ADDRESS2"));
		mv.addObject("DELIVERY_MESSAGE", commandMap.get("DELIVERY_MESSAGE"));
		mv.addObject("RECEIVER_PHONE", commandMap.get("RECEIVER_NUMBER"));

		mv.setViewName("orderEnd");

		return mv;
	}

}
