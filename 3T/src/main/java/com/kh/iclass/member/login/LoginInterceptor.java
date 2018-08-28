package com.kh.iclass.member.login;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class LoginInterceptor extends HandlerInterceptorAdapter{
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception 
    {
		try {
			if (request.getSession().getAttribute("MEMBER_ID") == null) {
				
				if (request.getSession().getAttribute("NON_MEMBER_ID") == null) {
					
					HttpSession session = request.getSession();
					
					
					String cart_No[]=request.getParameterValues("CART_NO");
					if(cart_No!=null) {
					request.setAttribute("CART_NO2", request.getParameterValues("CART_NO"));
					session.putValue("CART_NO2", cart_No);
					
					System.out.println("cart_No"+cart_No);
					
					response.sendRedirect("/3T/loginForm2");
					}else {
						Map<String, Object> cartMap = new HashMap<String, Object>();
						
						List<Map<String, Object>> fromDetailOne = new ArrayList<Map<String, Object>>();
						
						cartMap.put("REGDATE", 		new Date());
						//??????
						cartMap.put("ATTRIBUTE_NO",(String)request.getParameter("attribute_no[]"));
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
					}
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
