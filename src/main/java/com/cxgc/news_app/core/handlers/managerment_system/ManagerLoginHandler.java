package com.cxgc.news_app.core.handlers.managerment_system;

import com.cxgc.news_app.core.model.Manager;
import com.cxgc.news_app.core.services.managerment_service.ManagerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;


import javax.servlet.http.HttpSession;


/**
 * @author 上官炳强
 * @Date 2018-03-20 / 03:36:41
 * @Version
 * @Description
 */
@Controller
public class ManagerLoginHandler {

    private ManagerService service;

    @Autowired
    public void setService(ManagerService service) {
        this.service = service;
    }

    /**
     * 管理员登录
     * @param manager
     * @param map
     * @return
     */
    @RequestMapping(value = "/logon",method = RequestMethod.POST)
    public String login(Manager manager, ModelMap map,HttpSession session){
        Manager managerLogin = service.ManagerLogin(manager.getMgrNo(), manager.getPassword());
        //登录失败
        if(managerLogin == null) {
            map.addAttribute("mgr", "not exits");

            return "login";
        }
        session.setAttribute("manager",managerLogin);
        //登录成功
        map.addAttribute("manager",managerLogin);
        return "redirect:/index.html";
    }

    /**
     * 管理员退出
     * @return
     */
    @RequestMapping(value = "/logout",method = RequestMethod.GET)
    public String logout(HttpSession session){
        session.removeAttribute("manager");
        session.invalidate();
        return "redirect:/login.html?logout";
    }



}
