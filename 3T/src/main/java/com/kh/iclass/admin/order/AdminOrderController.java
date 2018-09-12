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
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.kh.iclass.admin.member.AdminMemberService;
import com.kh.iclass.cart.CartService;
import com.kh.iclass.common.map.CommandMap;
import com.kh.iclass.common.util.ParseListToJson;
import com.kh.iclass.order.OrderService;

import egovframework.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;


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

	

	//관리자 총 주문목록
	@RequestMapping(value = "/order/orderlist")		
	public ModelAndView orderList(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("order.list");
		
		HttpSession session = request.getSession();
		
		commandMap.put("MEMBER_ID", session.getAttribute("MEMBER_ID"));
		
		Map<String, Object> resultMap = null;
		
		if (commandMap.get("SearchKeyword") == null && commandMap.get("SearchNum") == null)
			resultMap=orderService.selectOrderListAll(commandMap.getMap());
		else
			resultMap=orderService.selectOrderSearchListAll(commandMap.getMap());
		
		mv.addObject("paginationInfo", (PaginationInfo) resultMap.get("paginationInfo"));
		
		mv.addObject("list", resultMap.get("result"));
		
		return mv;
	
	}

	//관리자 0,1,2,3 주문 목록
	@RequestMapping(value = "/order/orderlist2")		
	public ModelAndView orderList2(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("order.orderlist3");
		
		HttpSession session = request.getSession();
		
		commandMap.put("MEMBER_ID", session.getAttribute("MEMBER_ID"));
		
		Map<String, Object> resultMap = null;
		
		if (commandMap.get("SearchKeyword") == null && commandMap.get("SearchNum") == null)
			resultMap=orderService.selectOrderList(commandMap.getMap());
		else
			resultMap=orderService.selectOrderSearchListAll(commandMap.getMap());
		
		mv.addObject("paginationInfo", (PaginationInfo) resultMap.get("paginationInfo"));
		
		mv.addObject("list", resultMap.get("result"));
		
		return mv;
	
	}

	
	@RequestMapping(value="/order/updateForm")
	public ModelAndView joinComplete(CommandMap commandMap) throws Exception{
		
		ModelAndView mv = new ModelAndView("order.detail");
		System.out.println("/order/updateForm : " + commandMap.getMap());
		/*Map<String, Object> map = orderService.selectDetailList(commandMap.getMap());*/
		/*List<Map<String, Object>> updateList = new ArrayList<Map<String, Object>>();*/
		/*List<Map<String, Object>> AttrListMap = new ArrayList<Map<String, Object>>();*/
		/*Map<String, Object> sizeMap =new HashMap<>();*/
		Map<String,Object> updateList=orderService.selectAdminDetailList(commandMap.getMap());
		
		
	
		commandMap.put("GOODS_NO", updateList.get("GOODS_NO"));
		
		//지워야대
		List<Map<String, Object>> sizeListMap=orderService.getSizeList(commandMap.getMap());
		List<Map<String, Object>> colorListMap=orderService.getColorList(commandMap.getMap());
		
		
		
		List<Map<String, Object>> attrListMap=orderService.getAttrList(commandMap.getMap());
		
		mv.addObject("list", updateList);
		mv.addObject("sizeList",sizeListMap);
		mv.addObject("colorList",colorListMap);
		mv.addObject("attrList",attrListMap);
		
		mv.addObject("ORDER_NO", commandMap.get("ORDER_NO"));
		mv.addObject("ORDER_DETAIL_NO", commandMap.get("ORDER_DETAIL_NO"));
		mv.addObject("REGDATE", commandMap.get("REGDATE"));
		return mv;
		
	}
	
	
	@RequestMapping(value="/order/Update")
	public ModelAndView Update(CommandMap commandMap) throws Exception{
		
		ModelAndView mv = new ModelAndView("redirect:/admin/order/orderlist");
		System.out.println("/order/update : " + commandMap.getMap());
		
		orderService.updateOrder(commandMap.getMap());
	
		
		
		return mv;
		
	}
	
	@RequestMapping(value = "/order/refundlist")		
	public ModelAndView orderRefundList(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("order.list");
		
		HttpSession session = request.getSession();
		commandMap.put("MEMBER_ID", session.getAttribute("MEMBER_ID"));
		
		Map<String, Object> resultMap = null;
		
		resultMap=orderService.selectRefundListAll(commandMap.getMap());
		
		mv.addObject("paginationInfo", (PaginationInfo) resultMap.get("paginationInfo"));
		
		mv.addObject("list", resultMap.get("result"));
		return mv;
	
	}
	@RequestMapping(value = "/order/changelist")		
	public ModelAndView orderChangeList(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("order.list");
		
		HttpSession session = request.getSession();
		commandMap.put("MEMBER_ID", session.getAttribute("MEMBER_ID"));
		
		Map<String, Object> resultMap = null;
		
		resultMap=orderService.selectChangeListAll(commandMap.getMap());
		
		mv.addObject("paginationInfo", (PaginationInfo) resultMap.get("paginationInfo"));
		
		mv.addObject("list", resultMap.get("result"));
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
	
	
	

}
