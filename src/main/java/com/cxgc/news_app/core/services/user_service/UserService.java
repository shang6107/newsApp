package com.cxgc.news_app.core.services.user_service;

import com.cxgc.news_app.core.model.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.UnsupportedEncodingException;
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
    public String  addIdentifyingCode(ValidateCode validateCode, String askType, HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException;
    /**
     * 登陆验证
     * @param
     * @param
     * @return
     */
    public User loginVerification(ValidateCode validateCode);
    /**
     * 新增用户
     * @param
     * @return
     */
    public User addUser(ValidateCode validateCode);

    /**
     * 修改用户信息
     * @param user
     * @return
     */
    public User editUserInfo(User user);

    /**
     * 获取用户浏览过的新闻
     * @param user
     * @return
     */
    public Object listHistory(User user);

    /**
     * 获取用户收藏的新闻
     * @param user
     * @return
     */
    public Object listCollections(User user);

    /**
     * 获取用户评论过的新闻
     * @param id
     * @return
     */
    public Object listComment(String id);

    /**
     * 账号密码登陆
     * @param user
     * @return
     */
    public User getUserByPhoneAndPassword(User user);

    /**
     * 修改密码
     * @param user
     * @param newPassword
     * @return
     */
    public Object editPassword(User user,String newPassword);

    /**
     * 修改头像
     * @param user
     * @param request
     * @return
     */
    public Object imgUpload(User user, HttpServletRequest request);

    /**
     * 删除用户评论表中用户评论记录
     * @param comment
     * @return
     */
    public String deleteCommnetByNewIDAndUserId(Comment comment);
}
