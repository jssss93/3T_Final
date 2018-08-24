package com.kh.iclass.mypage;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.kh.iclass.admin.member.AdminMemberService;
import com.kh.iclass.common.map.CommandMap;

@Controller
public class MypageController {
	
	String authNum = "";

	@Resource(name="mypageService")
	private MypageService mypageService;
	
	@Resource(name="adminMemberService")
	private AdminMemberService adminMemberService;

	
	@RequestMapping(value="/mypage/mypage")
	public ModelAndView mypage(HttpServletRequest request){
		ModelAndView mv = new ModelAndView();
		System.out.println("세션 : " +request.getSession().getAttribute("MEMBER_ID"));
		mv.setViewName("mypage/mypage");
		
		return mv;
	}
	
/*	@RequestMapping(value="/mypage/update")
	public ModelAndView mypageInfo(CommandMap commandMap, HttpServletRequest request) throws Exception
	{
		  System.out.println("세션 : " + request.getSession().getAttribute("MEMBER_ID"));
	      ModelAndView mv = new ModelAndView();
	      System.out.println("아이디" + commandMap.get("MEMBER_ID"));
	      // 상품정보 가져오기
	      List<Map<String, Object>> mypageInfo =  mypageService.mypageInfo(commandMap.getMap());

	      mv.addObject("mypageInfo", mypageInfo);
	      mv.setViewName("mypage/update");
	      
	      return mv;
	   }*/
	
	@RequestMapping(value="/mypage/update")
	public ModelAndView mypageInfo(HttpServletRequest request) throws Exception
	{
		  System.out.println("세션 : " + request.getSession().getAttribute("MEMBER_ID"));
	      ModelAndView mv = new ModelAndView();
	      CommandMap commandMap = new CommandMap();
	      commandMap.put("MEMBER_ID", request.getSession().getAttribute("MEMBER_ID"));
	      System.out.println("아이디" + commandMap.get("MEMBER_ID"));
	      // 상품정보 가져오기
	      List<Map<String, Object>> mypageInfo =  mypageService.mypageInfo(commandMap.getMap());
	      
	      mv.addObject("mypageInfo", mypageInfo); 

				 
/*	      String EMAIL = (String)mypageInfo.get(0).get("EMAIL");
	      String EMAIL1 = EMAIL.split("@")[0];
	      String EMAIL2 = EMAIL.split("@")[1];
	      
	      commandMap.put("EMAIL1", EMAIL1);
	      commandMap.put("EMAIL2", EMAIL2);
	      */
	      
/*	      String str1 = "${row.EMAIL}";
	      String EMAIL1 = str1.split("@")[0];
	      String EMAIL2 = str1.split(";")[1];*/


	      mv.setViewName("mypage/update");
	      
	      return mv;
	   }
	
	
/*	@RequestMapping(value="/mypage/update")
	public ModelAndView mypageInfo(CommandMap commandMap) throws Exception 
	{

	      ModelAndView mv = new ModelAndView();

	      // 조회수 올리기
	      goodsService.updateHitcnt(commandMap.getMap());
	      // 상품정보 가져오기
	      List<Map<String, Object>> myInfo = mypageService.myInfo(commandMap.getMap());

	      mv.addObject("mypage", myInfo);
     
	      mv.setViewName("mypage/update");
	      
	      return mv;
	   }
	*/

	@RequestMapping(value="/mypageComplete", method=RequestMethod.POST)
	public ModelAndView joinComplete(CommandMap commandMap, HttpServletRequest request) throws Exception{
		System.out.println("아이디"+commandMap.get("MEMBER_ID"));
		System.out.println("주소1"+commandMap.get("ADDR1"));
		System.out.println("주소2"+commandMap.get("ADDR2"));
		System.out.println("폰번호"+commandMap.get("PHONE"));
		System.out.println("비밀번호"+commandMap.get("PASSWD"));
		
		ModelAndView mv = new ModelAndView();
		String EMAIL = request.getParameter("EMAIL1")+"@"+request.getParameter("EMAIL2");
		Map<String, Object> mypageMap=new HashMap<String, Object>();
		commandMap.getMap().put("MEMBER_ID", request.getSession().getAttribute("MEMBER_ID"));
		commandMap.getMap().put("EMAIL", EMAIL);
		mypageMap=commandMap.getMap();
		System.out.println("맵에에에에"+mypageMap);
		mypageService.updateMember(mypageMap, request);
		mv.setViewName("mypage/mypage");
		return mv;
		
	}
	
/*	// 회원 정보 수정
	@RequestMapping(value = "/member/adminModifyMember")
	public ModelAndView adminModifyMember(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView();

		adminMemberService.modifyMember(commandMap.getMap());
		mv.setViewName("redirect:/member/adminMemberList");

		return mv;
	}*/
	
	
	
	//mypage -> myboard 
	
	
	@RequestMapping(value = "/mypage/myboard")
	public ModelAndView myBoardList(CommandMap commandMap,HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("mypage/myboard");
		List<Map<String, Object>> list = null;
		List<Map<String, Object>> list2 = null;
		
		System.out.println("boardtype" + commandMap.get("BoardType"));
		System.out.println("아이디" + commandMap.get("MEMBER_ID"));
		commandMap.put("MEMBER_ID", request.getSession().getAttribute("MEMBER_ID"));

		list = mypageService.myBoardQna(commandMap.getMap());
		list2 = mypageService.myBoardReview(commandMap.getMap());
		
		/*if (commandMap.get("SearchKeyword") == null && commandMap.get("SearchNum") == null)
			list = QaService.QaList(commandMap.getMap());
		else 
			list = QaService.QaSearchList(commandMap.getMap());
*/
		if(commandMap.get("sel") != null) {
			if(commandMap.get("sel").equals("0")) {
				mv.addObject("list", list);
			}else if(commandMap.get("sel").equals("1")){
				mv.addObject("list2", list2);
			}else {
				mv.addObject("list2", list2);
				mv.addObject("list", list);
			}
		}else {
			mv.addObject("list2", list2);
			mv.addObject("list", list);
			
		}
		mv.addObject("sel",request.getParameter("sel"));
		
		System.out.println("리스트"+list);

		return mv;
	}
	
	
	
	// mypage -> coupon
	
	@RequestMapping(value="/GiftCoupon")
	public ModelAndView GiftCoupon(CommandMap commandMap, HttpServletRequest request) throws Exception
	{
		ModelAndView mv = new ModelAndView();
		Map<String, Object> couponMap=new HashMap<String, Object>();
		commandMap.put("MEMBER_ID", request.getParameter("MEMBER_ID"));
		
		
		couponMap = commandMap.getMap();
		System.out.println(commandMap.getMap());
		mypageService.insertCoupon(couponMap, request);
		
		List<Map<String, Object>> memberList = adminMemberService.memberList();

		mv.addObject("memberList", memberList);
		
		mv.setViewName("member.list");

		return mv;
	}
	

	@RequestMapping(value = "/mypage/mycoupon")
	public ModelAndView myCouponList(CommandMap commandMap,HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("mypage/mycoupon");
		List<Map<String, Object>> list = null;

		System.out.println("아이디" + commandMap.get("MEMBER_ID"));
		commandMap.put("MEMBER_ID", request.getSession().getAttribute("MEMBER_ID"));

		list = mypageService.myCoupon(commandMap.getMap());
		
		/*if (commandMap.get("SearchKeyword") == null && commandMap.get("SearchNum") == null)
			list = QaService.QaList(commandMap.getMap());
		else 
			list = QaService.QaSearchList(commandMap.getMap());
*/
		mv.addObject("list", list);
		
		return mv;
	}
	
	@RequestMapping(value = "/mypage/mymessage")
	public ModelAndView myMessage(CommandMap commandMap,HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("mypage/mymessage");
		List<Map<String, Object>> list = null;

		System.out.println("아이디" + commandMap.get("MEMBER_ID"));
		commandMap.put("TOMEMBER", request.getSession().getAttribute("MEMBER_ID"));

		list = mypageService.myMessage(commandMap.getMap());
		
		/*if (commandMap.get("SearchKeyword") == null && commandMap.get("SearchNum") == null)
			list = QaService.QaList(commandMap.getMap());
		else 
			list = QaService.QaSearchList(commandMap.getMap());
*/
		mv.addObject("list", list);
		
		return mv;
	}
	
	@RequestMapping(value="/mypage/messageWrite")
	public ModelAndView mymessageWrite(HttpServletRequest request){
		ModelAndView mv = new ModelAndView();
		System.out.println("세션 : " +request.getSession().getAttribute("MEMBER_ID"));
		mv.setViewName("mypage/messageWrite");
		
		return mv;
	}
	
	@RequestMapping(value="/mypage/sendmessage")
	public ModelAndView sendMessage(CommandMap commandMap, HttpServletRequest request) throws Exception
	{
		ModelAndView mv = new ModelAndView();
		Map<String, Object> messageMap=new HashMap<String, Object>();
		commandMap.put("TOMEMBER", "ADMIN");
		commandMap.put("SENDMEMBER", request.getSession().getAttribute("MEMBER_ID"));
		messageMap = commandMap.getMap();
		mypageService.insertMessage(messageMap, request);
		
		List<Map<String, Object>> list = null;
		list = mypageService.myMessage(commandMap.getMap());
		mv.addObject("list", list);
		
		
		mv.setViewName("redirect:/mypage/mymessage");

		return mv;
	}
	
	@RequestMapping(value = "/admin/member/message")
	public ModelAndView AdminMessage(CommandMap commandMap,HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("member.message");
		List<Map<String, Object>> list = null;

		System.out.println("아이디" + commandMap.get("MEMBER_ID"));
		commandMap.put("TOMEMBER", request.getSession().getAttribute("MEMBER_ID"));

		list = mypageService.myMessage(commandMap.getMap());
		
		/*if (commandMap.get("SearchKeyword") == null && commandMap.get("SearchNum") == null)
			list = QaService.QaList(commandMap.getMap());
		else 
			list = QaService.QaSearchList(commandMap.getMap());
*/
		mv.addObject("list", list);
		
		return mv;
	}
	
	@RequestMapping(value="/admin/member/messageWrite")
	public ModelAndView AdminMessageWrite(HttpServletRequest request){
		ModelAndView mv = new ModelAndView();
		
		Map<String, Object> messageMap=new HashMap<String, Object>();
		
		System.out.println("이건나오지? : " + request.getParameter("SENDMEMBER"));
		

		
		mv.addObject("SENDMEMBER",request.getParameter("SENDMEMBER"));
		mv.setViewName("member.messageWrite");
		
		return mv;
	}
	
	@RequestMapping(value="/admin/member/sendmessage")
	public ModelAndView AdminSendMessage(CommandMap commandMap, HttpServletRequest request) throws Exception
	{
		System.out.println("나오나?" + request.getParameter("TOMEMBER"));
		ModelAndView mv = new ModelAndView();
		Map<String, Object> messageMap=new HashMap<String, Object>();
		commandMap.put("TOMEMBER", request.getParameter("TOMEMBER"));
		commandMap.put("SENDMEMBER", request.getSession().getAttribute("MEMBER_ID"));
		
		messageMap = commandMap.getMap();
		mypageService.insertMessage(messageMap, request);
		
		commandMap.put("TOMEMBER", request.getSession().getAttribute("MEMBER_ID"));
		List<Map<String, Object>> list = null;
		list = mypageService.myMessage(commandMap.getMap());
		mv.addObject("list", list);
		
		
		mv.setViewName("member.message");

		return mv;
	}
	
	
}