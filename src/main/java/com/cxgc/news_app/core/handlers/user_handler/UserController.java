package com.cxgc.news_app.core.handlers.user_handler;

import com.cxgc.news_app.core.model.*;
import com.cxgc.news_app.core.services.news_service.NewsService;
import com.cxgc.news_app.core.services.user_service.UserService;
import com.cxgc.news_app.utility.idutil.UtilY;
import org.apache.commons.codec.binary.Base64;
import org.apache.commons.codec.digest.Md5Crypt;
import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.datetime.DateFormatter;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.util.Date;
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
    @Autowired
    private NewsService newsService;
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
    public Object editInfo(User user){return user_service.editUserInfo(user);}

    /**
     * 查看用户浏览过的所有新闻
     * @param user
     * @return
     */
    @RequestMapping("/listHis")
    @ResponseBody
    public Object listHis(User user){return user_service.listHistory(user);}

    /**
     * 获取用户收藏的所有新闻
     * @param user
     * @return
     */
    @RequestMapping("/listCollections")
    @ResponseBody
    public Object listCollections(User user){return user_service.listCollections(user);}

    /**
     * 获取用户评论过的所有新闻
     * @param id
     * @return
     */
    @RequestMapping("/listComment")
    @ResponseBody
    public Object listComment(String id){return user_service.listComment(id);}

     /**
     * 账号密码登陆
     * @param user
     * @return
     */
    @RequestMapping("/apsLogin")
    @ResponseBody
    public Object apsLogin(User user){ return user_service.getUserByPhoneAndPassword(user);}

    /**
     * 修改密码
     * @param user
     * @param newPassword
     * @return
     */
    @RequestMapping("/editPassword")
    @ResponseBody
    public Object editPassword(User user,String newPassword){return user_service.editPassword(user,newPassword); }


    /**
     * 修改头像
     * @param user
     * @param request
     * @return
     */
    @ResponseBody
    @RequestMapping( value = "/img_upload",method = RequestMethod.POST)
    public Object imgUpload(User user, HttpServletRequest request){return user_service.imgUpload(user,request);}

    /**
     * 删除用户评论表中用户评论记录
     * @param comment
     * @return
     */
    @ResponseBody
    @RequestMapping( value = "/deleteCommnetByNewIDAndUserId",method = RequestMethod.POST)
    public String deleteCommnetByNewIDAndUserId(Comment comment){
       return user_service.deleteCommnetByNewIDAndUserId(comment);
    }

    @RequestMapping("/listCommnt")
    @ResponseBody
    public Object listCommnt(Comment comment){
        System.out.println("-------");
        Map<String,Object> map =new HashMap<>();
        List<Comment> commentByNewIdAndUserId = newsService.getCommentByNewIdAndUserId(comment);
       if (commentByNewIdAndUserId ==null){
           return "-1";
       }
        for (Comment comment1 : commentByNewIdAndUserId) {
            System.out.println("comment1 = " + comment1);
        }

        map.put("comm",commentByNewIdAndUserId);
        return map;
    }

}
