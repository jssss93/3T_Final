package com.kh.iclass.member;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.kh.iclass.common.map.CommandMap;

@Controller
public class MemberController {

	String authNum = "";

	@Resource(name = "memberService")
	private MemberService memberService;

	@RequestMapping(value = "/member/mypage")
	public ModelAndView mypage(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView();
		System.out.println("세션 : " + request.getSession().getAttribute("MEMBER_ID"));
		List<Map<String, Object>> stateList = new ArrayList<Map<String, Object>>();
		Map<String, Object> orderAll = new HashMap<String, Object>();
		Map<String, Object> messageAll = new HashMap<String, Object>();

		commandMap.put("MEMBER_ID", request.getSession().getAttribute("MEMBER_ID"));
		commandMap.put("TOMEMBER", request.getSession().getAttribute("MEMBER_ID"));

		stateList = memberService.state(commandMap.getMap());
		orderAll = memberService.orderAll(commandMap.getMap());
		messageAll = memberService.messageAll(commandMap.getMap());

		System.out.println("메세지?" + messageAll);

		System.out.println(stateList);

		for (int i = 0; i < 10; i++) {

			mv.addObject("state" + i, stateList.get(i));
		}

		System.out.println("반품?" + stateList.get(9));

		System.out.println("총주문수?" + orderAll);
		mv.addObject("orderAll", orderAll);
		mv.addObject("messageAll", messageAll);

		mv.setViewName("member/mypage");

		return mv;
	}


	@RequestMapping(value = "/member/update")
	public ModelAndView mypageInfo(HttpServletRequest request) throws Exception {
		System.out.println("세션 : " + request.getSession().getAttribute("MEMBER_ID"));
		ModelAndView mv = new ModelAndView();
		CommandMap commandMap = new CommandMap();
		commandMap.put("MEMBER_ID", request.getSession().getAttribute("MEMBER_ID"));
		System.out.println("아이디" + commandMap.get("MEMBER_ID"));
		// 상품정보 가져오기
		List<Map<String, Object>> mypageInfo = memberService.mypageInfo(commandMap.getMap());

		mv.addObject("mypageInfo", mypageInfo);

		/*
		 * String EMAIL = (String)mypageInfo.get(0).get("EMAIL"); String EMAIL1 =
		 * EMAIL.split("@")[0]; String EMAIL2 = EMAIL.split("@")[1];
		 * 
		 * commandMap.put("EMAIL1", EMAIL1); commandMap.put("EMAIL2", EMAIL2);
		 */

		/*
		 * String str1 = "${row.EMAIL}"; String EMAIL1 = str1.split("@")[0]; String
		 * EMAIL2 = str1.split(";")[1];
		 */

		mv.setViewName("member/update");

		return mv;
	}


	@RequestMapping(value = "/mypageComplete", method = RequestMethod.POST)
	public ModelAndView joinComplete(CommandMap commandMap, HttpServletRequest request) throws Exception {
		System.out.println("아이디" + commandMap.get("MEMBER_ID"));
		System.out.println("주소1" + commandMap.get("ADDR1"));
		System.out.println("주소2" + commandMap.get("ADDR2"));
		System.out.println("폰번호" + commandMap.get("PHONE"));
		System.out.println("비밀번호" + commandMap.get("PASSWD"));

		ModelAndView mv = new ModelAndView();
		String EMAIL = request.getParameter("EMAIL1") + "@" + request.getParameter("EMAIL2");
		Map<String, Object> mypageMap = new HashMap<String, Object>();
		commandMap.getMap().put("MEMBER_ID", request.getSession().getAttribute("MEMBER_ID"));
		commandMap.getMap().put("EMAIL", EMAIL);
		mypageMap = commandMap.getMap();
		System.out.println("맵에에에에" + mypageMap);
		memberService.updateMember(mypageMap, request);
		mv.setViewName("member/mypage");
		return mv;

	}


	// mypage -> myboard

	@RequestMapping(value = "/member/myboard")
	public ModelAndView myBoardList(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("member/myboard");
		List<Map<String, Object>> list = null;
		List<Map<String, Object>> list2 = null;

		System.out.println("boardtype" + commandMap.get("BoardType"));
		System.out.println("아이디" + commandMap.get("MEMBER_ID"));
		commandMap.put("MEMBER_ID", request.getSession().getAttribute("MEMBER_ID"));

		list = memberService.myBoardQna(commandMap.getMap());
		list2 = memberService.myBoardReview(commandMap.getMap());

		/*
		 * if (commandMap.get("SearchKeyword") == null && commandMap.get("SearchNum") ==
		 * null) list = QaService.QaList(commandMap.getMap()); else list =
		 * QaService.QaSearchList(commandMap.getMap());
		 */
		if (commandMap.get("sel") != null) {
			if (commandMap.get("sel").equals("0")) {
				mv.addObject("list", list);
			} else if (commandMap.get("sel").equals("1")) {
				mv.addObject("list2", list2);
			} else {
				mv.addObject("list2", list2);
				mv.addObject("list", list);
			}
		} else {
			mv.addObject("list2", list2);
			mv.addObject("list", list);

		}
		mv.addObject("sel", request.getParameter("sel"));

		System.out.println("리스트" + list);

		return mv;
	}

	// mypage -> coupon

	@RequestMapping(value = "/member/mycoupon")
	public ModelAndView myCouponList(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("member/mycoupon");
		List<Map<String, Object>> list = null;

		System.out.println("아이디" + commandMap.get("MEMBER_ID"));
		commandMap.put("MEMBER_ID", request.getSession().getAttribute("MEMBER_ID"));

		list = memberService.myCoupon(commandMap.getMap());

		/*
		 * if (commandMap.get("SearchKeyword") == null && commandMap.get("SearchNum") ==
		 * null) list = QaService.QaList(commandMap.getMap()); else list =
		 * QaService.QaSearchList(commandMap.getMap());
		 */
		mv.addObject("list", list);

		return mv;
	}

	@RequestMapping(value = "/member/mymessage")
	public ModelAndView myMessage(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("member/mymessage");
		List<Map<String, Object>> list = null;

		System.out.println("아이디" + commandMap.get("MEMBER_ID"));
		commandMap.put("TOMEMBER", request.getSession().getAttribute("MEMBER_ID"));

		list = memberService.myMessage(commandMap.getMap());

		/*
		 * if (commandMap.get("SearchKeyword") == null && commandMap.get("SearchNum") ==
		 * null) list = QaService.QaList(commandMap.getMap()); else list =
		 * QaService.QaSearchList(commandMap.getMap());
		 */
		mv.addObject("list", list);

		return mv;
	}

	@RequestMapping(value = "/member/messageWrite")
	public ModelAndView mymessageWrite(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		System.out.println("세션 : " + request.getSession().getAttribute("MEMBER_ID"));
		mv.setViewName("member/messageWrite");

		return mv;
	}

	@RequestMapping(value = "/member/sendmessage")
	public ModelAndView sendMessage(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView();
		Map<String, Object> messageMap = new HashMap<String, Object>();
		commandMap.put("TOMEMBER", "ADMIN");
		commandMap.put("SENDMEMBER", request.getSession().getAttribute("MEMBER_ID"));
		messageMap = commandMap.getMap();
		memberService.insertMessage(messageMap, request);

		List<Map<String, Object>> list = null;
		list = memberService.myMessage(commandMap.getMap());
		mv.addObject("list", list);

		mv.setViewName("redirect:/member/mymessage");

		return mv;
	}

	@RequestMapping(value = "/admin/member/message")
	public ModelAndView AdminMessage(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("member.message");
		List<Map<String, Object>> list = null;

		System.out.println("아이디" + commandMap.get("MEMBER_ID"));
		commandMap.put("TOMEMBER", request.getSession().getAttribute("MEMBER_ID"));

		list = memberService.myMessage(commandMap.getMap());

		/*
		 * if (commandMap.get("SearchKeyword") == null && commandMap.get("SearchNum") ==
		 * null) list = QaService.QaList(commandMap.getMap()); else list =
		 * QaService.QaSearchList(commandMap.getMap());
		 */
		mv.addObject("list", list);

		return mv;
	}

	@RequestMapping(value = "/admin/member/messageWrite")
	public ModelAndView AdminMessageWrite(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();

		Map<String, Object> messageMap = new HashMap<String, Object>();

		System.out.println("이건나오지? : " + request.getParameter("SENDMEMBER"));

		mv.addObject("SENDMEMBER", request.getParameter("SENDMEMBER"));
		mv.setViewName("member.messageWrite");

		return mv;
	}

	@RequestMapping(value = "/admin/member/sendmessage")
	public ModelAndView AdminSendMessage(CommandMap commandMap, HttpServletRequest request) throws Exception {
		System.out.println("나오나?" + request.getParameter("TOMEMBER"));
		ModelAndView mv = new ModelAndView();
		Map<String, Object> messageMap = new HashMap<String, Object>();
		commandMap.put("TOMEMBER", request.getParameter("TOMEMBER"));
		commandMap.put("SENDMEMBER", request.getSession().getAttribute("MEMBER_ID"));

		messageMap = commandMap.getMap();
		memberService.insertMessage(messageMap, request);

		commandMap.put("TOMEMBER", request.getSession().getAttribute("MEMBER_ID"));
		List<Map<String, Object>> list = null;
		list = memberService.myMessage(commandMap.getMap());
		mv.addObject("list", list);

		mv.setViewName("member.message");

		return mv;
	}

}