package com.test.interceptors;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.test.model.User;

public class LoginIntercrptors implements HandlerInterceptor{

	/**
	 * 在进入 方法前执行
	 */
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object object) throws Exception {
		User user = (User) request.getSession().getAttribute("UserAdmin");
		if(user == null){
			response.sendRedirect(request.getContextPath()+"/");
			return false;
		}
			
		return true;
	}
	
	/**
	 * 该方法将在Controller执行之后，返回视图之前执行
	 */
	@Override
	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, ModelAndView arg3)
			throws Exception {
		
	}
	
	/**
	 * 视图执行后
	 */
	@Override
	public void afterCompletion(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {
		
	}





}
