package com.cxgc.news_app.core.handlers.user_handler;

import com.cxgc.news_app.core.model.User;
import com.cxgc.news_app.core.services.user_service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

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
     * @param phone
     * @return
     */
    @RequestMapping("/login_y")
    @ResponseBody
    public Object login(String phone,String yzm){
        System.out.println("phone = " + phone);
        System.out.println("yzm = " + yzm);
        user_service.loginVerification(phone,yzm);
        return null;
    }

    /**
     * 用户的注册
     * @param
     * @return
     */
    @RequestMapping("/register_y")
    @ResponseBody
    public Object register(String phone_num){
        System.out.println("phone_num = " + phone_num);
        User user=new User();
        user.setPhoneNum(phone_num);
        user.setId("abcd");
        System.out.println("user = " + user);
        Integer result = user_service.addUser(user);
        System.out.println("1231231" +result);
        return result;
    }
}
