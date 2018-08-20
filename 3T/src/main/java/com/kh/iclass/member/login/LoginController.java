package com.kh.iclass.member.login;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/*import kh.spring.cart.CartService;*/
import com.kh.iclass.common.map.CommandMap;
import com.kh.iclass.mypage.MypageService;;

/* -1- import spring.siroragi.cart.CartService;
import spring.siroragi.member.MemberService;
*/
@Controller
public class LoginController {

/*   @Resource(name = "cartService")
   private CartService cartService;*/
   /*
    * @Resource(name = "memberService") private MemberService memberService;
    */
   @Resource(name = "loginService")
   private LoginService loginService;
   
   @Resource(name="mypageService")
   private MypageService mypageService;

   // 로그인 폼
   // 로그인 폼
   @RequestMapping(value = "/member/loginForm")
   public ModelAndView loginForm() {
      ModelAndView mv = new ModelAndView();
      mv.setViewName("member/loginForm");
      return mv;
   }
   

   @RequestMapping(value = "/member/logout")		//로그아웃
   public ModelAndView logout(HttpServletRequest request, CommandMap commandMap) {
      HttpSession session = request.getSession(false);
      if (session != null)
         session.invalidate();
      ModelAndView mv = new ModelAndView();
      mv.setViewName("redirect:/main");
      return mv;
   }
 
   
  /* @RequestMapping(value = "/loginComplete")
   public ModelAndView loginComplete() {
      ModelAndView mv = new ModelAndView();
      mv.setViewName("loginComplete");
      return mv;
   }*/
   
   //로그인 됨
   @SuppressWarnings("unchecked")
   @RequestMapping(value = "/login", method = RequestMethod.POST)
   public ModelAndView loginComplete(CommandMap commandMap, HttpServletRequest request) throws Exception {
      ModelAndView mv = new ModelAndView();
      
      
      HttpSession session = request.getSession();
      
      System.out.println("아이디" + commandMap.get("MEMBER_ID"));
      
      Map<String, Object> chk = loginService.loginGo(commandMap.getMap());
      if (chk == null) {	//아이디 값이 없으면
         mv.setViewName("loginForm");
         mv.addObject("message", "해당 아이디가 없습니다.");
         return mv;
      } else {	//아이디 값이 있으면
    	  								//비밀번호 1 = DB에 저장된 해당 아이디 비밀번호,		비밀번호 2 = 로그인시 회원이 입력한 비밀번호 
         System.out.println("비밀번호 1 : " + chk.get("PASSWD") + "\n비밀번호 2 : " + commandMap.get("PASSWD"));
         			//멤버 비밀번호가 입력한 비밀번호 값이 같으면
         if (chk.get("PASSWD").equals(commandMap.get("PASSWD"))) {
            session.setAttribute("MEMBER_ID", commandMap.get("MEMBER_ID"));	//세션에 아이디를 넣어라
            mv.addObject("MEMBER", chk);	//
            if(request.getSession().getAttribute("MEMBER_ID").equals("ADMIN"))
            {
            	mv.setViewName("redirect:/admin/main");
            }
            else
            {
            	List<Map<String, Object>> list = null;
            	commandMap.put("MEMBER_ID", request.getSession().getAttribute("MEMBER_ID"));
            	
            	list = mypageService.myCoupon(commandMap.getMap());
            	System.out.println("list size? :"+ list.size());
            	mv.addObject("msg", list.size());
            	session.setAttribute("coupon", list.size());
            	
            	mv.setViewName("member/loginCoupon");
            }
            
            
            session.setAttribute("NAME", chk.get("NAME"));
            session.setAttribute("MEMBER_NO", chk.get("MEMBER_NO"));
            session.setAttribute("PHONE", chk.get("PHONE"));
            session.setAttribute("EMAIL", chk.get("EMAIL"));
            session.setAttribute("ADMIN", chk.get("ADMIN"));

            // 이메일 포맷 변경
            String email = chk.get("EMAIL").toString();
            System.out.println("이메일 : " + email);
            String[] sessionEmail = email.split("@");
            /*session.setAttribute("MEMBER_EMAIL", sessionEmail.toString());*/
            session.setAttribute("EMAIL1", sessionEmail[0].toString());	//이메일 앞부분
            session.setAttribute("EMAIL2", sessionEmail[1].toString());	//이메일 뒷부분
            
       

            /*Map<String, Object> cart = new HashMap<String, Object>();*/

            // 로그인하면 등록기간 3일 이상된 상품 지우기
           /* cart.put("MEMBER_NUMBER", chk.get("MEMBER_NUMBER"));
            cartService.deleteCarts(cart);
            cart.remove("MEMBER_NUMBER");

            // 로그인하면 세션에 있던 장바구니 정보넣기
            if (session.getAttribute("cartSession") != null) {
               List<Map<String, Object>> cartSession = (List<Map<String, Object>>) session.getAttribute("cartSession");

               for (int i = 0; i < cartSession.size(); i++) {
                  cart = cartSession.get(i);
                  System.out.println("장바구니 세션" + i + " : " + cartSession.get(i));

                  cart.put("MEMBER_NUMBER", chk.get("MEMBER_NUMBER"));

                  cartService.cartInsert2(cart);
               }
               session.removeAttribute("cartSession");
            }
            */
            
            //AOP로 비회원으로 구매시 일단 정지
            if(commandMap.get("viewName") != null) {
            	String view = (String)commandMap.get("viewName");
            	if(!view.equals("")) {
               System.out.println("AOP 로전송된 VIEW NAME = " + commandMap.getMap().get("viewName"));
               String viewName = (String)commandMap.getMap().get("viewName");    
               mv.setViewName("redirect:"+viewName);
               
               
               }
               
             }
             
            return mv;
            
         } else {	//비밀번호 틀렸을때
        	mv.setViewName("loginForm");
            mv.addObject("message", "비밀번호를 확인해 주세요.");
            return mv;
         }
      }
    }
      

}