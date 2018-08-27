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
		try {
			if (request.getSession().getAttribute("MEMBER_ID") == null) {
				
				if (request.getSession().getAttribute("NON_MEMBER_ID") == null) {
					
					HttpSession session = request.getSession();
					
					System.out.println(request.getAttribute("CART_NO"));
					request.setAttribute("aa", request.getAttribute("CART_NO"));
					
					String cart_No[]=request.getParameterValues("CART_NO");
					request.setAttribute("CART_NO2", request.getParameterValues("CART_NO"));
					session.putValue("CART_NO2", cart_No);
					
					System.out.println("cart_No"+cart_No);
					
					response.sendRedirect("/3T/loginForm2");
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

    //postHandle - controller 호출 후 view 페이지 출력전
/*    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception 
    {
        super.afterCompletion(request, response, handler, ex);
    }
	
	//afterCompletion - controller + view 페이지 모두 출력 후
    @Override
    public void afterConcurrentHandlingStarted(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception 
    {
        super.afterConcurrentHandlingStarted(request, response, handler);
    }
    */
    

}
