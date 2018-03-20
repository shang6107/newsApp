package com.test.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.test.dao.EmailDao;
import com.test.model.Email;
import com.test.model.User;
import com.test.page.EmailPage;
import com.test.service.EmailService;

@Service
public class EmailServiceImpl implements EmailService{

	@Resource
	private EmailDao emailDao;
	
	@Override
	public EmailPage selectPage(EmailPage emailPage) {
		//查询总数
		int count = emailDao.count(emailPage);
		emailPage.setCount(count);
		//分页查询
		List list = emailDao.selectPage(emailPage);
		emailPage.setList(list);
		return emailPage;
	}

	@Override
	public boolean insertEmail(Email email) {
		//保存或发送
		int code = emailDao.insertEmail(email);
		if(code == 0)
			return false;
		return true;
	}

	@Override
	public boolean updateEmail(Email email) {
		//修改或发送
		int code = emailDao.updateEmail(email);
		if(code == 0)
			return false;
		return true;
	}

	@Override
	public boolean updateEmailShow(int[] ids, String receive,int show) {
		
		//修改显示状态
		int code = emailDao.updateEmailShow(ids,receive,show);
		if(code == 0)
			return false;
		return true;
	}

	@Override
	public boolean deleteEmail(int id, String receive) {
		//删除
		int code = emailDao.deleteEmail(id,receive);
		if(code == 0)
			return false;
		return true;
	}

	@Override
	public Email selectByIdByTheAccount(Integer id, User user) {
		if(id == null || id == 0)
			return null;
		 if(user == null)
			 return null;
		return emailDao.selectByIdByTheAccount(id,user.getAccount());
	}

	@Override
	public void updateEmailSeeState(int id, String receive) {
		emailDao.updateEmailSeeState(id, receive);
	}

}
