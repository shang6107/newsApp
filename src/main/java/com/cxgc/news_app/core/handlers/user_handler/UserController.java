package com.cxgc.news_app.core.handlers.user_handler;

import com.cxgc.news_app.core.model.*;
import com.cxgc.news_app.core.model.Collections;
import com.cxgc.news_app.core.services.user_service.UserService;
import com.cxgc.news_app.core.services.user_service.impl.UserServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.util.*;

/**
 * 用户操作
 * 流转控制层
 */
@Controller
@RequestMapping("/app")
public class UserController {

    @Autowired
    private UserService user_service;
    /**
     * 用户的登陆
     * @param
     * @return
     */
    @RequestMapping(value = "/login_y")
    @ResponseBody
    public Object login(ValidateCode validateCode){return  user_service.loginVerification(validateCode);}

    /**
     * 用户的注册
     * @param
     * @return
     */
    @RequestMapping("/register_y")
    @ResponseBody
    public Object register(ValidateCode validateCode){return user_service.addUser(validateCode);}

    /**
     * 用户资料编辑
     * @param user
     * @return
     */
    @RequestMapping("/editInfo")
    @ResponseBody
    public Object editInfo(User user){return user_service.editUserInfo(user);}

    /**
     * 查看浏览记录
     * @param user
     * @return
     */
    @RequestMapping("/listHis")
    @ResponseBody
    public Object listHis(User user){
        System.out.println("user = " + user);
        List<History> histories = user_service.listHistory(user);
        if(histories.isEmpty()){
            System.out.println("histories = " + histories);
            return "0";
        }
        return histories;
    }

    /**
     * 获取用户收藏记录
     * @param user
     * @return
     */
    @RequestMapping("/listCollections")
    @ResponseBody
    public Object listCollections(User user){
        Map<String,Object> map = new HashMap<>();
        List<Collections> collections = user_service.listCollections(user);
        System.out.println("collections = " + collections);
        map.put("collections",collections);
        return map;
    }

    /**
     * 获取用户评论信息
     * @param user
     * @return
     */
    @RequestMapping("/listComment")
    @ResponseBody
    public Object listComment(User user){
        List<Comment> comments = user_service.listComment(user);
        return comments;
    }

    /*添加浏览记录*/
    @RequestMapping("/addHistory")
    @ResponseBody
    public Object addHistory(History history){

        return null;
    }
    /*添加收藏记录*/
    @RequestMapping("/addCollections")
    @ResponseBody
    public Object addCollections(Collections collections){

        return null;
    }
    /*添加评论记录*/
    @RequestMapping("/addComment")
    @ResponseBody
    public Object addComment(Comment comment){

        return null;
    }
}
