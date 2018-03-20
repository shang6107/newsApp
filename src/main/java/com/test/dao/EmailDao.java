package com.test.dao;

import java.util.List;


import org.apache.ibatis.annotations.Param;

import com.test.model.Email;
import com.test.page.EmailPage;

public interface EmailDao {

	/**
	 * 分页总数
	 * @param emailPage
	 * @return
	 */
	int count(EmailPage emailPage);
	
	/**
	 * 分页查询
	 * @param emailPage
	 * @return
	 */
	List<Email> selectPage(EmailPage emailPage);
	
	/**
	 * 保存或发送email
	 * @param email
	 * @return
	 */
	int insertEmail(Email email);
	
	/**
	 * 修该或发送email
	 * @param email
	 * @return
	 */
	int updateEmail(Email email);
	
	/**
	 * 已阅读
	 * @param id
	 * @param receive
	 * @return
	 */
	int updateEmailSeeState(int id , String receive);
	
	/**
	 * 移动到或移出垃圾箱
	 * @param id
	 * @param receive
	 * @return
	 */
	int updateEmailShow(@Param("id")int[] id , @Param("receive")String receive,@Param("show")int show);
	
	/**
	 * 根据ID和所属人删除
	 * @param id
	 * @return
	 */
	int deleteEmail(int id,String receive);
	
	/**
	 * 查询邮件
	 * @param id
	 * @param the_account
	 * @return
	 */
	Email selectByIdByTheAccount(int id,String the_account);
}
