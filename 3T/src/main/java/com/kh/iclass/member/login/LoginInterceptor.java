package com.kh.iclass.member.login;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class LoginInterceptor extends HandlerInterceptorAdapter{
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception 
    {
    	//주문 카트 무엇이든 들어갈때 로그인체크하고 비회원이면 비회원 아이디를 주도록한다.
		try {
			//회원 ID 가 없으면.
			if (request.getSession().getAttribute("MEMBER_ID") == null) {
				//비회원 ID 가 없으면.세션만주고 다시 상품디테일서 값 넣어주는거 처리
				if (request.getSession().getAttribute("NON_MEMBER_ID") == null) {
					System.out.println("*******************************");
					System.out.println("request.getParameter(\"GOODS_NO\")=="+request.getParameter("GOODS_NO"));
					request.getSession().setAttribute("GOODS_NO",request.getParameter("GOODS_NO") );
					if(request.getParameter("optno[]")!=null) {
						request.getSession().setAttribute("optno[]", request.getParameter("optno[]"));
					}else {
						
					}
					response.sendRedirect("/3T/loginForm3");
					System.out.println("여러개일때?");
					System.out.println("로그인인터셉터로 넘어오는값:");
					System.out.println(request.getParameterValues("attribute_no[]"));
					
					HttpSession session = request.getSession();
					//비회원에서 로그인하면?
					//장바구니 !
					String cart_No[]=request.getParameterValues("CART_NO");
					/*if(cart_No!=null) {
					request.setAttribute("CART_NO2", request.getParameterValues("CART_NO"));
					session.putValue("CART_NO2", cart_No);
					
					System.out.println("cart_No"+cart_No);
					
					response.sendRedirect("/3T/loginForm2");
					}
					else {
						Map<String, Object> cartMap = new HashMap<String, Object>();
						
						List<Map<String, Object>> fromDetailOne = new ArrayList<Map<String, Object>>();
						
						cartMap.put("REGDATE", 		new Date());
						//??????
						cartMap.put("ATTRIBUTE_NO", (String)request.getParameter("attribute_no[]"));
						cartMap.put("GOODS_NO",		(String)request.getParameter("GOODS_NO"));
						cartMap.put("COUNT",		(String)request.getParameter("ea[]"));
						cartMap.put("CONTENT",		(String)request.getParameter("CONTENT"));
						cartMap.put("IMAGE",		(String)request.getParameter("IMAGE"));
						cartMap.put("PRICE",		(String)request.getParameter("PRICE"));
						cartMap.put("NAME",			(String)request.getParameter("NAME"));
						cartMap.put("COLOR",		(String)request.getParameter("optno[]").toString().split("-")[0]);
						cartMap.put("GOODS_SIZE",	(String)request.getParameter("optno[]").toString().split("-")[1]);
						fromDetailOne.add(cartMap);
						session.setAttribute("fromDetailOne", fromDetailOne);
						System.out.println("session.getAttribute('fromDetailOne'):"+session.getAttribute("fromDetailOne"));
						response.sendRedirect("/3T/loginForm3");
					}*/
					
					
					
					return false;
				}else {
					
					
					
					
					return true;
				}
				
			} 
		} catch (Exception e) {
			e.printStackTrace();
		}
		// admin 세션key 존재시 main 페이지 이동
		return true;
    }
    
    //preHandel -> controller 이벤트 호출전
    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception 
    {
        super.postHandle(request, response, handler, modelAndView);
    }
}
