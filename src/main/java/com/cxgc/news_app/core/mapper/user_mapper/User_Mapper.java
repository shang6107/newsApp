package com.cxgc.news_app.core.mapper.user_mapper;

import com.cxgc.news_app.core.model.User;

/**
 * 用户数据交互层
 */
public interface User_Mapper {
    /**
     * 通过id获取用户信息
     * @param id
     * @return
     */
    public User getUserById(Integer id);

    /**
     * 通过手机号获取用户信息
     * @param phone
     * @return
     */
    public User getUserByPhone(String phone);

    /**
     * 修改用户信息
     * @param user
     * @return
     */
    public Integer editUserInfo(User user);


    /**
     * 新增用户
     * @param user
     * @return
     */
    public Integer addUser(User user);
}
