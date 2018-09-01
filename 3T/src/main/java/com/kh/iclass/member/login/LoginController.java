package com.kh.iclass.member.login;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.util.WebUtils;

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
	   public ModelAndView logout(HttpServletResponse response, HttpServletRequest request, CommandMap commandMap) throws Exception {
	      HttpSession session = request.getSession(false);
	      Map<String, Object> map = new HashMap<String, Object>();
	          
	      Cookie autoLogin = WebUtils.getCookie(request, "autoLogin");

	      if ( autoLogin != null ){
	          // null이 아니면 존재하면!
	    	  autoLogin.setPath("/");
	        
	    	 // 쿠키는 없앨 때 유효시간을 0으로 설정하는 것 !!! invalidate같은거 없음.
	    	  autoLogin.setMaxAge(0);
	          // 쿠키 설정을 적용한다.
	          response.addCookie(autoLogin);
	           
	       // 사용자 테이블에서도 유효기간을 현재시간으로 다시 세팅해줘야함.
	          Date SESSIONLIMIT = new Date(System.currentTimeMillis());
	          
	          map.put("MEMBER_ID", session.getAttribute("MEMBER_ID"));
	          map.put("SESSIONLIMIT", SESSIONLIMIT);
	          map.put("SESSIONKEY", "none");
	          
	          loginService.keepLogin(map);
	          
	      }     
	      if (session != null)
	      {
	         session.invalidate();
	      }
	      
	      ModelAndView mv = new ModelAndView();
	      mv.setViewName("redirect:/main");
	      
	      return mv;
	 }
   
   //로그인 됨
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public ModelAndView loginComplete(CommandMap commandMap, HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mv = new ModelAndView();

		HttpSession session = request.getSession();

		System.out.println("아이디" + commandMap.get("MEMBER_ID"));

		// 멤버 정보 가져오고
		Map<String, Object> chk = loginService.loginGo(commandMap.getMap());
		if (chk == null) {
			mv.setViewName("member/loginForm");
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
				
				 // 쿠키 사용한다는게 체크되어 있으면...
				if(commandMap.get("autoLogin") != null)
				{
					System.out.println("session.getId()? : "+session.getId());
					System.out.println("session.getId()? : "+ session.getAttribute("MEMBER_ID"));
	                // 쿠키를 생성하고 현재 로그인되어 있을 때 생성되었던 세션을 쿠키에 저장한다.
					Cookie autoLogin = new Cookie("autoLogin", session.getId());
					// 쿠키를 찾을 경로를 컨텍스트 경로로 변경해 주고...
					autoLogin.setPath("/");
	                int amount = 60 * 60 * 24 * 7;
	                autoLogin.setMaxAge(amount); // 단위는 (초)임으로 7일정도로 유효시간을 설정해 준다.
	                // 쿠키를 적용해 준다.
	                response.addCookie(autoLogin); 
	                //
	                String SESSIONKEY = session.getId();
	                // currentTimeMills()가 1/1000초 단위임으로 1000곱해서 더해야함 
	                Date sessionLimit = new Date(System.currentTimeMillis() + (1000*amount));
	                // 현재 세션 id와 유효시간을 사용자 테이블에 저장한다.
	                commandMap.put("MEMBER_ID", commandMap.get("MEMBER_ID"));
	                commandMap.put("SESSIONKEY", SESSIONKEY);
	                commandMap.put("SESSIONLIMIT", sessionLimit);
	                
	                loginService.keepLogin(commandMap.getMap());
				}
				
				if (request.getSession().getAttribute("MEMBER_ID").equals("ADMIN")) {
					mv.setViewName("redirect:/admin/main");
				} else {
					commandMap.put("MEMBER_ID", request.getSession().getAttribute("MEMBER_ID"));
					// 쿠폰개수띄우기위해
					Map<String, Object> NOREADCOUPON = new HashMap<String, Object>();
					NOREADCOUPON = memberService.noReadCoupon(commandMap.getMap());
					mv.addObject("NOREADCOUPON", NOREADCOUPON);
					
					System.out.println("노리드쿠폰 " + NOREADCOUPON);
					System.out.println("노리드쿠폰! " + NOREADCOUPON.get("NOREADCOUPON"));

					if (NOREADCOUPON.get("NOREADCOUPON").toString().equals("0")) {
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
				mv.setViewName("member/loginForm");
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