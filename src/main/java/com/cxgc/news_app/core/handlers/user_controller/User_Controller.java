package com.cxgc.news_app.core.handlers.user_controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 用户操作
 * 流转控制层
 */
@Controller
public class User_Controller {


    @RequestMapping("/user")
    public Object login(String phone){
        System.out.println("phone"+phone);
        return null;
    }
}
