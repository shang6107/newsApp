package com.cxgc.news_app.core.handlers.user_handler;

import com.cxgc.news_app.core.model.ValidateCode;
import com.cxgc.news_app.core.services.user_service.UserService;
import com.cxgc.news_app.core.services.user_service.impl.UserServiceImpl;
import com.cxgc.news_app.utility.user_uitl.RegisterUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.util.Date;
import java.util.UUID;

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
     * @param
     * @param request
     * @param response
     * @return
     * @throws
     */
    @RequestMapping("/phoneRegister")
    @ResponseBody
    public Object phoneRegister(ValidateCode validateCode,String askType, HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException {

        System.out.println("phone = " + validateCode.getPhoneNum());
        //验证手机号是否已注册
        System.out.println("askType = " + askType);
        if(askType.equals("login")){
            if(user_service.getUserByPhone(validateCode.getPhoneNum())==null){
                return "该手机号没有注册！";
            }
        }


        //发送短信验证码
        String yzm = registerUtil.phoneRegister(validateCode.getPhoneNum(), request, response);

        //将手机号和验证码存入手机短信验证码表

        validateCode.setId(UUID.randomUUID().toString().replaceAll("-",""));
        validateCode.setCode(yzm);
        Date now =new Date();
        Date afterDate = new Date(now.getTime()+600000);
        validateCode.setExpireTime(afterDate);
        validateCode.setCreateTime(now);
        validateCode.setUsable(2);
        Integer result = user_service.addIdentifyingCode(validateCode);
        System.out.println("result = " + result);

        return "1";
    }
}

