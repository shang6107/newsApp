package com.cxgc.news_app.core.services.user_service;

import com.cxgc.news_app.core.model.*;

import java.util.List;

public interface UserService {
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
     * 保存验证码
     * @param
     * @param
     * @return
     */
    public Integer addIdentifyingCode(ValidateCode validateCode);
    /**
     * 登陆验证
     * @param
     * @param
     * @return
     */
    public ValidateCode loginVerification(ValidateCode validateCode);
    /**
     * 新增用户
     * @param user
     * @return
     */
    public Integer addUser(User user);

    /**
     * 修改用户信息
     * @param user
     * @return
     */
    public int editUserInfo(User user);

    /**
     * 获取用户浏览记录
     * @param user
     * @return
     */
    public List<History> listHistory(User user);

    /**
     * 获取用户收藏
     * @param user
     * @return
     */
    public List<Collections> listCollections(User user);

    /**
     * 获取用户评论信息
     * @param user
     * @return
     */
    public List<Comment> listComment(User user);
}
