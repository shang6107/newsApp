package com.cxgc.news_app.core.handlers.managerment_system;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

/**
 * @author 上官炳强
 * @Date 2018-03-20 / 03:36:41
 * @Version
 * @Description
 */
@Controller
@RequestMapping("/management-system")
public class ManagerLoginHandler {

    @RequestMapping(value = "/login")
    public String login(ModelMap map){
        map.put("user",getPrincipal());
        return "login";
    }

    private String getPrincipal(){
        String userName = null;
        SecurityContext context = SecurityContextHolder.getContext();
        Authentication authentication = context.getAuthentication();
        Object principal = authentication.getPrincipal();
        if (principal instanceof UserDetails) {
            userName = ((UserDetails)principal).getUsername();
        } else {
            userName = principal.toString();
        }
        return userName;
    }



}
