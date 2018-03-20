package com.test.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.test.common.Prompt;
import com.test.model.User;
import com.test.service.UserService;




@Controller
public class LoginController {

	@Resource
	private UserService userService;
	/**
	 * 登陆页面
	 * @return
	 */
	@RequestMapping(value="/" , method = RequestMethod.GET)
	public ModelAndView login(){
		return new ModelAndView("login");
	}
	
	/**
	 * 登陆查询
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/login" , method = RequestMethod.POST)
	public String login(User user,HttpSession httpSession){
		//查询数据
		if(userService.selectLogin(user, httpSession))
			return Prompt.success.getName();
		return Prompt.login.getName();
	}
	
	/**
	 * 退出
	 * @return
	 */
	@RequestMapping("/logout")
	public ModelAndView logout(HttpSession httpSession){
		httpSession.removeAttribute("UserAdmin");
		httpSession.invalidate();
		return new ModelAndView("redirect:/");
	}
	
}
