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
					
					request.getSession().setAttribute("GOODS_NO",request.getParameter("GOODS_NO") );
					
					if(request.getParameter("optno[]")!=null) {
						request.getSession().setAttribute("optno[]", request.getParameter("optno[]"));
					}else {
					}
					
					response.sendRedirect("/3T/loginForm3");
					HttpSession session = request.getSession();
					//비회원에서 로그인하면?
					//장바구니 !
					String cart_No[]=request.getParameterValues("CART_NO");
					
					return false;
					
				//비회원 정보가있을때. 
				}else {
					response.sendRedirect("/3T/loginForm3");
					return false;
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
