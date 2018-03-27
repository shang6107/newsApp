package com.cxgc.news_app.core.handlers.user_handler;

import com.cxgc.news_app.core.model.*;
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
import java.util.Date;
import java.util.List;
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
    @RequestMapping("/login-y")
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
            user.setCreateTime(new Date());
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



    //上传文件会自动绑定到MultipartFile中
    @RequestMapping(value="/upload",method= RequestMethod.POST)
    public String upload(HttpServletRequest request,
                         @RequestParam("description") String description,
                         @RequestParam("file") MultipartFile file) throws Exception {

        System.out.println(description);
        //如果文件不为空，写入上传路径
        if(!file.isEmpty()) {
            //上传文件路径
            String path = request.getServletContext().getRealPath("/images/");
            //上传文件名
            String filename = file.getOriginalFilename();
            File filepath = new File(path,filename);
            //判断路径是否存在，如果不存在就创建一个
            if (!filepath.getParentFile().exists()) {
                filepath.getParentFile().mkdirs();
            }
            //将上传文件保存到一个目标文件当中
            file.transferTo(new File(path + File.separator + filename));
            return "success";
        } else {
            return "error";
        }

    }

    /**
     * 用户资料编辑
     * @param user
     * @return
     */
    @RequestMapping("/editInfo")
    @ResponseBody
    public Object editInfo(User user){
        user_service.editUserInfo(user);
        User newUser = user_service.getUserByPhone(user.getPhoneNum());
        return newUser;
    }

    /**
     * 查看浏览记录
     * @param user
     * @return
     */
    @RequestMapping("/listHis")
    @ResponseBody
    public Object listHis(User user){
        List<History> histories = user_service.listHistory(user);
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
        List<Collections> collections = user_service.listCollections(user);
        return collections;
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
