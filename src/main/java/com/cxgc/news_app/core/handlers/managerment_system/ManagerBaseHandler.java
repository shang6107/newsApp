package com.cxgc.news_app.core.handlers.managerment_system;

import com.cxgc.news_app.core.model.Manager;
import com.cxgc.news_app.core.services.managerment_service.UserManagementService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.ws.rs.Path;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

/**
 * @author 上官炳强
 * @Date 2018-03-20 / 03:36:41
 * @Version
 * @Description 管理员后台操作Controller
 */
@Controller
@RequestMapping("/management")
public class ManagerBaseHandler {
    @Autowired
    private UserManagementService ums;

    /**
     * 管理员登录
     * @return
     */
    @RequestMapping(value = "/login")
    public String login(){
        return "login";
    }

    @RequestMapping("/news_index")
    public String newsPage(ModelMap map){
        map.put("mgr",getPrincipal());
        return "news_index";
    }

    /**
     * 用户管理员主页。登录成功根据重定向策略自动跳转到该 View
     * @param map
     * @return
     */
    @RequestMapping("/user_index")
    public String userPage(ModelMap map){
        map.put("mgr",getPrincipal());
        map.put("countMen",ums.countMen());
        map.put("test",ums.test());
        map.put("countAll",ums.countAll());
        map.put("countFreeze",ums.countFreeze());
        map.put("countFailure",ums.countFailure());
        map.put("reports",ums.report());
        map.put("typename",ums.typeName());
        map.put("abnormals",ums.abnormal());
        map.put("report",ums.getAllReport());
        return "user_index";
    }

    /**
     * 新闻管理员主页。登录成功根据重定向策略自动跳转到该 View
     * @return
     */
    private String getPrincipal(){
        String userName = null;
        Object principal = SecurityContextHolder.getContext().getAuthentication();
        if (principal instanceof UserDetails) {
            userName = ((UserDetails)principal).getUsername();
        } else {
            userName = principal.toString();
        }
        return userName;
    }

    /**
     * 管理员安全退出系统(注销)的处理方法
     * @param request
     * @param response
     * @return
     */
    @RequestMapping(value="/logout", method = RequestMethod.GET)
    public String logoutPage (HttpServletRequest request, HttpServletResponse response) {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        if (auth != null){
            new SecurityContextLogoutHandler().logout(request, response, auth);
        }
        return "redirect:/management/login?logout";
    }

    /**
     * 管理员上传头像图片资料的处理方法
     * @param file
     * @param manager
     * @param request
     * @return
     * @throws IOException
     */
    @RequestMapping("/commit-form-data")
    public String test(MultipartFile file, Manager manager,HttpServletRequest request) throws IOException {
        String realPath = request.getServletContext().getRealPath("/static/img/user/head");
        File headPath = new File(realPath);
        if(!headPath.exists()){
            headPath.mkdirs();
        }
        String fileName = System.currentTimeMillis()
                + "-" + manager.getMgrNo()
                + "-" + file.getOriginalFilename();
        headPath = new File(headPath,fileName);
        file.transferTo(headPath);
        return "test";
    }


    @RequestMapping("/root/manager-freeze/{mgrNo}")
    @ResponseBody
    public Object managerFreeze(@PathVariable("mgrNo") String mgrNo){
        //TODO:修改管理员账户状态
        Map<String,Object> map = new HashMap<>(1);
        map.put("result","ok");
        return map;
    }

    @RequestMapping("/rootadsads21321")
    @ResponseBody
    public Object managerFreeze1(String mgrNo){
        //TODO:修改管理员账户状态
        Map<String,Object> map = new HashMap<>(1);
        map.put("result","ok");
        return map;
    }


}
