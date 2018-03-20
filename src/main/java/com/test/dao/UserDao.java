package com.test.dao;

import java.util.List;

import com.test.model.User;

public interface UserDao {

	/**
	 * 登录查询
	 * @param user
	 * @return
	 */
	User selectLogin(User user);
	
	/**
	 * 查询不包括account的所有账号
	 * @param account
	 * @return
	 */
	List<String> selectNoAccount(String account);
	
	/**
	 * 查询账号是否存在
	 * @param account
	 * @return
	 */
	int selectByAccount(String account);
}
