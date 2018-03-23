package com.cxgc.news_app.core.services.user_service;


import com.cxgc.news_app.core.mapper.user_mapper.UserMapper;
import com.cxgc.news_app.core.model.User;
import com.cxgc.news_app.core.model.ValidateCode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * 用户
 * 业务层
 */
@Service
public class UserService {

    @Autowired
    private UserMapper userMapper;
    /**
     * 通过id获取用户信息
     * @param id
     * @return
     */
    public User getByUser(String id){


        return null;
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
    public Integer addIdentifyingCode(ValidateCode validateCode){
        return userMapper.addIdentifyingCode(validateCode);
    }

    /**
     * 登陆验证
     * @param
     * @param
     * @return
     */
    public ValidateCode loginVerification(ValidateCode validateCode){
        return userMapper.loginVerification(validateCode);
    }

    /**
     * 新增用户
     * @param user
     * @return
     */
    public Integer addUser(User user){
        return userMapper.addUser(user);
    }


}
