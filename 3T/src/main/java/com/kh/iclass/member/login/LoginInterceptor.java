package com.kh.iclass.member.login;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class LoginInterceptor extends HandlerInterceptorAdapter{

     

    @Override

    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception 
    {

        try 
        {
            //admin이라는 세션key를 가진 정보가 널일경우 로그인페이지로 이동
            if(request.getSession().getAttribute("MEMBER_ID") == null )
            {
                    response.sendRedirect("/3T/loginForm"); 
                    return false;
            }
            
        }
        catch (Exception e) 
        {
            e.printStackTrace();
        }
        //admin 세션key 존재시 main 페이지 이동
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
