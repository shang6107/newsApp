package com.cxgc.news_app.core.mapper.user_mapper;

import com.cxgc.news_app.core.model.*;

import java.util.List;

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

    /**
     * 获取用户浏览过的新闻
     * @param user
     * @return
     */
    public List<History> listHistory(User user);

    /**
     * 获取用户收藏新闻
     * @param user
     * @return
     */
    public List<Collections> listCollections(User user);

    /**
     * 获取用户评论过的新闻
     * @param id
     * @return
     */
    public List<Comment> listComment(String id);

    /**
     * 添加评论
     * @param comment
     * @return
     */
    public int addComment(Comment comment);

    /**
     * 添加收藏记录
     * @param collections
     * @return
     */
    public int addCollections(Collections collections);

    /**
     * 添加历史记录
     * @param history
     * @return
     */
    public int addHistory(History history);

    /**
     * 账号密码登陆
     * @param user
     * @return
     */
    public User getUserByPhoneAndPassword(User user);
}
