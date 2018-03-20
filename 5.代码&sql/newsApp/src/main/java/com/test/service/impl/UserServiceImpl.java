package com.test.service.impl;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import com.test.dao.UserDao;
import com.test.model.User;
import com.test.service.UserService;

@Service
public class UserServiceImpl implements UserService{

	@Resource
	private UserDao userDao;
	
	@Override
	public boolean selectLogin(User user ,  HttpSession httpSession) {
		//查询数据
		User selectUser = userDao.selectLogin(user);
		//如果没有数据，返回false 如果有返回true并记录到session
		if(selectUser == null)
			return false;
		httpSession.setAttribute("UserAdmin", selectUser);
		return true;
	}

	@Override
	public List<String> selectNoAccount(User user) {
		return userDao.selectNoAccount(user.getAccount());
	}

	@Override
	public boolean selectByAccount(String account) {
		int count = userDao.selectByAccount(account);
		if(count==0)
			return false;
		return true;
	}

	
}
