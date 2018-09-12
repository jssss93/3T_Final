package com.kh.iclass.member.login;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.kh.iclass.common.util.RSAKeySet;

public class AdminLoginInterceptor extends HandlerInterceptorAdapter{

     

    @Override

    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception 
    {

        try 
        {
            //admin이라는 세션key를 가진 정보가 널일경우 로그인페이지로 이동
            if(request.getSession().getAttribute("MEMBER_ID") != null && request.getSession().getAttribute("MEMBER_ID").equals("ADMIN"))
            {
                    return true;
            }
            else
            {
        		HttpSession session = request.getSession();
        		RSAKeySet keySet = new RSAKeySet();
        		/* 세션에 개인키 저장 */
        		session.setAttribute("RSA_private", keySet.getPrivateKey());
        		
        		/* Front Side로 공개키 전달 */
        		session.setAttribute("Modulus", keySet.getPublicKeyModulus());
        		session.setAttribute("Exponent", keySet.getPublicKeyExponent());
            	//admin이 아니면 권한없다고 에러페이지로
            	response.sendRedirect("/3T/adminError");
            	return false;
            }
            
        }
        catch (Exception e) 
        {
            e.printStackTrace();
        }
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
