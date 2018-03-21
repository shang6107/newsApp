package com.cxgc.news_app.core.handlers.managerment_system;

import com.cxgc.news_app.core.model.Manager;
import com.cxgc.news_app.core.services.managerment_service.ManagerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Map;

/**
 * @author 上官炳强
 * @Date 2018-03-20 / 03:36:41
 * @Version
 * @Description
 */
@Controller
public class ManagerLoginHandler {

    @Autowired
    private ManagerService service;

    @RequestMapping("/logon")
    public String login(@ModelAttribute("manager") Manager manager,Map<String,Object> map){
        Manager manager1 = service.ManagerLogin(manager.getMgrNo(), manager.getPassword());
        map.put("mgr",manager1);
        return "index";
    }

}
