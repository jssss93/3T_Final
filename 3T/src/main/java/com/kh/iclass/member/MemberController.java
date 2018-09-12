package com.kh.iclass.member;

import java.io.PrintWriter;
import java.security.Key;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.kh.iclass.common.map.CommandMap;
import com.kh.iclass.common.util.RSAKeySet;

@Controller
public class MemberController {

	String authNum = "";

	@Resource(name = "memberService")
	private MemberService memberService;
	
	@RequestMapping(value = "/test234")
	public ModelAndView facebookTest() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/member/test");
		return mv;
	}
	
	@RequestMapping(value = "/kakaoLogin")
	public String KakaoTest(CommandMap commandMap,HttpServletRequest request) {
		request.getSession().setAttribute("MEMBER_ID", "kakao_"+commandMap.getMap().get("id"));
		request.getSession().setAttribute("TOKEN", "kakao_"+commandMap.getMap().get("token"));

		return authNum;
		
	}
	
	//마이페이지 눌렀을시 주문,환불,교환,쿠폰,메세지등 개수꺼내와 넘겨주기
	@RequestMapping(value = "/member/mypage")
	public ModelAndView mypage(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView();
		System.out.println("세션 : " + request.getSession().getAttribute("MEMBER_ID"));
		List<Map<String, Object>> stateList = new ArrayList<Map<String, Object>>();
		
		Map<String, Object> order = new HashMap<String, Object>();
		Map<String, Object> swap = new HashMap<String, Object>();
		Map<String, Object> refund = new HashMap<String, Object>();
		Map<String, Object> orderAll = new HashMap<String, Object>();
		Map<String, Object> NOREADMESSAGE = new HashMap<String, Object>();
		Map<String, Object> couponAll = new HashMap<String, Object>();

		commandMap.put("MEMBER_ID", request.getSession().getAttribute("MEMBER_ID"));
		commandMap.put("TOMEMBER", request.getSession().getAttribute("MEMBER_ID"));

		stateList = memberService.state(commandMap.getMap());
		
		order = memberService.order(commandMap.getMap());
		swap = memberService.swap(commandMap.getMap());
		refund = memberService.refund(commandMap.getMap());
		orderAll = memberService.orderAll(commandMap.getMap());
		NOREADMESSAGE = memberService.noReadMessage(commandMap.getMap());
		couponAll = memberService.couponAll(commandMap.getMap());
	

		for (int i = 0; i < 10; i++) {

			mv.addObject("state" + i, stateList.get(i));
		}

		
		mv.addObject("order", order);
		mv.addObject("swap", swap);
		mv.addObject("refund", refund);
		mv.addObject("orderAll", orderAll);
		mv.addObject("NOREADMESSAGE", NOREADMESSAGE);
		mv.addObject("couponAll", couponAll);

		mv.setViewName("member/mypage");

		return mv;
	}
	
	

	//회원정보수정 
	@RequestMapping(value = "/member/update")
	public ModelAndView mypageInfo(HttpServletRequest request, HttpSession session) throws Exception {
		ModelAndView mv = new ModelAndView();
		RSAKeySet keySet = new RSAKeySet();
		CommandMap commandMap = new CommandMap();
		commandMap.put("MEMBER_ID", request.getSession().getAttribute("MEMBER_ID"));
		
		/* 세션에 개인키 저장 */
		session.setAttribute("RSA_private", keySet.getPrivateKey());
		
		/* Front Side로 공개키 전달 */
		mv.addObject("Modulus", keySet.getPublicKeyModulus());
		mv.addObject("Exponent", keySet.getPublicKeyExponent());
		
		// 회원정보 가져오기
		List<Map<String, Object>> mypageInfo = memberService.memberInfoList(commandMap.getMap());

		mv.addObject("mypageInfo", mypageInfo);

		mv.setViewName("member/update");

		return mv;
	}

	//회원정보 수정성공
	@RequestMapping(value = "/mypageComplete", method = RequestMethod.POST)
	public ModelAndView joinComplete(CommandMap commandMap, HttpServletRequest request) throws Exception {

		ModelAndView mv = new ModelAndView();
		String EMAIL = request.getParameter("EMAIL1") + "@" + request.getParameter("EMAIL2");
		Map<String, Object> mypageMap = new HashMap<String, Object>();
		commandMap.getMap().put("MEMBER_ID", request.getSession().getAttribute("MEMBER_ID"));
		commandMap.getMap().put("EMAIL", EMAIL);
		mypageMap = commandMap.getMap();
		memberService.updateMember(mypageMap, request);
		mv.setViewName("member/mypage");
		return mv;

	}
	
	// 회원탈퇴
	@RequestMapping(value = "/member/deleteMember")
	@ResponseBody
	public int deleteMember(CommandMap commandMap, HttpServletRequest request) throws Exception {

		HttpSession session = request.getSession();
		Map<String, Object> member = new HashMap<String, Object>();
		int check = 0;
		//정보꺼내와서
		member = memberService.memberInfo((String) commandMap.get("MEMBER_ID"));
		//비밀번호 비교
		if (member.get("PASSWD").equals(commandMap.get("PASSWD"))) {
			memberService.deleteMember(commandMap.getMap());
			session.invalidate();
			check = 0;
			return check;

		} else {
			check = 1;
			return check;
		}

	}
	//탈퇴폼으로
	@RequestMapping(value = "/member/deleteMemberForm")
	public ModelAndView deleteForm(CommandMap map) {
		ModelAndView mv = new ModelAndView("member/deleteMember");

		return mv;
	}
			

	// mypage -> myboard
	@RequestMapping(value = "/member/myboard")
	public ModelAndView myBoardList(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("member/myboard");
		List<Map<String, Object>> list = null;
		List<Map<String, Object>> list2 = null;

		commandMap.put("MEMBER_ID", request.getSession().getAttribute("MEMBER_ID"));

		list = memberService.myBoardQna(commandMap.getMap());
		list2 = memberService.myBoardReview(commandMap.getMap());

		//폼에서 리뷰인지 
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

		return mv;
	}

	// mypage -> coupon

	@RequestMapping(value = "/member/mycoupon")
	public ModelAndView myCouponList(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView();
		List<Map<String, Object>> list = null;		
		
		commandMap.put("MEMBER_ID", request.getSession().getAttribute("MEMBER_ID"));

		list = memberService.myCoupon(commandMap.getMap());
		
		mv.addObject("list", list);
		
		mv.setViewName("member/mycoupon");
		return mv;
	}

	@RequestMapping(value = "/member/couponDetail")
	public ModelAndView couponDetail(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView();
		
		List<Map<String, Object>> list = null;	
		
		System.out.println("글번호"+commandMap.get("COUPON_NO"));
		memberService.readCoupon(commandMap.getMap(), request);
		
		commandMap.put("MEMBER_ID", request.getSession().getAttribute("MEMBER_ID"));

		list = memberService.myCoupon(commandMap.getMap());
		mv.addObject("list", list);
		
		mv.setViewName("redirect:/member/mycoupon");
		return mv;
	}

	@RequestMapping(value = "/member/mymessage")
	public ModelAndView myMessage(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("member/mymessage");
		List<Map<String, Object>> list = null;
		Map<String, Object> messageAll = new HashMap<String, Object>();
		
		commandMap.put("TOMEMBER", request.getSession().getAttribute("MEMBER_ID"));

		list = memberService.myMessage(commandMap.getMap());
		messageAll = memberService.messageAll(commandMap.getMap());
		
		mv.addObject("list", list);
		mv.addObject("messageAll", messageAll);
		
		return mv;
	}

	@RequestMapping(value = "/member/messageWrite")
	public ModelAndView mymessageWrite(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
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
	//메세지 리스트
	@RequestMapping(value = "/admin/member/message")
	public ModelAndView AdminMessage(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("member.message");
		List<Map<String, Object>> list = null;
		Map<String, Object> messageAll = new HashMap<String, Object>();
		
		

		System.out.println("아이디" + commandMap.get("MEMBER_ID"));
		commandMap.put("TOMEMBER", request.getSession().getAttribute("MEMBER_ID"));

		if (commandMap.get("SearchKeyword") == null && commandMap.get("SearchNum") == null)
		list = memberService.myMessage(commandMap.getMap());
		else
			list = memberService.AdminSearchmyMessage(commandMap.getMap());
			
		
		messageAll = memberService.messageAll(commandMap.getMap());
		
		mv.addObject("list", list);
		mv.addObject("messageAll", messageAll);
		return mv;
	}
	//어드민 메시지 쓰기
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

	@RequestMapping(value = "/member/messageDetail")
	public ModelAndView messageDetail(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView();
		
		List<Map<String, Object>> list = null;	
		
		memberService.readMessage(commandMap.getMap(), request);
		
		commandMap.put("TOMEMBER", request.getSession().getAttribute("MEMBER_ID"));

		list = memberService.myMessage(commandMap.getMap());
		mv.addObject("list", list);
		
		mv.setViewName("redirect:/member/mymessage");
		return mv;
	}

	// 메세지 삭제
	@RequestMapping(value = "/member/deleteMessage")
	public ModelAndView deleteMessage(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView();
		List<Map<String, Object>> list = null;
		Map<String, Object> messageAll = new HashMap<String, Object>();
		
		memberService.deleteMessage(commandMap.getMap());

		commandMap.put("TOMEMBER", request.getSession().getAttribute("MEMBER_ID"));

		list = memberService.myMessage(commandMap.getMap());
		messageAll = memberService.messageAll(commandMap.getMap());
		
		mv.addObject("list", list);
		mv.addObject("messageAll", messageAll);
		mv.setViewName("redirect:/member/mymessage");
		
		return mv;

	}	

	@RequestMapping(value="/checkNowPass")
	@ResponseBody
	public void checkNowPass(HttpServletRequest request, HttpServletResponse response, CommandMap commandMap, HttpSession session) throws Exception{
		PrintWriter out = response.getWriter();
		String NowPASSWD= (request.getParameter("NowPASSWD") == null)?"":String.valueOf(request.getParameter("NowPASSWD"));
		
		commandMap.getMap().put("MEMBER_ID", request.getSession().getAttribute("MEMBER_ID"));		
        
		int chk = memberService.checkPass(commandMap.getMap(),(Key)session.getAttribute("RSA_private"));
			
		out.print(chk);
		out.flush();
		out.close();
	}
}