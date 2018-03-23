package com.cxgc.news_app.core.mapper.user_mapper;

import com.cxgc.news_app.core.model.User;
import com.cxgc.news_app.core.model.ValidateCode;

/**
 * 用户数据交互层
 */

public interface UserMapper {

    /**
     * 通过id获取用户信息
     * @param id
     * @return
     */
    public User getUserById(String id);

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
    public int editUserInfo(User user);


    /**
     * 新增用户
     * @param user
     * @return
     */
    public int addUser(User user);

    /**
     * 保存验证码
     * @param
     * @param
     * @return
     */
    public int addIdentifyingCode(ValidateCode validateCode);

    /**
     * 登陆验证
     * @param
     * @param
     * @return
     */
    public ValidateCode loginVerification(ValidateCode validateCode);
}
