package com.staypc.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class InterCeptor extends HandlerInterceptorAdapter{
    public InterCeptor() {
        super();
    }

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler){
        try {
            if(request.getSession().getAttribute("userId") == null ){
                response.sendRedirect("/");
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
