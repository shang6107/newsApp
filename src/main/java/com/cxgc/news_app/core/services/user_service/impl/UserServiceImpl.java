package com.cxgc.news_app.core.services.user_service.impl;


import com.cxgc.news_app.core.mapper.user_mapper.UserMapper;
import com.cxgc.news_app.core.model.*;
import com.cxgc.news_app.core.services.user_service.UserService;
import com.cxgc.news_app.utility.user_uitl.RegisterUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.UnsupportedEncodingException;
import java.util.Date;
import java.util.List;
import java.util.UUID;

/**
 * 用户
 * 业务层
 */
@Service
public class UserServiceImpl implements UserService{

    @Autowired
    private UserMapper userMapper;
    @Autowired
    private RegisterUtil registerUtil;
    /**
     * 通过id获取用户信息
     * @param id
     * @return
     */
    public User getUserById(String id){
             return userMapper.getUserById(id);
    }

    /**
     * 通过手机号获取用户信息
     * @param phone
     * @return
     */
    public User getUserByPhone(String phone){
        return userMapper.getUserByPhone(phone);
    }

    /**
     * 保存验证码
     * @param
     * @param
     * @return
     */
    public String addIdentifyingCode(ValidateCode validateCode, String askType, HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException {
        //验证手机号是否已注册
        if(askType.equals("login")){
            if(userMapper.getUserByPhone(validateCode.getPhoneNum())==null){
                return "该手机号没有注册！";
            }
        }
        //发送短信验证码
        String yzm = registerUtil.phoneRegister(validateCode.getPhoneNum(), request, response);
        if(yzm==null){
            return "发送失败";
        }
        //将手机号和验证码存入手机短信验证码表
        validateCode.setId(UUID.randomUUID().toString().replaceAll("-",""));
        validateCode.setCode(yzm);
        Date now =new Date();
        Date afterDate = new Date(now.getTime()+600000);
        validateCode.setExpireTime(afterDate);
        validateCode.setCreateTime(now);
        validateCode.setUsable(2);
        Integer result = userMapper.addIdentifyingCode(validateCode);
        if (result>0){
            return "发送成功";
        }
        return "发送失败!";
    }

    /**
     * 登陆验证
     * @param
     * @param
     * @return
     */
    public User loginVerification(ValidateCode validateCode){
        System.out.println("validateCode = " + validateCode);
        ValidateCode newsValidateCode = userMapper.loginVerification(validateCode);
        System.out.println("newsValidateCode = " + newsValidateCode);
        if(newsValidateCode!=null && newsValidateCode.getUsable()==2){
            User user = userMapper.getUserByPhone(validateCode.getPhoneNum());
            return user;

        }
        return null;
    }

    /**
     * 新增用户
     * @param
     * @return
     */
    public User addUser(ValidateCode validateCode){

        ValidateCode newsValidateCode = userMapper.loginVerification(validateCode);
        if(newsValidateCode!=null && newsValidateCode.getUsable()==2){
            User user = new User();
            user.setId(UUID.randomUUID().toString().replaceAll("-",""));
            user.setPhoneNum(validateCode.getPhoneNum());
            user.setNickName("用户"+validateCode.getPhoneNum());
            user.setCreateTime(new Date());
            user.setLastTime(new Date());
            user.setHeadImg("../imgs/shuijiao.jpg");
            int result = userMapper.addUser(user);
            if(result>0){
                user = userMapper.getUserByPhone(validateCode.getPhoneNum());
                if(user!=null){
                    return user;
                }
              }
          }
        return null;
    }

    /**
     * 修改用户信息
     * @param user
     * @return
     */
    public User editUserInfo(User user){
        int result = userMapper.editUserInfo(user);
        if(result>0){
            return userMapper.getUserById(user.getId());
            }
            return null;
    }

    /**
     * 获取用户浏览记录
     * @param user
     * @return
     */
    public List<History> listHistory(User user){
        return userMapper.listHistory(user);
    }

    /**
     * 获取用户收藏
     * @param user
     * @return
     */
    public List<Collections> listCollections(User user){
        return userMapper.listCollections(user);
    }

    /**
     * 获取用户评论信息
     * @param user
     * @return
     */
    public List<Comment> listComment(User user){
        return userMapper.listComment(user);
    }
}
