package com.cxgc.news_app.core.handlers.user_handler;

import com.cxgc.news_app.core.model.User;
import com.cxgc.news_app.core.model.ValidateCode;
import com.cxgc.news_app.core.services.user_service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.UUID;

/**
 * 用户操作
 * 流转控制层
 */
@Controller
public class UserController {

    @Autowired
    private UserService user_service;
    /**
     * 用户的登陆
     * @param
     * @return
     */
    @RequestMapping("/login_y")
    @ResponseBody
    public Object login(ValidateCode validateCode){
        System.out.println("phone = " + validateCode.getPhoneNum());
        System.out.println("yzm = " + validateCode.getCode());
        ValidateCode vailda = user_service.loginVerification(validateCode);
        if(vailda!=null && vailda.getUsable()==2){
            User user = user_service.getUserByPhone(validateCode.getPhoneNum());
            return user;

        }
        return "0";
    }

    /**
     * 用户的注册
     * @param
     * @return
     */
    @RequestMapping("/register_y")
    @ResponseBody
    public Object register(ValidateCode validateCode){
        System.out.println("phone_num = " + validateCode.getPhoneNum());

        ValidateCode vailda = user_service.loginVerification(validateCode);
        if(vailda!=null && vailda.getUsable()==2){
            User user=new User();
            user.setPhoneNum(validateCode.getPhoneNum());
            user.setNickName("用户"+validateCode.getPhoneNum());
            user.setId(UUID.randomUUID().toString().replaceAll("-",""));
            Integer result = user_service.addUser(user);
            User newUser = user_service.getUserByPhone(validateCode.getPhoneNum());
            return newUser;
        }else{
            return "0";
        }

    }

    /**
     * 获得用户信息
     * @param user
     * @return
     */
    public Object getUserByPhone(User user){

        return null;
    }
}
