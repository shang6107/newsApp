package com.cxgc.news_app.core.handlers.user_handler;

import com.cxgc.news_app.core.services.user_service.UserService;
import com.cxgc.news_app.utility.user_uitl.RegisterUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;

/**
 * 短信接口类.
 */
@Controller
public class PhoneRegister {

    @Autowired
    private UserService user_service;
    @Autowired
    private RegisterUtil registerUtil;

    /**
     * 发送短信验证码
     * @param phone
     * @param request
     * @param response
     * @return
     * @throws UnsupportedEncodingException
     */
    @RequestMapping("/phoneRegister")
    @ResponseBody
    public String phoneRegister(@RequestBody String phone, HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException {
        //验证手机号是否已注册
        if(user_service.getUserByPhone(phone)==null){
            return "该手机号没有注册！";
        }

        //发送短信验证码
        String yzm = registerUtil.phoneRegister(phone, request, response);

        //将手机号和验证码存入手机短信验证码表
        Integer result = user_service.addIdentifyingCode(phone, yzm);
        System.out.println("result = " + result);


        return "1";
    }
}

