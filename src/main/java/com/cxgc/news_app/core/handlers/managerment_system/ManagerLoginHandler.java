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
 * @Description
 */
@Controller
@RequestMapping("/management")
public class ManagerLoginHandler {
    @Autowired
    private UserManagementService ums;
    @RequestMapping(value = "/login")
    public String login(){
        return "login";
    }

    @RequestMapping("/news_index")
    public String newsPage(ModelMap map){
        map.put("mgr",getPrincipal());
        return "news_index";
    }

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


    @RequestMapping(value="/logout", method = RequestMethod.GET)
    public String logoutPage (HttpServletRequest request, HttpServletResponse response) {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        if (auth != null){
            new SecurityContextLogoutHandler().logout(request, response, auth);
        }
        return "redirect:/management/login?logout";
    }

    @RequestMapping("/commit-form-data")
    public String test(MultipartFile file, Manager manager,HttpServletRequest request) throws IOException {
        String path = request.getContextPath() + "/static/img/" + file.getName();
        if(manager != null)
        manager.setHeadImg(path);
        if(file != null)
        file.transferTo(new File(path));
        return "test";
    }



}
