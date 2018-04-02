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
import java.io.File;
import java.io.IOException;

/**
 * @author 上官炳强
 * @Date 2018-03-20 / 03:36:41
 * @Version
 * @Description 管理员后台操作Controller
 */
@Controller
@RequestMapping("/management")
public class ManagerLoginHandler {
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




}
