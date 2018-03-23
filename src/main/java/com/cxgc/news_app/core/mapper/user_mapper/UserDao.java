package com.cxgc.news_app.core.mapper.user_mapper;

import com.cxgc.news_app.core.model.User;

import java.util.List;

/**
 * 蒲静林 on 2018/3/23
 *
 */
public interface UserDao {
    /**
     * 通过用户电话号查找用户（用户管理员）
     *
     * @param phoneNum
     * @return
     */
    public User selectByPhoneNum(String phoneNum);

    /**
     * 通过用户电话号删除用户
     *
     * @param phoneNum
     * @return
     */
    public int deleteUserByPhoneNum(String phoneNum);

    /**
     * 通过用户电话号修改用户信息
     *
     * @param phoneNum
     * @return
     */
    public int updateByPhoneNum(String phoneNum);

    /**
     * 获取所有用户列表
     *
     * @return
     */
    public List<User> selectAllUser();
}
