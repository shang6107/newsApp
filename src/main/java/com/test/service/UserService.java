package com.test.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.test.model.User;

public interface UserService {

	/**
	 * 登录查询
	 * @param user
	 * @return
	 */
	boolean selectLogin(User user , HttpSession httpSession);
	
	/**
	 * 查询不包括account的所有账号
	 * @param account
	 * @return
	 */
	List<String> selectNoAccount(User user);
	
	
	/**
	 * 查询账号是否存在
	 * @param account
	 * @return
	 */
	boolean selectByAccount(String account);
}
