package com.cxgc.news_app.core.services.user_service.impl;


import com.cxgc.news_app.core.mapper.news_mapper.NewsDao;
import com.cxgc.news_app.core.mapper.user_mapper.UserMapper;
import com.cxgc.news_app.core.model.*;
import com.cxgc.news_app.core.model.Collections;
import com.cxgc.news_app.core.services.user_service.UserService;
import com.cxgc.news_app.utility.idutil.UtilY;
import com.cxgc.news_app.utility.user_uitl.RegisterUtil;
import org.apache.commons.codec.binary.Base64;
import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.UnsupportedEncodingException;
import java.util.*;

/**
 * 用户
 * 业务层
 */
@Service
public class UserServiceImpl implements UserService{

    @Autowired
    private UserMapper userMapper;
    @Autowired
    private RegisterUtil registerUtil;
    @Autowired
    private NewsDao newsDao;
    /**
     * 通过id获取用户信息
     * @param id
     * @return
     */
    public User getUserById(String id){
             return userMapper.getUserById(id);
    }

    /**
     * 通过手机号获取用户信息
     * @param phone
     * @return
     */
    public User getUserByPhone(String phone){
        return userMapper.getUserByPhone(phone);
    }

    /**
     * 保存验证码
     * @param
     * @param
     * @return
     */
    public String addIdentifyingCode(ValidateCode validateCode, String askType, HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException {
        //验证手机号是否已注册
        System.out.println("askType = " + askType);
        if(askType.equals("login")){
            if(userMapper.getUserByPhone(validateCode.getPhoneNum())==null){
                return "该手机号没有注册！";
            }
        }
        //发送短信验证码
        String yzm = registerUtil.phoneRegister(validateCode.getPhoneNum(), request, response);
        if(yzm==null){
            return "发送失败";
        }
        //将手机号和验证码存入手机短信验证码表
        validateCode.setId(UUID.randomUUID().toString().replaceAll("-",""));
        validateCode.setCode(yzm);
        Date now =new Date();
        Date afterDate = new Date(now.getTime()+600000);
        validateCode.setExpireTime(afterDate);
        validateCode.setCreateTime(now);
        validateCode.setUsable(2);
        Integer result = userMapper.addIdentifyingCode(validateCode);
        if (result>0){
            return "发送成功";
        }
        return "发送失败!";
    }

    /**
     * 登陆验证
     * @param
     * @param
     * @return
     */
    public User loginVerification(ValidateCode validateCode){
        System.out.println("validateCode = " + validateCode);
        ValidateCode newsValidateCode = userMapper.loginVerification(validateCode);
        System.out.println("newsValidateCode = " + newsValidateCode);
        if(newsValidateCode!=null && newsValidateCode.getUsable()==2){
            User user = userMapper.getUserByPhone(validateCode.getPhoneNum());
            return user;

        }
        return null;
    }

    /**
     * 新增用户
     * @param
     * @return
     */
    public User addUser(ValidateCode validateCode){

        ValidateCode newsValidateCode = userMapper.loginVerification(validateCode);
        if(newsValidateCode!=null && newsValidateCode.getUsable()==2){
            User user = new User();
            user.setId(UUID.randomUUID().toString().replaceAll("-",""));
            user.setPhoneNum(validateCode.getPhoneNum());
            user.setNickName("用户"+validateCode.getPhoneNum());
            user.setCreateTime(new Date());
            user.setLastTime(new Date());
            user.setHeadImg("../imgs/shuijiao.jpg");
            int result = userMapper.addUser(user);
            if(result>0){
                user = userMapper.getUserByPhone(validateCode.getPhoneNum());
                if(user!=null){
                    return user;
                }
              }
          }
        return null;
    }

    /**
     * 修改用户信息
     * @param user
     * @return
     */
    public User editUserInfo(User user){
        int result = userMapper.editUserInfo(user);
        if(result>0){
            return userMapper.getUserById(user.getId());
            }
            return null;
    }

    /**
     * 获取用户浏览过的新闻
     * @param user
     * @return
     */
    public Object listHistory(User user){
        Map<String,Object> map = new HashMap<>();
        List<History> histories = userMapper.listHistory(user);
        if(histories.isEmpty()){
            System.out.println("histories = " + histories);
            return null;
        }
        map.put("histories",histories);
        return map;
    }

    /**
     * 获取用户收藏的新闻
     * @param user
     * @return
     */
    public Object listCollections(User user){
        Map<String,Object> map = new HashMap<>();
        List<Collections> collections = userMapper.listCollections(user);
        if(collections.isEmpty()){
            return null;
        }
        map.put("collections",collections);

        return map;
    }

    /**
     * 获取用户评论过的新闻
     * @param id
     * @return
     */
    public Object listComment(String id){
        Map<String,Object> map =new HashMap<String,Object>();
        List<Comment> comments = userMapper.listComment(id);
        List<News> listnews = new ArrayList<>();
        for (Comment comment : comments) {
            News news = newsDao.getNews(comment.getNewsId());
            news.setId(comment.getNewsId());
            listnews.add(news);
        }
        map.put("comments",listnews);
        return map;
    }

    /**
     * 账号密码登陆
     * @param user
     * @return
     */
    public User getUserByPhoneAndPassword(User user){
        //密码MD5加密
        user.setPassword(UtilY.MD5(user.getPassword()));
        User sucUser = userMapper.getUserByPhoneAndPassword(user);
        if(sucUser!=null){
            return sucUser;
        }
        return null;
    }

    /**
     * 修改密码
     * @param user
     * @param newPassword
     * @return
     */
    public Object editPassword(User user,String newPassword){
        user.setPassword(UtilY.MD5(user.getPassword()));
        if(userMapper.getUserByPhoneAndPassword(user)!=null){
            user.setPassword(UtilY.MD5(newPassword));
            System.out.println("user = " + user);
            userMapper.editUserInfo(user);
            return "修改成功！";
        }
        return null;
    }

    /**
     * 修改头像
     * @param user
     * @param request
     * @return
     */
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
        return userMapper.editUserInfo(user);
    }

    /**
     * Base64解码.
     */
    public static byte[] decodeBase64(String input) {
        return Base64.decodeBase64(input.getBytes());
    }

    /**
     * 删除用户评论表中用户评论记录
     * @param comment
     * @return
     */
    public String deleteCommnetByNewIDAndUserId(Comment comment){
        System.out.println("comment = " + comment);
       if(userMapper.deleteCommnetByNewIDAndUserId(comment)>0){
           return "1";
       }
       return "-1";
    }
}
