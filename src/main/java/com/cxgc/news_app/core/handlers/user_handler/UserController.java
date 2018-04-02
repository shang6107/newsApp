package com.cxgc.news_app.core.handlers.user_handler;

import com.cxgc.news_app.core.model.*;
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



    @ResponseBody
    @RequestMapping( value = "/img_upload",method = RequestMethod.POST)
    public Object imgUpload(User user, HttpServletRequest request){

        String imgBase64Data = user.getHeadImg();
        try {

            if(imgBase64Data == null || "".equals(imgBase64Data)){
               return "上传失败，上传图片数据为空！";
            }
            String projectPath = request.getSession().getServletContext().getRealPath("/");
            String context = request.getContextPath();
            String imgFilePath ="/userfiles/images/";
            File uploadPathFile = new File(projectPath+imgFilePath);

            //创建父类文件
            if(!uploadPathFile.exists() && !uploadPathFile.isDirectory()){
                uploadPathFile.mkdirs();
            }
            File imgeFile = new File(projectPath+imgFilePath,new Date().getTime()+".jpg");
            if(!imgeFile.exists()){
                imgeFile.createNewFile();
            }
            System.out.println("imgeFile = " + imgeFile);
            //对base64进行解码
            byte[] result = decodeBase64(imgBase64Data);
            //使用Apache提供的工具类将图片写到指定路径下
            FileUtils.writeByteArrayToFile(imgeFile,result);

            //entity.setData(imgFilePath+imgeFile.getName());
            System.out.println("result = " + result);
            System.out.println(imgFilePath+imgeFile.getName());
            String headImg =imgFilePath+imgeFile.getName();
            user.setHeadImg(headImg);
        }catch (Exception e){
            e.printStackTrace();
            //entity.setData("上传失败，系统异常");
        }
        System.out.println("user = " + user);
         return user_service.editUserInfo(user);
    }


    /**
     * Base64解码.
     */
    public static byte[] decodeBase64(String input) {
        return Base64.decodeBase64(input.getBytes());
    }
}
