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

    /**
     * 账号密码登陆
     * @param user
     * @return
     */
    public User getUserByPhoneAndPassword(User user);
}
