package com.cxgc.news_app.core.handlers.user_handler;

import com.cxgc.news_app.core.model.ValidateCode;
import com.cxgc.news_app.core.services.user_service.UserService;
import com.cxgc.news_app.utility.user_uitl.RegisterUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
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
@CrossOrigin
@Controller
public class PhoneRegister {

    @Autowired
    private UserService user_service;
    /**
     * 发送短信验证码
     * @param
     * @param request
     * @param response
     * @return
     * @throws
     */
    @RequestMapping(value = "/phoneRegister",produces = "Content-Type" + MediaType.TEXT_PLAIN_VALUE + ";charset=utf-8")
    @ResponseBody
    public Object phoneRegister(ValidateCode validateCode,String askType, HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException {
            return user_service.addIdentifyingCode(validateCode,askType,request,response);
 }
}

