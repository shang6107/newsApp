package com.test.service;


import com.test.model.Email;
import com.test.model.User;
import com.test.page.EmailPage;

public interface EmailService {
	
	/**
	 * 分页查询
	 * @param emailPage
	 * @return
	 */
	EmailPage selectPage(EmailPage emailPage);
	
	/**
	 * 保存或发送email
	 * @param email
	 * @return
	 */
	boolean insertEmail(Email email);
	
	/**
	 * 修该或发送email
	 * @param email
	 * @return
	 */
	boolean updateEmail(Email email);
	
	/**
	 * 移动到垃圾箱
	 * @param id
	 * @param the_account
	 * @return
	 */
	boolean updateEmailShow(int[] id , String the_account,int show);
	
	/**
	 * 根据ID和所属人删除
	 * @param id
	 * @return
	 */
	boolean deleteEmail(int id,String receive);
	
	/**
	 * 查询邮件
	 * @param id
	 * @param the_account
	 * @return
	 */
	Email selectByIdByTheAccount(Integer id,User user);
	
	/**
	 * 已查看
	 * @param id
	 * @param receive
	 */
	void updateEmailSeeState(int id,String receive);
}
