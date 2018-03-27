package com.cxgc.news_app.core.mapper.managerment_system_mapper;

import com.cxgc.news_app.core.model.User;

import java.util.List;

/**
 * @author 何其勇
 * @Date
 * @Version
 * @Description
 */

public interface UserManagementDao {
/**
     * 查询所有的用户
     * @return 用户的集合
     */

    List<User> selectAllUser();

    /**
     * 修改用户信息
     * @param user
     * @return 用户
     */
    int editUserInfo(User user);

    /**
     * 得到用户信息
     * @param phoneNum
     * @return 用户的全部信息
     */
    User getUserById(String phoneNum);




}

