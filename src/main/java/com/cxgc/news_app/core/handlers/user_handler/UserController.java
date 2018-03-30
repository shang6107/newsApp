package com.cxgc.news_app.core.handlers.user_handler;

import com.cxgc.news_app.core.model.*;
import com.cxgc.news_app.core.services.user_service.UserService;
import com.cxgc.news_app.utility.idutil.UtilY;
import org.apache.commons.codec.digest.Md5Crypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.datetime.DateFormatter;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 用户操作
 * 流转控制层
 */
@CrossOrigin
@Controller
@RequestMapping("/app")
public class UserController {


    @InitBinder
    public  void  intDate(WebDataBinder dataBinder){
        dataBinder.addCustomFormatter(new DateFormatter("yyyy-MM-dd"));
    }

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
    @RequestMapping("register_y")
    @ResponseBody
    public Object register(ValidateCode validateCode){return user_service.addUser(validateCode);}

    /**
     * 用户资料编辑
     * @param user
     * @return
     */
    @RequestMapping("/editInfo")
    @ResponseBody
    public Object editInfo(User user){
        System.out.println("user = " + user);
        System.out.println("user_service.editUserInfo(user) = " + user_service.editUserInfo(user));
        return user_service.editUserInfo(user);}

    /**
     * 查看浏览记录
     * @param user
     * @return
     */
    @RequestMapping("/listHis")
    @ResponseBody
    public Object listHis(User user){
        Map<String,Object> map = new HashMap<>();
        System.out.println("user = " + user);
        List<History> histories = user_service.listHistory(user);
        if(histories.isEmpty()){
            System.out.println("histories = " + histories);
            return "0";
        }
        map.put("histories",histories);
        return map;
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

    /**
     * 账号密码登陆
     * @param user
     * @return
     */
    @RequestMapping("/apsLogin")
    @ResponseBody
    public Object apsLogin(User user){
        user.setPassword(UtilY.MD5(user.getPassword()));
        System.out.println("user = " + user);
        return user_service.getUserByPhoneAndPassword(user);
    }

    /**
     * 修改密码
     * @param user
     * @param newPassword
     * @return
     */
    @RequestMapping("/editPassword")
    @ResponseBody
    public Object editPassword(User user,String newPassword){
        user.setPassword(UtilY.MD5(user.getPassword()));
        if(user_service.getUserByPhoneAndPassword(user)!=null){
            user.setPassword(UtilY.MD5(newPassword));
            System.out.println("user = " + user);
            user_service.editUserInfo(user);
            return "修改成功！";
        }
        return null;
    }
}
