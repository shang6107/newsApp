package com.cxgc.news_app.core.services.managerment_service;

import com.cxgc.news_app.core.model.User;

import java.util.List;

/**
 * @author 何其勇
 * @Date
 * @Version
 * @Description
 */

public interface UserManagementService {
 /**
  * 查询所有用户
  * @return 用户集合
  */
 List<User> selectAllUser();

 /**
  * 修改用户状态
  * @param user
  * @return
  */
 int editUserInfo(User user);

 /**
  * 获得用户的信息通过ID
  * @param id
  * @return
  */
 User getUserById(String phoneNum);
}