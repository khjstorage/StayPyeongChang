package com.staypc.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import java.io.PrintWriter;

public class LoginCeptor extends HandlerInterceptorAdapter{
    public LoginCeptor() {
        super();
    }

    //preHandle - controller 이벤트 호출전
    //postHandle - controller 호출 후 view 페이지 출력전
    //afterCompletion - controller + view 페이지 모두 출력 후
    //afterConcurrentHandlingStarted - 뭐 동시에 핸들링 해주는 메서드인대 정확히는 모르겠습니다.

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler){
        try {
            if(request.getSession().getAttribute("userId") == null ){
                response.sendRedirect("/login/login.do");
                return false;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return true;
    }

    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {
        super.postHandle(request, response, handler, modelAndView);
    }

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {
        super.afterCompletion(request, response, handler, ex);
    }

    @Override
    public void afterConcurrentHandlingStarted(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        super.afterConcurrentHandlingStarted(request, response, handler);
    }
}
