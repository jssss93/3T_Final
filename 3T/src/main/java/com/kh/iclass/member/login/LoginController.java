package com.kh.iclass.member.login;

import java.util.ArrayList;
import java.util.Date;
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
import org.springframework.web.servlet.ModelAndView;

import com.kh.iclass.cart.CartService;
/*import kh.spring.cart.CartService;*/
import com.kh.iclass.common.map.CommandMap;
import com.kh.iclass.common.util.SequenceUtils;
import com.kh.iclass.member.MemberService;;

/* -1- import spring.siroragi.cart.CartService;
import spring.siroragi.member.MemberService;
*/
@Controller
public class LoginController {

	@Resource(name = "cartService")
	private CartService cartService;

	@Resource(name = "loginService")
	private LoginService loginService;

	@Resource(name = "memberService")
	private MemberService memberService;

	// 로그인 폼
	@RequestMapping(value = "/loginForm")
	public ModelAndView loginForm() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("member/loginForm");
		return mv;
	}   
   

   @RequestMapping(value = "/logout")		//로그아웃
   public ModelAndView logout(HttpServletRequest request, CommandMap commandMap) {
      HttpSession session = request.getSession(false);
      if (session != null)
         session.invalidate();
      ModelAndView mv = new ModelAndView();
      mv.setViewName("redirect:/main");
      return mv;
   }
   
   //로그인 됨
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public ModelAndView loginComplete(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView();

		HttpSession session = request.getSession();

		System.out.println("아이디" + commandMap.get("MEMBER_ID"));

		// 멤버 정보 가져오고
		Map<String, Object> chk = loginService.loginGo(commandMap.getMap());
		// 아이디 값이 없으면
		if (chk == null) {
			mv.setViewName("loginForm");
			mv.addObject("message", "해당 아이디가 없습니다.");
			return mv;
		}
		// 아이디 값이 있으면
		else {

			// 비밀번호가 같으면
			if (chk.get("PASSWD").equals(commandMap.get("PASSWD"))) {
				// 세션에 아이디를 넣어라
				session.setAttribute("MEMBER_ID", commandMap.get("MEMBER_ID"));
				mv.addObject("MEMBER", chk); 
				
				if (request.getSession().getAttribute("MEMBER_ID").equals("ADMIN")) {
					mv.setViewName("redirect:/admin/main");
				} else {
					List<Map<String, Object>> list = null;
					commandMap.put("MEMBER_ID", request.getSession().getAttribute("MEMBER_ID"));
					// 쿠폰개수띄우기위해
					list = memberService.myCoupon(commandMap.getMap());
					mv.addObject("msg", list.size());

					session.setAttribute("coupon", list.size());

					if (list.size() == 0) {
						mv.setViewName("redirect:/main");
					} else {
						mv.setViewName("member/loginCoupon");
					}

				}

				
				List<Map<String, Object>> sessionCartListMap=new ArrayList<Map<String, Object>>();
				Map<String, Object> sessionCartMap = new HashMap<String,Object>();
				//장바구니 자동추가
				if(session.getAttribute("sessionCartList")!=null) {
					System.out.println("세션장바구니 로그인시 자동추가 시작.");
					sessionCartListMap=(List<Map<String, Object>>) session.getAttribute("sessionCartList");
					for(int i=0;i<sessionCartListMap.size();i++) {
						commandMap.put("MEMBER_ID", session.getAttribute("MEMBER_ID"));
						commandMap.put("REGDATE", new Date());
						commandMap.put("ATTRIBUTE_NO",sessionCartListMap.get(i).get("ATTRIBUTE_NO"));
						commandMap.put("GOODS_NO",sessionCartListMap.get(i).get("GOODS_NO"));
						commandMap.put("COUNT",sessionCartListMap.get(i).get("COUNT"));
						sessionCartMap.put("map"+i, sessionCartListMap.get(i));
						cartService.insertCart(commandMap.getMap());
					}
				}
				return mv;

			} else { // 비밀번호 틀렸을때
				mv.setViewName("loginForm");
				mv.addObject("message", "비밀번호를 확인해 주세요.");
				return mv;
			}
		}
	}
    
   //비회원 장바구니 버튼인데 로그인창부터 띄우고 
   @RequestMapping(value = "/nonMemberLogin", method = RequestMethod.POST)
   public ModelAndView nonMemberLogin(CommandMap commandMap, HttpServletRequest request) throws Exception {
      ModelAndView mv = new ModelAndView();
      
      String n_Id="nonId_"+SequenceUtils.getSeqNumber();
      System.out.println("n_Id"+n_Id);
      
      request.setAttribute("MEMBER_ID",n_Id );
      
      mv.setViewName("/goods/detail");
      return mv;
   }
   
 //아이디찾기
   @RequestMapping(value = "/findIdForm")
   public ModelAndView findIdForm()
   {
	  ModelAndView mv = new ModelAndView();
	
	  mv.setViewName("member/findIdForm");
	   
	  return mv;
   }

   @RequestMapping(value = "/findId")
   public ModelAndView findId(HttpServletRequest request,CommandMap commandMap) throws Exception
   {
	  ModelAndView mv = new ModelAndView();
      
	  System.out.println("들어오냐?맵? : "+commandMap.getMap());
	  
	  String id = loginService.findId(commandMap.getMap());
	  
	  System.out.println("아이디찾음?" + id);
	  
	  mv.addObject("MEMBER_ID", id);
	  mv.setViewName("member/findId");
	   
	  return mv;
   }
   
   //비밀번호찾기
   @RequestMapping(value = "/findPasswdForm")
   public ModelAndView findPasswdForm()
   {
	  ModelAndView mv = new ModelAndView();
	   
	  mv.setViewName("member/findPasswdForm");
	   
	  return mv;
   }
   
   @RequestMapping(value = "/findPasswd")
   public ModelAndView findPasswd(HttpServletRequest request,CommandMap commandMap) throws Exception
   {
	  ModelAndView mv = new ModelAndView();
	  String EMAIL = request.getParameter("email1") + "@" + request.getParameter("email2");
      commandMap.put("EMAIL", EMAIL);
	  
	  System.out.println("들어오냐?맵? : "+commandMap.getMap());
	  
	  String passwd = loginService.findPasswd(commandMap.getMap());
	  
	  System.out.println("비밀번호찾음?" + passwd);
	  
	  mv.addObject("PASSWD", passwd);
	  mv.setViewName("member/findPasswd");
	   
	  return mv;
   }

}