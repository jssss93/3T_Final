package com.kh.iclass.cart;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class CartInterceptor extends HandlerInterceptorAdapter{
     
	//preHandel -> controller 이벤트 호출전
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception 
    {
    	//회원이면 패스
    	if(request.getSession().getAttribute("MEMBER_ID") != null) {
    		return true;
    	}
    	
		//비회원 ID 가 없으면.세션만주고 다시 상품디테일서 값 넣어주는거 처리
		if (request.getSession().getAttribute("NON_MEMBER_ID") == null) {
			
			/*request.getSession().setAttribute("GOODS_NO",request.getParameter("GOODS_NO") );
			
			//상품페이지에서 로그인폼을 띄운거면  속성에대한 세션을 넣어준다
			if(request.getParameter("optno[]")!=null) {
				request.getSession().setAttribute("optno[]", request.getParameter("optno[]"));
			}*/
			
			response.sendRedirect("/3T/loginForm3");
			HttpSession session = request.getSession();
			//비회원에서 로그인하면?
			
			//장바구니 !
			String cart_No[]=request.getParameterValues("CART_NO");
			
			return false;
		}
		return true;
    }
			//비회원 정보가있을때. 
       
    
    
    
    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception 
    {
        super.postHandle(request, response, handler, modelAndView);
    }

    

}
